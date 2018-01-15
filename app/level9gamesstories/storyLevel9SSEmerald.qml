import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: singleEmerald
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Emerald Isle")
    }

    //Colors
    property string lightColor: "#90435e"
    property string darkColor: "#842244"
    property string lighterColor: UbuntuColors.porcelain

    //Margins
    property int marginColumn: units.gu(1)

    Flickable {
        id: levelFlickable
        anchors {
            fill: parent
            topMargin: levelHistoryHeader.height + units.gu(8)
            bottomMargin: units.gu(5)
        }
        
        contentHeight: levelSBColumn.height + units.gu(1)



        Column{
            id: levelSBColumn
            width: parent.width - marginColumn * 6
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: units.gu(3)
            anchors.margins:units.gu(2)
            anchors.topMargin: units.gu(5)

            UbuntuShape {
                id: emeraldCover
                width: parent.width * .7
                height: width * .96
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-ei.jpg"
                }
            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    id: emeraldHistoryTitle
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Introduction")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: emeraldIntroText.visible = !emeraldIntroText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: emeraldIntroText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: emeraldIntroText.visible = !emeraldIntroText.visible
                    }
                }

            }
            Column {
                id: emeraldIntroText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("Emerald Isle lies in the Bermua Triangle, hidden by fogs and treacherous waters and peopled by the remnants of a strange civilisation. This is a massive adventure and, if you read the gold label, you'll probably find this version has over 200 pictures!") }

            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Background")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: introText.visible = !introText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: introText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: introText.visible = !introText.visible
                    }
                }

            }
            Column {
                id: introText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("You play the part of an aircraft pilot, employed to ferry urgent 'documents' around the Carribean. Fierce winds seize the 'plane over the Bermuda Triangle and hurl it to destruction; you escape by parachute at the last moment.") }
                LevelText { text: i18n.tr("As you float down towards an island below, you recognise the coastline from an old map. It is the lonely atoll, “Emerald Isle”, which few people visit and from which none return.") }

                UbuntuShape {
                    width: parent.width
                    height: width * .95
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/ie-map.png"
                    }
                }

                LevelText { text: i18n.tr("It is said that only one person may leave - the ruler of the land - and that each visitor is tested. Success promotes you to King or Queen, failure promotes you to the next life.") }
                LevelText { text: i18n.tr("Explore peculiar towns, meet peculiar people, learn the peculiar purpose of the 'letters' and travel on a railway which is simplicity itself compared to BR's peculiar fare system. Don't be too afraid of the dark, and watch out for the spider!") }

            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Game Instructions - Commands")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: gameInstrText.visible = !gameInstrText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: gameInstrText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: gameInstrText.visible = !gameInstrText.visible
                    }
                }

            }
            Column {
                id: gameInstrText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("The program asks 'What next?' whenever it expects you to enter a command. Simply type an English phrase to tell it what to do and press the RETURN (or ENTER) key. The program will act on your request, then ask for the next command and so on.") }
                LevelText { text: i18n.tr("The game knows an extensive vocabulary of English words. It scans your command, picking out the words which it recognises and working out the meaning from them. Only two or three words are used from each phrase so it pays to keep things simple.") }
                LevelText { text: i18n.tr("If the game doesn't understand what you mean, try and rephrase the command, using different words, and this may work better. Use capital letters.") }
                LevelText { text: i18n.tr("Words can be abbreviated (e.g SOUTH to S and SOUTHWEST to SW) and, to help you get started, some possible instructions are summarised below:") }

                Grid {
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    columnSpacing: units.gu(4)
                    rowSpacing: units.gu(.5)
                    columns: 2
                    Text {text: "INVENTORY"; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "SCORE"; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "LOOK AT TRAIN"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "OPEN DOOR"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "EXAMINE SHOVEL"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "DROP CANOE"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "TAKE COIN"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "PULL ROPE"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "LOOK AROUND"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "EAT FOOD"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}

                }
                LevelText { text: i18n.tr("AGAIN (or A) repeats the previous command. IT means the previous object. E.g: LIGHT LAMP and then EXAMINE IT") }
                LevelText { text: i18n.tr("WORDS just print words (to speed things up) and PICTURES turns these on.") }


            }
            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Scoring")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: hintsText.visible = !hintsText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: hintsText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: hintsText.visible = !hintsText.visible
                    }
                }

            }
            Column {
                id: hintsText
                visible: false
                width: parent.width
                spacing: units.gu(1)

                LevelText { text: i18n.tr("Collect valuable objects and avoid getting killed.") }

            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Credits")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: creditsText.visible = !creditsText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: creditsText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: creditsText.visible = !creditsText.visible
                    }
                }

            }
            Column {
                id: creditsText
                visible: false
                width: parent.width
                spacing: units.gu(1)

                Text {
                    text: i18n.tr("Game Design:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Shaun D Abbott") }
                Text {
                    text: i18n.tr("Implementation:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Pete Austin") }
                Text {
                    text: i18n.tr("Pictures  (most versions):")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("James Horsier") }
                Text {
                    text: i18n.tr("Adventure System:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Mike, Nick & Pete Austin") }
                Text {
                    text: i18n.tr("Booklet:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Alice Boghossian & Pete Austin") }
                Text {
                    text: i18n.tr("Cover Artwork:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Godfrey Dowson") }
                Text {
                    text: i18n.tr("Typesetting, etc:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("A & M Litho & Option A") }


            }
        }

    }
}
