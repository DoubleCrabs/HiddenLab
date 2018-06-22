#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QWidget>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/HiddenLab.qml")));

    return app.exec();
}
