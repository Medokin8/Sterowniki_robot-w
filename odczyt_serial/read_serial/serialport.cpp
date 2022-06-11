#include "serialport.h"
#include "ui_serialport.h"
#include <QSerialPortInfo>
#include <sstream>
#include <QDebug>
#include <iostream>
#include <cstring>
#include <string>
#include <cassert>
#include <iomanip>
#include <bitset>
#include <math.h>
#include <stdio.h>
#include <string.h>

#define CRC_INIT       0xffff
#define CRC_POLYNOMIAL 0x1021
using namespace std;

SerialPort::SerialPort(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::SerialPort)
{
    ui->setupUi(this);
    this->device = new QSerialPort(this);
    ui->dist->display("--------");
    ui->acc->display("--------");
    ui->gyro->display("--------");
    serialBuffer = "";
    parsed_data_dist = 0;
    parsed_data_acc = 0;
    parsed_data_gyro = 0;
}

SerialPort::~SerialPort()
{
    delete ui;
}

void SerialPort::log(QString msg)
{
    ui->textEditLog->append(msg);
}
void SerialPort::on_pushButtonSearch_clicked()
{
    QList<QSerialPortInfo> devices;
    this->log("Searching...");
    ui->comboBoxDevices->clear();
    devices = QSerialPortInfo::availablePorts();
    for(int i = 0; i < devices.count(); i++) {
      this->log("Found: " + devices.at(i).portName() + "\t"+ devices.at(i).description());
      ui->comboBoxDevices->addItem(devices.at(i).portName() + "\t" + devices.at(i).description());
    }
}

void SerialPort::on_pushButtonConnect_clicked()
{
    if(ui->comboBoxDevices->count() == 0) {
      this->log("No device found");
      return;
    }

    QString portName = ui->comboBoxDevices->currentText().split("\t").first();
    this->device->setPortName(portName);
    qDebug() << portName;

    if(!device->isOpen()) {
    if(device->open(QSerialPort::ReadWrite)) {
      this->device->setBaudRate(QSerialPort::Baud115200);
      this->device->setDataBits(QSerialPort::Data8);
      this->device->setParity(QSerialPort::NoParity);
      this->device->setStopBits(QSerialPort::OneStop);
      this->device->setFlowControl(QSerialPort::NoFlowControl);

      this->log("Serial port opened");

      connect(this->device, SIGNAL(readyRead()), this, SLOT(readFromPort()));
    } else {
      this->log("Couldn't open the serial port");
    }}
    else {
        this->log("Port already opened");
        return;
    }
}

unsigned short int ComputeCRC16_CCITT_FALSE(const char* pData, int Length)
{
    short int i;
    unsigned short int wCrc = CRC_INIT;

    while (Length--) {
        wCrc ^= *(unsigned const char *)pData++ << 8;
        for (i=0; i < 8; i++)
            wCrc = wCrc & 0x8000 ? (wCrc << 1) ^ CRC_POLYNOMIAL : wCrc << 1;
    }
    return wCrc;
}



int ParseDataFrame( const char *pDataFrame, sensorData &sensor)
{

  std::istringstream IStrm(pDataFrame);
  char  FHeader;
  unsigned int CRC16;

  IStrm >> FHeader >> sensor.Get1 >> sensor.Get2 >> sensor.Get3 >> hex >> CRC16;
  if(!IStrm.fail())
  {
      switch(FHeader){
       case 'Z':
          sensor.Sign = FHeader;
          sensor.AccX = sensor.Get1;
          sensor.AccY = sensor.Get2;
          sensor.GyroZ = sensor.Get3;
          break;
       case 'X':
          sensor.Sign = FHeader;
          sensor.Dist1 = sensor.Get1;
          sensor.Dist2 = sensor.Get2;
          sensor.Dist3 = sensor.Get3;
          break;
       default:
          break;
       }
    return static_cast<unsigned short int>(CRC16) == ComputeCRC16_CCITT_FALSE(pDataFrame,strlen(pDataFrame)-4);
  }
  else
      return false;
}


inline
bool ParseDataFrame( const std::string &rDataFrame, sensorData &sensor)
{

  return ParseDataFrame(rDataFrame.c_str(),sensor);
}

void SerialPort::on_pushButtonDisconnect_clicked()
{
    if(this->device->isOpen()) {
      this->device->close();
      this->log("Port closed");
    } else {
      this->log("Port not opened");
      return;
    }
}




void SerialPort::readFromPort()
{
  //  clock_t time =clock();
   while(this->device->canReadLine())
   {
      process_line(device->readLine());
   };
}



void SerialPort::process_line(QString line)
{
    int flag=0;
    QString terminator = "\r";
    int pos = line.lastIndexOf(terminator);
    sensorData sensor;
    if( ParseDataFrame(line.left(pos).toStdString(), sensor) )
    {

        emit parsedMeasurementReady(sensor);
        this->log(line.left(pos));
        flag=1;

    }
        else
    {
        this->log(line.left(pos) + "  !!!");
        qDebug() << "BIADA";
        flag=-1;
    }

    if(flag==1)
    {
        if(sensor.Sign=='X')
        {
        dist_value = (sensor.Dist1+sensor.Dist2+sensor.Dist3)/4;
        //dist_value = (int)(dist_value * 1000 + .5);
        //dist_value = (float)dist_value / 1000;

        //acc_value = sqrt(pow(sensor.AccX, 2) + pow(sensor.AccY, 2));
        //acc_value = (int)(acc_value * 1000 + .5);
        //acc_value = (float)acc_value / 1000;


        //gyro_value = sensor.GyroZ;
        //gyro_value = (int)(gyro_value * 1000 + .5);
        //gyro_value = (float)gyro_value / 1000;
       // qDebug() << "dist_value: " << dist_value << "\n";
       // qDebug() << "gyro_value: " << gyro_value << "\n";
       // qDebug() << "acc_value: " << acc_value << "\n";

        parsed_data_dist= dist_value;
        parsed_data_acc = 0;//acc_value;
        parsed_data_gyro = 0;//gyro_value;
        qDebug() << "------------------------------\n";
        qDebug() << "dist_value: " << parsed_data_dist << "\n";
        qDebug() << "gyro_value: " << parsed_data_gyro << "\n";
        qDebug() << "acc_value: " << parsed_data_acc << "\n";
        //SerialPort::updateLCD(parsed_data_dist, parsed_data_acc, parsed_data_gyro);
        ui->dist->display(parsed_data_dist);
        }
        else if(sensor.Sign=='Z')
        {
            //dist_value = sensor.Dist1;
            //dist_value = (int)(dist_value * 1000 + .5);
            //dist_value = (float)dist_value / 1000;

            acc_value = sqrt(pow(sensor.AccX, 2) + pow(sensor.AccY, 2));
            acc_value = (int)(acc_value * 1000 + .5);
            acc_value = (float)acc_value / 1000;


            gyro_value = sensor.GyroZ;
            gyro_value = (int)(gyro_value * 1000 + .5);
            gyro_value = (float)gyro_value / 1000;
           // qDebug() << "dist_value: " << dist_value << "\n";
           // qDebug() << "gyro_value: " << gyro_value << "\n";
           // qDebug() << "acc_value: " << acc_value << "\n";

            parsed_data_dist= 0;//dist_value;
            parsed_data_acc = acc_value;
            parsed_data_gyro = gyro_value;
            qDebug() << "------------------------------\n";
            qDebug() << "dist_value: " << parsed_data_dist << "\n";
            qDebug() << "gyro_value: " << parsed_data_gyro << "\n";
            qDebug() << "acc_value: " << parsed_data_acc << "\n";
            //SerialPort::updateLCD(parsed_data_dist, parsed_data_acc, parsed_data_gyro);
            ui->acc->display(parsed_data_acc);
            ui->gyro->display(parsed_data_gyro);
        }
    }
}




void SerialPort::updateLCD(double sensor_reading1, double sensor_reading2, double sensor_reading3)
{
    //  update the value displayed on the lcdNumber
    ui->dist->display(sensor_reading1);
    ui->acc->display(sensor_reading2);
    ui->gyro->display(sensor_reading3);
}
