import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "components"
import Qt.labs.folderlistmodel 2.1
import RunQProcess 1.0
import Ubuntu.Content 1.3

Page {
    id: savedGamesLevel9
    anchors.fill: parent
    header: GelekHeader {
        id: levelSavedGamesHeader
        title: i18n.tr("Level 9 Saved Game")
    }

    //Colors
    property string lightColor: "#90435e"
    property string darkColor: "#842244"
    property string lighterColor: UbuntuColors.porcelain

    //Margins
    property int marginColumn: units.gu(1)
    Launcher {
        id: launcher
    }

    Flickable {
        id: savedGamesFlickable
        width: parent - marginColumn * 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors {
            fill: parent
            topMargin: levelSavedGamesHeader.height + units.gu(8)
            bottomMargin: units.gu(5)
        }
        
        contentHeight: savedGameTitle.height + savedGameSnowball.height + units.gu(5)

        Column {
            id: savedGameTitle
            spacing: units.gu(2)
            anchors.horizontalCenter: parent.horizontalCenter
            Label {
                text: "List of Saved Games"
                font.bold: true
                font.pointSize: units.gu(2)
                color: darkColor
                horizontalAlignment: Text.AlignHCenter
            }
            Text {
                color: UbuntuColors.graphite
                text: savedGamesModel.count === 0 ? "No Saved Games Found" : "Slide for Options"
                anchors.horizontalCenter: parent.horizontalCenter
            }

        }




        ListView {
            id: savedGameSnowball
            interactive: false
            width: parent.width * .8
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: savedGameTitle.bottom
            anchors.topMargin: units.gu(5)
            height: units.gu(7) * categorizedSavedGamesModel.count

            section.property: "category"
            section.criteria: ViewSection.FullString
            section.delegate: ListItemHeader {
                title: section
            }
            model: categorizedSavedGamesModel
            delegate: savedGameSnowballDelegate

        }

        Component {
            id: savedGameSnowballDelegate

            ListItem {
                property string wichGame;
                //visible: launcher.whichGame(fileName) === "Snowball1986" ? true : false

                width: parent.width - marginColumn * 4
                anchors.horizontalCenter: parent.horizontalCenter
                divider.visible: false
                clip: true
                highlightColor: "transparent"
                leadingActions:  ListItemActions {
                                        actions: [
                                            Action {
                                                iconName: "delete"
                                                text: i18n.tr("Delete")
                                                onTriggered: {
                                                    launcher.deleteSavedGames(filePath)
                                                }
                                            }
                                        ]
                                    }
                trailingActions: ListItemActions {
                                        actions: [
                                            Action {
                                                iconName: "share"
                                                text: i18n.tr("Share")
                                                onTriggered: {
                                                    //Open the click with Telegram, OpenStore, etc.
                                                    var sharePage = mainPageStack.push(Qt.resolvedUrl("SharePage.qml"), {"url": filePath, "contentType": ContentType.All, "handler": ContentHandler.Share});
                                                    sharePage.imported.connect(function(filePath) {
                                                        mainPageStack.push(Qt.resolvedUrl("savedGamesPage.qml"))
                                                    })
                                                }

                                            },
                                            Action {
                                                iconName: "save"
                                                text: i18n.tr("Save")
                                                onTriggered: {
                                                    //Save with File Manger, etc.
                                                    var InstallPage = mainPageStack.push(Qt.resolvedUrl("InstallPage.qml"), {"url": filePath, "contentType": ContentType.All, "handler": ContentHandler.Destination});
                                                    InstallPage.imported.connect(function(filePath) {
                                                        mainPageStack.push(Qt.resolvedUrl("savedGamesPage.qml"))
                                                    })
                                                }
                                            }
                                        ]
                                    }
                Row {
                    id: showItem
                    height: units.gu(7)

                    spacing: units.gu(2)
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter

                    Icon { width: units.gu(3); height: width; source: "../../../graphics/save.svg"; anchors.verticalCenter: parent.verticalCenter
                        /* MouseArea {anchors.fill: parent;onClicked:  {}} */
                    }
                    Text { text: fileName.replace(".glksave", ""); width: parent.width * .75; anchors.verticalCenter: parent.verticalCenter; clip: true
                        MouseArea {anchors.fill: parent;onClicked:  {
                                mainPageStack.push(Qt.resolvedUrl("playLevel9.qml"),{"game": "/home/cibersheep/SNOWBALL.SNA", "saved": filePath, automaticResponse: true}) //should be game: pathtothegame
                            }}
                    }


                    /*
                    Icon { width: units.gu(2); height: width; name: "next"; anchors.verticalCenter: parent.verticalCenter
                        MouseArea {anchors.fill: parent;onClicked: mainPageStack.push(Qt.resolvedUrl("playLevel9.qml"),{"game": filPath})}
                    }
                    */
                }
            }

        }

        FolderListModel {
            id: savedGamesModel
            rootFolder: "/home/phablet/.cache/gelek.cibersheep/SavedGames/"
            folder: "/home/phablet/.cache/gelek.cibersheep/SavedGames/"
            nameFilters: [ "*.glksave", "*.GLKSAVE" ]
            showHidden: true
            showDirs: false
            //sortField: Name
            sortField: FolderListModel.Time
            onDataChanged: console.log("Data changed")
            onModelReset: console.log("Model Reset")
            onColumnsAboutToBeInserted: console.log("Column about to be inserted")
            onColumnsInserted: console.log("Column inserted")

            onCountChanged: {
                console.log("savedGamesModel count: " + count)
                categorizedSavedGamesModel.clear()
                for (var i=0; i< savedGamesModel.count; ++i) {
                    //console.log(savedGamesModel.get(i, "fileName"))
                    //console.log(launcher.whichGame(savedGamesModel.get(i, "fileName")))
                    if (savedGamesModel.get(i, "fileName") !== "gelekSaveList") {
                        categorizedSavedGamesModel.append({ category: launcher.whichGame(savedGamesModel.get(i, "fileName")), fileName: savedGamesModel.get(i, "fileName"), filePath: savedGamesModel.get(i, "filePath") })
                    }
                    //savedGamesModel.set(i, {"category": launcher.whichGame(savedGamesModel.fileName)} )
                    //console.log("FileName" + launcher.whichGame(savedGamesModel.fileName))
                }
            }

        }
        ListModel {
               id: categorizedSavedGamesModel
        }

    }


}
