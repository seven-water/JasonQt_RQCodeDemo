// Qt lib import
#include <QApplication>
#include <QQmlApplicationEngine>

// QZXing lib import
#include "QZXing.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // Begin QZXing
    QZXing::registerQMLTypes();

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
