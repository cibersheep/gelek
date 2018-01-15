#ifndef LAUNCHER_H
#define LAUNCHER_H
#include <QObject>
#include <QProcess>
class Launcher : public QObject
{
    Q_OBJECT
public:
    explicit Launcher(QObject *parent = 0);
    ~Launcher();
    Q_INVOKABLE QString launch(const QString &game);
    Q_INVOKABLE void sendCommand(const QString &cmd);
    Q_INVOKABLE QString processStdOutFromGlk();
    Q_INVOKABLE QString readSOL();
    Q_INVOKABLE QStringList listFiles();
    Q_INVOKABLE void storeGameFile(QString gameURL, QString gameName);
    Q_INVOKABLE void createSavedGamesDir();
    Q_INVOKABLE void deleteSavedGames(QString savedGame);

    Q_INVOKABLE void addToList (const QString savefile, const QString game, const QString dateTime);
    Q_INVOKABLE QString whichGame (const QString savefile);
    Q_INVOKABLE void whatTime (const QString savefile, QString dateTime);
    Q_INVOKABLE void deleteSave (const QString savefile);

signals:
    void stdoutLevel();

public slots:
    void stdoutReady();
    void processOutput();

protected:
    QProcess *m_process;
};
#endif
