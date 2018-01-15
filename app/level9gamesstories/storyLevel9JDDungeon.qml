import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: jewelsDungeon
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Adventure Quest")
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
                    source: "../../../../graphics/l9str-jd.jpg"
                }
            }

            StorySection {
                sectionTitle: "Adventure Scenario"
                sectionOpen: introText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: introText.visible = !introText.visible
                }
            }
            Column {
                id: introText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("A day has passed since the success of Adventure Quest and jubilation reigns in Valaii! At sunset yesterday the city was beseiged by a sea of orcs, with more arriving every hour, and it seemed that the defenders were doomed. But at sunrise, the watch looked out over an empty plain — the attackers had given up the assault when on the point of victory.") }
                LevelText { text: i18n.tr("Initially, the only reaction was stunned amazement. But gradually a rumour began to spread: first whispered in quiet corners, lest the telling should make it untrue, but eventually shouted in every street…") }
                LevelText {
                    text: i18n.tr("'The Demon Lord is dead!!!'")
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                }
                UbuntuShape {
                    width: parent.width
                    height: width * 1.11
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-da-02.jpg"
                    }
                }
                LevelText { text: i18n.tr("When this was confirmed by the Wizard's Council, a two week carnival was announced — the provisions hoarded against a long seige were lavishly dispensed and the population proceeded to enjoy themselves as you would expect.") }
                LevelText { text: i18n.tr("But a few people, yourself included, thought along different lines, as follows:") }
                LevelText { text: i18n.tr("1) The Demon Lord must have been very rich;"); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("2) If he really is dead, his treasures may be unguarded;"); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("3) When the orcs marched south they cut a swathe of destruction through the countryside but they moved too fast to completely loot the area;"); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("4) So, if I were to ride swiftly north, I'd have no problem in finding provisions and could probably reach the Black Tower in ten days. The wizards would never have repaired their teleport system by then, so I'd very likely be the first person there."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("5) This could make me incredibly rich."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("You gather together all the lethal weapons you can get your hands on and leave within the hour.") }
                LevelText { text: i18n.tr("All goes well. You have taken a team of horses and make very great progress indeed (aided by Horseshoes-of-Speed, a Staff-of-the-Seasons for fodder, night-sight goggles etc. 'donated' by a cavalry barracks) and after eight days are nearing the Black Tower, lair of the late Demon Lord.") }
                LevelText { text: i18n.tr("Then, about a mile from the tower itself, you are riding through a seemingly deserted forest when a spell is cast! Your anti-magic defences spring into action, but too late… you fall to the ground asleep.") }
                LevelText { text: i18n.tr("Some time later you wake, cold and wet, on a mudbank below a bridge spanning a wide river. All of your weapons and magic are lost. It seems that you were robbed and then your body was thrown into the river but that, rather than drowning, you have survived long enough to be washed up on the shore.") }
                LevelText { text: i18n.tr("You clamber soggily up onto the bridge and ponder over your fate. Can you take on the Dungeons of the Demon Lord unaided? It seems you have little choice, as this is where the adventure starts…") }
                LevelText {
                    text: i18n.tr("'Good Luck! You'll need it!'")
                    horizontalAlignment: Text.AlignHCenter
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
                UbuntuShape {
                    width: parent.width
                    height: width * 1.43
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-da-01.jpg"
                    }
                }
                LevelText { text: i18n.tr("Dungeon Adventure is a full scale adventure game with well over 200 individually described locations, 700 messages, about 100 objects etc etc. You will have to solve a very large number of puzzles while collecting the treasures left by the Demon Lord!") }
                LevelText { text: i18n.tr("To play Dungeon Adventure, load it from cassette and then simply enter English phrases to tell the computer what ,you want to do (eg. MOVE NORTH, FILL THE POT, CLIMB THE CLIFF, LOOK AROUND). The program will act as your eyes and ears (and NOSE!) to describe your surroundings.") }
                LevelText { text: i18n.tr("In fact, Dungeon Adventure is amazingly easy to play — you don't need to be able to find the cursor keys blindfold or hammer the space-bar for hours. But it will probably take weeks (or months) to complete! Fortunately you can use the SAVE command to store the current state of the game and return to everyday life for a while, resuming play later.") }
            }

            StorySection {
                sectionTitle: "Game Instructions — Commands"
                sectionOpen: gameInstrText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: gameInstrText.visible = !gameInstrText.visible
                }
            }
            ColumnCommands {
                id: gameInstrText
            }

            StorySection {
                sectionTitle: "Scoring and Hints"
                sectionOpen: hintsText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: hintsText.visible = !hintsText.visible
                }
            }
            Column {
                id: hintsText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                UbuntuShape {
                    width: parent.width
                    height: width * 1.44
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-da-03.jpg"
                    }
                }
                LevelText { text: i18n.tr("To score points, you must collect treasures left by the late Demon Lord, and take them to the store room. There are bonuses for getting rid of undesireable beings (though, to prevent a massacre, only the worst enemies give you a bonus score).") }
                LevelText { text: i18n.tr("Try to avoid getting killed, as you will lose points in doing so…") }
                LevelText { text: i18n.tr("Colossal Adventure Almost everything in Dungeon Adventure has a purpose, and you may get some idea as to what this is likely to be by EXAMINing an object.") }
                LevelText { text: i18n.tr("Resurrection is possible, and uses a machine which is initially situated very close to where you start the game. By default it only works while you remain close to this machine, and you must register your body pattern for it to work at all.") }
                LevelText { text: i18n.tr("The setting for Dungeon Adventure is a 'cave network' that was originally the headquarters for the Demon Lord. Some parts are now blocked off by rock falls, but it may help you to bear in mind the original functions (if you can guess them) of the accessible areas.") }
                LevelText { text: i18n.tr("In response to an overwhelming public request, there are several ways of carrying a lot of objects at once!") }
            }

            StorySection {
                sectionTitle: "Implementation"
                sectionOpen: implementText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: implementText.visible = !implementText.visible
                }
            }
            Column {
                id: implementText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("Dungeon Adventure is written in Level 9's own super compact language known as 'A-code'. To give you an idea of the compaction possible with this, a typical BASIC statement is equivalent to 4 bytes of A-code (approximately). A-code is also faster than BASIC.") }
                LevelText { text: i18n.tr("The text messages are compressed to about half their normal size for storage (and we get further size reduction by only having one copy of messages such as 'You are').") }
                LevelText { text: i18n.tr("Together, these methods of size reduction allow a huge amount of program and text to be squeezed into a small space.") }
                LevelText { text: i18n.tr("Dungeon Adventure is based around the D&D magic system as modified and used by the Cambridge University Wargames society in the mid 70s. All items and architectural features can be made under this system (or equivalent ones including extensions for demon-produced items), and if you are a D&D player you might like to work out how this can be done.") }
                LevelText { text: i18n.tr("Note that knowledge of this magic system will not provide any real help with solving the game, however, as it merely provides a theoretical framework.") }
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
                    text: i18n.tr("The Jewels of Darkness trilogy was bought to you by the following people:")
                    font.pointSize: units.gu(1.2)
                }
                LevelText {
                    text: i18n.tr("Game design and text:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Programming:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Mike, Nick and Pete Austin.") }
                LevelText {
                    text: i18n.tr("Pictures:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("James Horsler") }

            }


        }

    }
}
