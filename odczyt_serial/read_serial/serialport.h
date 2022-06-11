#ifndef SERIALPORT_H
#define SERIALPORT_H

#include <QDialog>
#include <QSerialPort>
#include <time.h>
#include <iostream>
#include <QString>

typedef struct sensorData
{
    float Get1;
    float Get2;
    float Get3;
    float Dist1;
    float Dist2;
    float Dist3;
    float AccX;
    float AccY;
    float GyroZ;
    char Sign;

} sensorData;


namespace Ui {
class SerialPort;
}

class SerialPort : public QDialog
{
    Q_OBJECT

public:
    explicit SerialPort(QWidget *parent = nullptr);
    ~SerialPort();
signals:
    void parsedMeasurementReady(sensorData measured);

private slots:
    void on_pushButtonSearch_clicked();
    void log(QString msg);
    void on_pushButtonConnect_clicked();

    void on_pushButtonDisconnect_clicked();
    void readFromPort();

    void updateLCD(double sensor_reading1, double sensor_reading2, double sensor_reading3);
private:
    QByteArray data;

    Ui::SerialPort *ui;
    QSerialPort *device;
    void process_line(QString line);
    QByteArray serialData;
    QString serialBuffer;
    double parsed_data_dist;
    double parsed_data_acc;
    double parsed_data_gyro;

    float dist_value;
    float acc_value;
    float gyro_value;
};



#endif // SERIALPORT_H
