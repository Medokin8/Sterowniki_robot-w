#include <iostream>
#include "serialport.h"

#include <QApplication>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <QApplication>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    SerialPort x;
    x.show();

    return a.exec();
}
