import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: grGnome
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Gonme Range")
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

        contentHeight: levelSGColumn.height + units.gu(1)



        Column{
            id: levelSGColumn
            width: parent.width - marginColumn * 6
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: units.gu(3)
            anchors.margins:units.gu(2)
            anchors.topMargin: units.gu(5)

            UbuntuShape {
                id: siliconCover
                width: parent.width * .7
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-gr.jpg"
                }
            }


            StorySection {
                sectionTitle: "The Game"
                sectionOpen: gameText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: gameText.visible = !gameText.visible
                }
            }
            Column {
                id: gameText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("When Ingrid the Sloane Gnome is banished to the wilderness by her exasperated family, the monsters don't know what's hit them!") }
                LevelText { text: i18n.tr("Gnome Ranger is a fun tongue-in-cheek fantasy adventure that follows the exploits and misadventures of Ingrid, a good-natured but exceedingly accident-prone gnome, who has been banished by her village and must find her way back home.") }
                LevelText { text: i18n.tr("To play Adventure Quest you simply enter English phrases to tell the computer what you want to go (e.g. MOVE NORTH, FILL THE BOTTLE or LOOK AROUND), and it acts as your eyes and ears to describe your surroundings.") }
                LevelText { text: i18n.tr("In fact, Adventure Quest is amazingly easy to play — you don't need to be able to find the cursor keys blindfold or hammer the space-bar for hours. But it may take weeks to solve! Fortunately you can use the SAVE command to store the current state of the game and return to everyday life for a while, resuming play later.") }
            }

            StorySection {
                sectionTitle: "Game Instructions — Commands"
                sectionOpen: gameInstrText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: gameInstrText.visible = !gameInstrText.visible
                }
            }
            Column {
                id: gameInstrText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("Gnome ranger knows all the usual adventure commands: compass directions for movement, GET, DROP, EXAMINE, INVENTORY, etc.") }
                LevelText { text: i18n.tr("There are several high livel commands: FOLLOW someone, GO somwhere, RUN somewhere, WAIT FOR someone and WAIT FOR number. And the game knows several collective nouns, so you can type these multi-stage commands.") }
                LevelText { text: i18n.tr("Peolpe can be asked questions, CENTAUR, TELL ME ABOUT YOURSELF and given complex commands if friendly (Characters have their own goals. Once recruited, they can carry put complex orders while you get on with other things. Eg. NYMPH, FIND THISTLE AND PICK IT, GO TO HILL, PICK SHOOT THEN PUT THE INGREDIENTS IN THE POT). Several of the puzzles in the game can only be solved by a group of people.") }
                LevelText { text: i18n.tr("AGAIN repeats a command, BRIEF and VERBOSE control the amount of text, WORDS and PICTURES turn graphics on and off, UNDO takes back the last move (and can be used many times in succession on larger micros), SAVE and RESTORE save your position on disk and RAM SAVE and RAM RESTORE do the same in memory.") }
            }

            StorySection {
                sectionTitle: "Credits"
                sectionOpen: creditsText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: creditsText.visible = !creditsText.visible
                }
            }
            Column {
                id: creditsText
                visible: false
                width: parent.width
                spacing: units.gu(1)

                LevelText {
                    text: i18n.tr("Producer, game and pack design:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Game program and system:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Mike Austin.") }
                LevelText {
                    text: i18n.tr("Versions:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Nick Austin and John Jones-Steel") }
                LevelText {
                    text: i18n.tr("Original graphics:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Godfrey Dowson") }
                LevelText {
                    text: i18n.tr("Gnomic text:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete McBride") }
            }


        }

    }
}
