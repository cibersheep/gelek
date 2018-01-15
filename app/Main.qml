import QtQuick 2.4
import Ubuntu.Components 1.3

import "components"
import Ubuntu.Components.ListItems 1.3 as ListItemm
import Ubuntu.Content 1.3

import Qt.labs.folderlistmodel 2.1
import RunQProcess 1.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    id: mainView
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "gelek.cibersheep"

    width: units.gu(40)
    height: units.gu(75)

    //Margins
    property int marginColumn: units.gu(1)

    //Colors
    property string lightColor: "#90435e"
    property string darkColor: "#842244"
    property string lighterColor: UbuntuColors.porcelain

    property string level9Game: ""

	anchorToKeyboard: true

    PageStack {
            id: mainPageStack
            anchors.fill: parent
            Component.onCompleted: mainPageStack.push(pageMain)

        Page {
            id: pageMain
            anchors.fill: parent
            header: GelekHeader {
                id: pageHeader
                title: "Gelek"
            }
            /* Use launch.listFiles() or FolderListModel
            Component.onCompleted: {
                var alreadyImportedGames = launch.listFiles();
                for (var i in alreadyImportedGames) {
                    //console.log(alreadyImportedGames[i]);
                    var gameName = alreadyImportedGames[i].split("/");
                    importedGamesModel.append({name: gameName[gameName.length-1], link: alreadyImportedGames[i]});
                }
            }
            */



            Flickable {
                id: flickable
                anchors {
                    fill: parent
                    horizontalCenter: parent.horizontalCenter
                }
                //width: parent.width - marginColumn * 2
                contentHeight: addGame.height + previousGames.height + otherOptions.height + units.gu(29)

                Column {
                    id: addGame
                    width: parent.width //- marginColumn * 2
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        topMargin: pageHeader.height + units.gu(8)
                    }
                    spacing: units.gu(1)
                    Icon {
                        id: importGame
                        width: units.gu(6)
                        height: width
                        anchors.horizontalCenter: parent.horizontalCenter
                        name: "add"
                    }

                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: i18n.tr("Import")
                        font.pointSize: units.gu(2)
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: i18n.tr("a new game")
                    }
                    Text {
                        width: parent.width - marginColumn * 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        text: i18n.tr("Accepted formats: .atr, .bin, .com, .dat, .l9, .sna, .st, .tap")
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        color: UbuntuColors.graphite
                    }
                }
                Item {
                    anchors.fill: addGame
                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            var importPage = mainPageStack.push(Qt.resolvedUrl("ImportPage.qml"),{"contentType": ContentType.All, "handler": ContentHandler.Source})
                            importPage.imported.connect(function(fileUrl) {
                                level9Game  = fileUrl
                            })
                            //mainPageStack.pop()

                        }
                    }
                }
                Column {
                    id: previousGames
                    width: parent.width
                    //height: units.gu(7) * importedGamesModel.count
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        top: addGame.bottom
                        topMargin: units.gu(10)
                    }
                    Label {
                        height: units.gu(4)
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: importedGamesModel.count === 0 ? i18n.tr("No Imported Games Yet") : i18n.tr("Previouly Imported Games")
                        color: lightColor
                    }

                    // Use launch.listFiles() or FolderListModel
                    FolderListModel {
                        id: importedGamesModel
                        rootFolder: "/home/phablet/.cache/gelek.cibersheep/Games/"
                        folder: "/home/phablet/.cache/gelek.cibersheep/Games/"
                        //folder: "/home/cibersheep/Baixades/If_Adventrures-Conversacionales/Level 9/silicon-dreams-trilogy - No Copy Protection"
                        nameFilters: [ "*.sna", "*.dat", "*.tap", "*.l9", "*.st", "*.atr", "*.com", "*.bin", "*.tzx", "*.SNA", "*.DAT", "*.L9", "*.ST", "*.ATR", "*.BIN", "*.COM", "*.TAP", "*.TZX" ]
                        showHidden: true
                        showDirs: false
                        //sortField: Name
                        sortField: FolderListModel.Time
                    }
                    // Use launch.listFiles() or FolderListModel

                    /* Use launch.listFiles() or FolderListModel
                    ListModel {
                        id: importedGamesModel
                    }
                    */
                    /*
                    PullToRefresh {
                        parent: flickable
                        refreshing: importedGamesModel.status === importedGamesModel.Loading
                        onRefresh: importGameList.update()
                    }
                    */
                    Component {
                        id: importedGamesDelegate
                        // Use launch.listFiles() or FolderListModel // text: name or text: fileName; link or filePath
                        Item {
                            width: parent.width
                            height: rows.height
                            Row {
                                id:rows
                                height: units.gu(7)
                                spacing: units.gu(2)
                                //width: parent.width * .9
                                anchors.horizontalCenter: parent.horizontalCenter

                                Icon { width: units.gu(3); height: width; name: "voicemail"; anchors.verticalCenter: parent.verticalCenter }
                                Text { text: fileName ; width: previousGames.width * .45; anchors.verticalCenter: parent.verticalCenter; clip: true }
                                Icon { width: units.gu(2); height: width; name: "next"; anchors.verticalCenter: parent.verticalCenter }

                            }
                            MouseArea {
                                anchors.fill: parent;
                                onClicked: mainPageStack.push(Qt.resolvedUrl("playLevel9.qml"),{"game": filePath})
                            }
                        }

                    }

                    ListView {
                        id: importGameList
                        interactive: false
                        width: parent.width

                        anchors.horizontalCenter: parent.horizontalCenter
                        height: units.gu(7) * importedGamesModel.count

                        model: importedGamesModel
                        delegate: importedGamesDelegate
                    }

                }
                Column {
                    id: otherOptions
                    width: parent.width
                    anchors {
                        top: previousGames.bottom
                        leftMargin: marginColumn
                        rightMargin: marginColumn
                        topMargin: units.gu(5)
                    }
                    ListItem{
                        width: parent.width
                        divider.visible: true
                    }
                    ListItem{
                        width: parent.width
                        divider.visible: true
                        GelekItemLayout {
                            title.text: i18n.tr("Saved Games")
                        }
                        onClicked: {
                            Qt.inputMethod.hide();
                            mainPageStack.push(Qt.resolvedUrl("savedGamesPage.qml"));
                        }
                    }

                    ListItem{
                        width: parent.width
                        divider.visible: true
                        GelekItemLayout {
                            title.text: i18n.tr("Level 9 Game Stories")
                        }
                        onClicked: {
                            Qt.inputMethod.hide();
                            mainPageStack.push(Qt.resolvedUrl("storiesLevel9Index.qml"));
                        }
                    }
                    ListItem{
                        width: parent.width
                        divider.visible: true
                        GelekItemLayout {
                            title.text: i18n.tr("Level 9 Computing History")
                        }
                        onClicked: {
                            Qt.inputMethod.hide();
                            mainPageStack.push(Qt.resolvedUrl("historyLevel9.qml"));
                        }
                    }
                }
            }
        }
    }
}


