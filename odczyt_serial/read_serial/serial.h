#ifndef SERIAL_H
#define SERIAL_H

#include <QMainWindow>
#include <QDialog>
#include <QSerialPort>
#include <QByteArray>
#include "serialport.h"
#include <iostream>

using namespace std;

QT_BEGIN_NAMESPACE
namespace Ui { class serial; }
QT_END_NAMESPACE


class serial : public QMainWindow
{
    Q_OBJECT

public:
    explicit serial(QWidget *parent = 0);
    ~serial();
    //SerialPort *porcik;


private slots:
    void readSerial();
    //void updateTemperature(QString);

private:
    Ui::serial *ui;

    QSerialPort *device;
    static const quint16 device_vendor_id = 1155;
    static const quint16 device_product_id = 14155;
    QByteArray serialData;
    QString serialBuffer;
    QString parsed_data;
    double temperature_value;
};

#endif // SERIAL_H
