#include "serial.h"
#include "ui_serial.h"
#include <QSerialPort>
#include <QSerialPortInfo>
#include <string>
#include <QDebug>
#include <QMessageBox>


serial::serial(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::serial)
{
    ui->setupUi(this);
    ui->lcdNumber->display("------");

    device = new QSerialPort(this);

    serialBuffer = "";
    parsed_data = "";
    temperature_value = 0.0;


        // Testing what is connected and its settings
       qDebug() << "Number of ports: " << QSerialPortInfo::availablePorts().length() << "\n";
       foreach(const QSerialPortInfo &serialPortInfo, QSerialPortInfo::availablePorts()){
           qDebug() << "Description: " << serialPortInfo.description() << "\n";
           qDebug() << "Has vendor id?: " << serialPortInfo.hasVendorIdentifier() << "\n";
           qDebug() << "Vendor ID: " << serialPortInfo.vendorIdentifier() << "\n";
           qDebug() << "Has product id?: " << serialPortInfo.hasProductIdentifier() << "\n";
           qDebug() << "Product ID: " << serialPortInfo.productIdentifier() << "\n";
       }

       /*
        *   Identify the port the device  is on.
        */
       bool device_is_available = false;
       QString device_port_name;
       //
       //  For each available serial port
       foreach(const QSerialPortInfo &serialPortInfo, QSerialPortInfo::availablePorts()){
           //  check if the serialport has both a product identifier and a vendor identifier
           if(serialPortInfo.hasProductIdentifier() && serialPortInfo.hasVendorIdentifier()){
               //  check if the product ID and the vendor ID match those of the device
               if((serialPortInfo.productIdentifier() == device_product_id)
                       && (serialPortInfo.vendorIdentifier() == device_vendor_id)){
                   device_is_available = true; //    device is available on this port
                   device_port_name = serialPortInfo.portName();
               }
           }
       }

       /*
        *  Open and configure the device port if available
        */
       if(device_is_available)
       {
           qDebug() << "Found the device port..." << device_port_name <<"\n";
           device->setPortName(device_port_name);
           qDebug() << "1" ;
           if(device->open(QSerialPort::ReadWrite))
           {
           //device->open(QSerialPort::ReadOnly);
           //qDebug() << "2";
           device->setBaudRate(QSerialPort::Baud115200);
           qDebug() << "3";
           device->setDataBits(QSerialPort::Data8);
           qDebug() << "4";
           device->setFlowControl(QSerialPort::NoFlowControl);
           qDebug() << "5";
           device->setParity(QSerialPort::NoParity);
           qDebug() << "6";
           device->setStopBits(QSerialPort::OneStop);
           qDebug() << "7";
           QObject::connect(device, SIGNAL(readyRead()), this, SLOT(readSerial()));
           qDebug() << "8";
           }
       }
       else
       {
           qDebug() << "Couldn't find the correct port for the device.\n";
           QMessageBox::information(this, "Serial Port Error", "Couldn't open serial port to device.");
       }
}

void serial::readSerial()
{
   qDebug() << "serial";
}


serial::~serial()
{
    if(device->isOpen())
        device->close(); //    Close the serial port if it's open.
    delete ui;
}

