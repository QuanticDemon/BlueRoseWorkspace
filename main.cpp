#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[]){
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    engine.loadFromModule("BlueRoseWorkspace", "Main");

    return app.exec();

}
