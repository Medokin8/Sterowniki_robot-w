/********************************************************************************
** Form generated from reading UI file 'serialport.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SERIALPORT_H
#define UI_SERIALPORT_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLCDNumber>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_SerialPort
{
public:
    QVBoxLayout *verticalLayout_2;
    QGroupBox *groupBox_2;
    QGridLayout *gridLayout_3;
    QTextEdit *textEditLog;
    QGroupBox *groupBox;
    QGridLayout *gridLayout;
    QPushButton *pushButtonDisconnect;
    QPushButton *pushButtonSearch;
    QPushButton *pushButtonConnect;
    QComboBox *comboBoxDevices;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QLCDNumber *dist;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_3;
    QLCDNumber *gyro;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_2;
    QLCDNumber *acc;

    void setupUi(QDialog *SerialPort)
    {
        if (SerialPort->objectName().isEmpty())
            SerialPort->setObjectName(QString::fromUtf8("SerialPort"));
        SerialPort->resize(413, 475);
        verticalLayout_2 = new QVBoxLayout(SerialPort);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        groupBox_2 = new QGroupBox(SerialPort);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        gridLayout_3 = new QGridLayout(groupBox_2);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        textEditLog = new QTextEdit(groupBox_2);
        textEditLog->setObjectName(QString::fromUtf8("textEditLog"));

        gridLayout_3->addWidget(textEditLog, 0, 0, 1, 1);


        verticalLayout_2->addWidget(groupBox_2);

        groupBox = new QGroupBox(SerialPort);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        gridLayout = new QGridLayout(groupBox);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        pushButtonDisconnect = new QPushButton(groupBox);
        pushButtonDisconnect->setObjectName(QString::fromUtf8("pushButtonDisconnect"));

        gridLayout->addWidget(pushButtonDisconnect, 4, 1, 1, 1);

        pushButtonSearch = new QPushButton(groupBox);
        pushButtonSearch->setObjectName(QString::fromUtf8("pushButtonSearch"));

        gridLayout->addWidget(pushButtonSearch, 1, 0, 1, 1);

        pushButtonConnect = new QPushButton(groupBox);
        pushButtonConnect->setObjectName(QString::fromUtf8("pushButtonConnect"));

        gridLayout->addWidget(pushButtonConnect, 4, 0, 1, 1);

        comboBoxDevices = new QComboBox(groupBox);
        comboBoxDevices->setObjectName(QString::fromUtf8("comboBoxDevices"));

        gridLayout->addWidget(comboBoxDevices, 1, 1, 1, 1);


        verticalLayout_2->addWidget(groupBox);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label = new QLabel(SerialPort);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout->addWidget(label);

        dist = new QLCDNumber(SerialPort);
        dist->setObjectName(QString::fromUtf8("dist"));
        QFont font;
        font.setPointSize(23);
        dist->setFont(font);

        horizontalLayout->addWidget(dist);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label_3 = new QLabel(SerialPort);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        horizontalLayout_3->addWidget(label_3);

        gyro = new QLCDNumber(SerialPort);
        gyro->setObjectName(QString::fromUtf8("gyro"));
        gyro->setFont(font);
        gyro->setStyleSheet(QString::fromUtf8("color: rgb(0, 0, 0);"));

        horizontalLayout_3->addWidget(gyro);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_2 = new QLabel(SerialPort);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        horizontalLayout_2->addWidget(label_2);

        acc = new QLCDNumber(SerialPort);
        acc->setObjectName(QString::fromUtf8("acc"));
        acc->setFont(font);

        horizontalLayout_2->addWidget(acc);


        verticalLayout->addLayout(horizontalLayout_2);


        verticalLayout_2->addLayout(verticalLayout);


        retranslateUi(SerialPort);

        QMetaObject::connectSlotsByName(SerialPort);
    } // setupUi

    void retranslateUi(QDialog *SerialPort)
    {
        SerialPort->setWindowTitle(QApplication::translate("SerialPort", "Dialog", nullptr));
        groupBox_2->setTitle(QApplication::translate("SerialPort", "Log", nullptr));
        groupBox->setTitle(QApplication::translate("SerialPort", "SerialConnection", nullptr));
        pushButtonDisconnect->setText(QApplication::translate("SerialPort", "Disconnect", nullptr));
        pushButtonSearch->setText(QApplication::translate("SerialPort", "Search", nullptr));
        pushButtonConnect->setText(QApplication::translate("SerialPort", "Connect", nullptr));
        label->setText(QApplication::translate("SerialPort", "Aprox. Distance", nullptr));
        label_3->setText(QApplication::translate("SerialPort", "Degree", nullptr));
        label_2->setText(QApplication::translate("SerialPort", "Acceleatrion", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SerialPort: public Ui_SerialPort {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SERIALPORT_H
