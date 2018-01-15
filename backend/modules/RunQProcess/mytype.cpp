#include "mytype.h"
#include <QCoreApplication>
#include <QDebug>
#include <QDir>
#include <QDirIterator>

//#include <QDataStream>
//#include <iostream>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonValue>

//Jujuyeh
#include <QTextStream>
#include <QIODevice>
#include <QFile>
#include <QString>

#include <iostream>
#include <cstring>


Launcher::Launcher(QObject *parent) :
    QObject(parent),
    m_process(new QProcess(this)) //Redundant?     ---\/
{
}
QString Launcher::launch(const QString &game)
{
    QStringList args;

     //m_process = new QProcess(this); //Redundant? ---^

     //connect(m_process, SIGNAL(readyReadStandardOutput()), this, SLOT(readSOL()));
     //connect(m_process, SIGNAL(readyReadStandardOutput()), SIGNAL(stdoutLevel()));

    //args << "/tmp/level9/colossal.sna";
    //qDebug() << "args: " << args;
    m_process->setReadChannel(QProcess::StandardOutput);
    //m_process->setProcessChannelMode(QProcess::MergedChannels);
    //m_process->setProcessChannelMode(QProcess::ForwardedOutputChannel);

    connect (m_process, SIGNAL(readyReadStandardOutput()), this, SLOT(processOutput()));  // connect process signals with your code

    #ifdef Q_PROCESSOR_X86
    QDir workDir;
    workDir.cd("/tmp/level9/");
    m_process->start("/home/cibersheep/Ubuntu_Touch_Projects/RunQProcess/lib/level9glk", QStringList() << game);
    #else
    m_process->start("terps/lev9glk", QStringList() << game);
    qDebug() << "Load lev8glk and game: " << game;
    //m_process->start("/home/phablet/.cache/gelek.cibersheep/level9", QStringList() << "/home/phablet/.cache/runqprocess.cibersheep/colossal.sna");
    #endif


    if (!m_process->waitForStarted()) {
            qDebug() << "Process start failed";
            return "Error";
    }
    else qDebug() << "Level9 started";


    return ""; //Function needs to be changed to void
}

void Launcher::processOutput() {
    //qDebug() << m_process->readAllStandardOutput();  // read normal output
    emit stdoutLevel();
}

void Launcher::sendCommand(const QString &cmd)
{
    if (m_process->state() != QProcess::Running)
        return;
    qDebug() << "[toGlk] " << cmd;

    m_process->write(cmd.toLocal8Bit() + '\n');
}

void Launcher::stdoutReady()
{
    int onLine = 0;
    QString line;
    QString assembledText = "";
    //QByteArray dataTempStream;
    //QString dataTempStream;
    qDebug() << "stdoutRedy triggered";
/*
    while (true)
    {
        //qDebug() << m_process->readLine();
        if (true) //dataTempStream.readLineInto(&line)
        {
            onLine++;


            //if (line == "") {

                // WARNING: "This is extremely inefficient. When you assign readAll() to a QString you're causing a byte array to be converted from utf8 bytes to a utf16 QString. And then when you call fromJson you're causing the utf16 string to be converted back into a new utf8 byte array. Change strReply to a QByteArray and you avoid all this pointless conversion."

            assembledText = m_process->readAllStandardOutput();
            qDebug() << "AssText: " << assembledText.toUtf8();

            //}
        }
        //return assembledText;
    }
*/
}

QString Launcher::readSOL() {
    //m_process->closeWriteChannel();
    QByteArray bytes = m_process ->readAllStandardOutput();
    QString output = QString::fromLocal8Bit(bytes);
    //qDebug() << "------ stdout output\n" << output;
    //qDebug() << "\n------------------";

    /*
    QJsonParseError err;
    QJsonDocument doc = QJsonDocument::fromJson(bytes, &err);

    if(doc.isObject())
    {
        QJsonObject obj = doc.object();

        //QJsonObject::iterator itr = obj.find("content");
        //if(itr == obj.end())
        //    {
        //        qDebug() << "itr found nothing ";
        //    }
        //
        QJsonValue val = obj.value("content");
        //qDebug() << "---------------------------------VAL       \n" << val;
        //qDebug() << "obj       " << obj;

    }
    */
    return output;
}
void Launcher::storeGameFile(QString gameURL, QString gameName) {

    QDir storeDir;

    #ifdef Q_PROCESSOR_X86
    storeDir = "/home/cibersheep/Level_9/Games/";
    #else
    storeDir = "/home/phablet/.cache/gelek.cibersheep/Games/";
    #endif

    QFile copyGame;
    QDir storeGameDir;
    storeGameDir.mkpath(storeDir.absolutePath());
    //storeGameDir.setCurrent(storeDir);
    copyGame.copy(gameURL, storeDir.filePath(gameName));
    qDebug() << "gameName cpp: " << storeDir.filePath(gameName);

}
void Launcher::createSavedGamesDir() {

    QDir savedGamesDir;

    #ifdef Q_PROCESSOR_X86
    savedGamesDir = "/home/cibersheep/Level_9/SavedGames/";
    #else
    savedGamesDir = "/home/phablet/.cache/gelek.cibersheep/SavedGames/";
    #endif

    savedGamesDir.mkpath(savedGamesDir.absolutePath());
}

void Launcher::deleteSavedGames(QString savedGame) {

    QFile removeSavedGame;

    qDebug() << "Deleting: " << savedGame;
    if (!removeSavedGame.remove(savedGame)) {
        qDebug() << "Error deleting file";
    }
}

QStringList Launcher::listFiles() {
    QString gamesDir;

    #ifdef Q_PROCESSOR_X86
    gamesDir = "/home/cibersheep/Baixades/If_Adventrures-Conversacionales/Level 9/";
    #else
    gamesDir = "/home/phablet/.cache/gelek.cibersheep/HubIncoming/";
    #endif

    QStringList filters;
    filters << "*.dat" << "*.l9" << "*.sna" << "*.DAT" << "*.L9" << "*.SNA" << "*.st" << "*.ST";

    QStringList gamesFiles;

    //QDirIterator it(dir, QStringList() << "*.dat" << "*.l9" << "*.sna", QDir::NoFilter, QDirIterator::Subdirectories);
    QDirIterator it(gamesDir, filters, QDir::NoFilter, QDirIterator::Subdirectories);
    while (it.hasNext()) {
        //qDebug() << it.next();
        gamesFiles.append(it.next());
    }
    //qDebug() << gamesFiles;
    return gamesFiles;
}

using namespace std;

#ifdef Q_PROCESSOR_X86
const char workPath[] = "/home/cibersheep/";
#else
const char workPath[] = "/home/phablet/.cache/gelek.cibersheep/SavedGames/";
#endif


void Launcher::addToList (const QString savefile, const QString game, const QString dateTime) {
    QDir appDir;
    appDir.cd(workPath);

    QFile saveList(appDir.filePath("gelekSaveList"));
    if (!saveList.open(QIODevice::WriteOnly | QIODevice::Text | QIODevice::Append)) {return;}
    QTextStream toList(&saveList);
    toList << '"' << savefile.toUtf8().data() << "\": { game:\"" << game.toUtf8().data()
           << "\", time:\"" << dateTime.toUtf8().data() << '"' << " }" << endl;
    saveList.close();
}

QString Launcher::whichGame (const QString savefile) {
    QDir appDir;
    appDir.cd(workPath);
    QFile saveList(appDir.filePath("gelekSaveList"));
    if (!saveList.open(QIODevice::ReadOnly | QIODevice::Text)) {return "";}
    QTextStream fromList(&saveList);
    QString searchString(savefile);
    QString line;
    QString game;
    line = fromList.readLine();
    //qDebug() << "line: -----------" + line;
    //qDebug() << "--------- line: " << line << " isNull? " << line.isNull();
    while (!line.isNull()) {
        //qDebug() << "--------- while";
        //qDebug() << "--------- line contains: " << line.contains(searchString, Qt::CaseSensitive);
        //qDebug() << "---------  searchString: " << searchString;
        //line = fromList.readLine();
        if (line.contains(searchString, Qt::CaseSensitive)) {
            line.remove(0,savefile.size()+12);
            QString gameEnd;
            gameEnd = '"';
            QStringRef y = line.midRef(0, line.indexOf(gameEnd));
            game.append(y);
            //qDebug() << "y es igual (in while)    --------" << y;
            //qDebug() << "game es igual a (in while)--------" << game;
            saveList.close();
            return game;
        }
        line = fromList.readLine();
    }
    //qDebug() << "gme es iagual a (out of while)--------" << game;
    saveList.close();
    game.append("Unkown Game");
    return game;
}

void Launcher::whatTime (const QString savefile, QString dateTime) {
    QDir appDir;
    appDir.cd(workPath);
    QFile saveList(appDir.filePath("gelekSaveList"));
    if (!saveList.open(QIODevice::ReadOnly | QIODevice::Text)) {return;}
    QTextStream fromList(&saveList);
    QString searchString(savefile);
    QString line;
    while (!line.isNull()) {
        line = fromList.readLine();
        if (line.contains(searchString, Qt::CaseSensitive)) {
            QString timeSearch = "time:";
            line.remove(0,line.indexOf(timeSearch) + 6);
            line.chop(1);
            dateTime.append(line);
            saveList.close();
            return;
        }
    }
    saveList.close();
}

void Launcher::deleteSave (const QString savefile) {

    QDir appDir;
    appDir.cd(workPath);

    QString renameFrom;
    QString renameTo;

    renameFrom.append(workPath);
    renameFrom.append("gelekSaveList");

    renameTo.append(workPath);
    renameTo.append("gelekSaveListOLD");
    qDebug() << renameFrom << "  " << renameTo;

    rename(renameFrom.toUtf8(), renameTo.toUtf8());

    QFile saveListOLD(appDir.filePath("gelekSaveListOLD"));
    if (!saveListOLD.open(QIODevice::ReadOnly | QIODevice::Text)) {return;}
    QTextStream fromList(&saveListOLD);

    QFile saveList(appDir.filePath("gelekSaveList"));
    if (!saveList.open(QIODevice::WriteOnly | QIODevice::Text | QIODevice::Append)) {qDebug() << "Couldn't open gelekSavedList"; return;}
    QTextStream toList(&saveList);

    QString line;
    //QString saveListContent;
    line = fromList.readLine();
    qDebug() << "Is Line Null? " << line.isNull();
    while (!line.isNull()) {
        qDebug() << "Line: " << line;
        if (!(line.contains(savefile, Qt::CaseSensitive))) {
            toList << line << endl;
        }
        line = fromList.readLine();
    }
    saveList.close();
    saveListOLD.close();
}

Launcher::~Launcher() {
}
