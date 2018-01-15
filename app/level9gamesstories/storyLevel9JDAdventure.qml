import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: jewelsAdventure
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
                LevelText { text: i18n.tr("Hundreds of years have passed since the time of Colossal Adventure, and life has become peaceful and tranquil in all the surrounding lands.") }
                LevelText { text: i18n.tr("The last elves sailed for the West centuries ago, after the rescue of their fellows from the dungeons below Colossal Cavern. Indeed, nothing remotely interesting has happened for ages, and the ordinary folk lead peaceful, mundane and — for the most part — contented rural lives.") }
                LevelText { text: i18n.tr("At least this was true until a year ago. First there was a complete crop-failure in the northern provinces due to a drought of unprecedented severity. This was followed with attacks by maddened wild animals on storehouses and outlying farms, with the result that people fled south in their thousands.") }
                LevelText { text: i18n.tr("Then the troops sent north to keep order were ambushed and decimated by unseen enemies in a hundred coordinated attacks. And finally a vast army of orcs moved in.") }
                LevelText { text: i18n.tr("There was total panic.") }
                UbuntuShape {
                    width: parent.width
                    height: width * 1.43
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-darkness-02.jpg"
                    }
                }
                LevelText { text: i18n.tr("The combined armies of all the friendly kingdoms were mustered and marched north. As yet nothing has been heard from them but it is rumoured that they are beseiged near Amon Sul.") }
                LevelText { text: i18n.tr("Then a messenger appeared at the gates of Valaii. 'My Lord AGALIAREPT calls on you to surrender. Even now his armies are sweeping towards you and he cannot be defeated in battle. If you surrender, you will be permitted the boon of death with dignity: otherwise it will be much worse when you are defeated. You will have one week to decide.'") }
                LevelText { text: i18n.tr("The name AGALIAREPT is well known to the magicians in the city: it is that of a Demon Lord renounced for his ferocity and skill in battle — there is no doubt that he will be victorious and there seems to be no hope.") }
                LevelText { text: i18n.tr("There seems to be only one option open to the King, and he takes it. The leader of the Wizards Guild is hauled before the throne and issued with an ultimatum. 'We remember the favours bestowed on your guild over the years. Now is the time for you to repay them. You have one week to defeat the Demon Lord by magic. Fail and you will not live to see the fall of the city. That is all.'") }
                UbuntuShape {
                    width: parent.width
                    height: width * 1.37
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-aq-01.jpg"
                    }
                }
                LevelText { text: i18n.tr("You are an apprentice magician (as are all members of the Wizards Guild under 60 years old), and have taken courses in the three M's (Meditation, Mysticism and Moneymaking) but not yet used a spell in earnest. Thus you are amazed to be called before the Wizard's High Council.") }
                LevelText { text: i18n.tr("'The base of the Demon Lord's power has been discovered: He has taken up residence in the Black Tower, on the far edge of the world. Even now the full council is preparing an assault on its defences.'") }
                LevelText { text: i18n.tr("'But there is a second way. Perhaps one person, acting alone, could find the four Stones-of-the-Elements and use them to enter the tower. Then, the Amulet-of-Life could perhaps enable you to defeat the Demon. There is little chance of success… But will you do your duty and try?'") }
                LevelText { text: i18n.tr("You mumble a reply and are rushed from the room. As you leave you think that you hear the shouted order 'Next!'") }
                LevelText { text: i18n.tr("Shortly afterwards you are dressed in travel clothes and stand before the tele-portal. You step through and there is a sensation of rapid movement. As your vision clears you find that you stand at the end of a road, outside a small brick building.") }

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
                    height: width
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-aq-03.jpg"
                    }
                }
                LevelText { text: i18n.tr("Adventure Quest is a full scale adventure game with 225 individually described locations. You will have to solve a very large number of problems on your journey to the Black Tower and (perhaps) victory.") }
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
                    height: width
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-aq-02.jpg"
                    }
                }
                LevelText { text: i18n.tr("In Adventure Quest, you score points for getting nearer to the Demon Lord's Black Tower, and more for possessing any of the four Stones-of-the-Elements. There are bonus points available for entering the Tower itself and, of course, for winning the adventure.") }
                LevelText { text: i18n.tr("On the debit side, you lose points as time goes by, and lose more points if you manage to get yourself killed.") }
                LevelText { text: i18n.tr("Almost everything in Adventure Quest has a purpose: if only to keep you trying to work out its purpose!") }
                LevelText { text: i18n.tr("Use SAVE/RESTORE regularly. Adventure Quest involves an epic journey and you don't want to have to start all over again if you get killed. SAVE the state of play when you get past a significant obstacle and you can start from there if you have a later accident.") }
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
