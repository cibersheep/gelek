import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: jewelsColossal
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Colossal Adventure")
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
                sectionTitle: "Introduction"
                sectionOpen: emeraldIntroText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: emeraldIntroText.visible = !emeraldIntroText.visible
                }
            }
            Column {
                id: emeraldIntroText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("Welcome to the adventure world of the Jewels of Darkness.") }
                LevelText { text: i18n.tr("This adventure is a trilogy of the classic Level 9 adventures Colossal, Quest, and Dungeon. The trilogy retains the acclaimed quality of the original versions, but now stretches the imagination even further with the addition of graphics, extended text descriptions, an extremely flexible English-language sentence interpreter, and a whole host of user-friendly features which allow the player a more versatile means of communication.") }
                LevelText { text: i18n.tr("For the player new to adventure games, the first part of this text will explain how to use the keyboard to enter the magical world of orcs, dragons, dwarves and fabulous treasures.") }
                LevelText { text: i18n.tr("The seasoned adventurer will find the first section of the text a quick and easy guide of how to use the extensive features available.") }
                UbuntuShape {
                    width: parent.width
                    height: width * .6
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-ca-03.jpg"
                    }
                }
                LevelText { text: i18n.tr("Scenarios have been included to set the scene for each adventure in the trilogy, and point you roughly in the right direction. Further information on what your objectives might be have been included in the 'Scoring and Hints' sections.") }
                LevelText { text: i18n.tr("Main menu contains the novella <i>The Darkness Rises</i> by Peter McBride, which will take you even deeper into the fantasy world of the adventurer in the Jewels of Darkness.") }
                LevelText { text: i18n.tr("Good fortune on your quest, and remember that to succeed in your quest, you must show courage, determination, skill, cunning, and have a brain the size of a planet!") }
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
                UbuntuShape {
                    width: parent.width
                    height: width * .7
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-ca-04.jpg"
                    }
                }
                LevelText { text: i18n.tr("Colossal Cavern is a name of power, whispered in dark corners, embodying incredible riches and untold danger. Sensible folk hold this cave to be a myth, the product of fevered imaginations - but every year a handful of people set out to find it, driven by necessity, or by overwhelming greed.") }
                LevelText { text: i18n.tr("Most return empty-handed with tales of fruitless wanderings, or lies about the dangers faced: volcanos, dragons, gigantic snakes and the like. But some have never returned, and speculation holds that they are the successful ones who have found the cave and perished - or maybe used the enormous wealth from it to found great empires in far-off lands where they live in luxury.") }
                LevelText { text: i18n.tr("Thus it is a unique event when a travel-stained warrior enters the tavern where you are sitting one evening, pays the inn-keeper with an absurdly high value gold coin, and over his drink claims that he has visited Colossal Cavern - and escaped with his life!") }
                LevelText { text: i18n.tr("The other drinkers flatly disbelieve him, 'thief' and 'mercenary' are two of their more flattering suggestions to explain his wealth, but you are not so sure - for he has a haunted look and refuses to discuss his exploits. Thus, when you realise that an ambush is being planned to deprive the stranger of his money (and life), you lead him out to safety by a back route.") }
                LevelText { text: i18n.tr("'A thousand thanks!', he exclaims when the sounds of pursuit finally die away, 'May the Gods smile upon you for your deed tonight! But I fear that your friends may seek revenge if you return.'") }
                LevelText { text: i18n.tr("'Thus, to reward you for your valour, I will give you the most valuable treasure that I own ... the location of Colossal Cavern!', and he presses a crumpled scrap of paper into your palm. Frankly, you were expecting hard cash - and a lot of it - but he looks like a good man in a fight, so you accept the meagre reward and even manage to shake his hand warmly.") }
                UbuntuShape {
                    width: parent.width
                    height: width
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-ca-02.jpg"
                    }
                }
                LevelText { text: i18n.tr("Despite your natural suspicions that the map may be a fake, it would be foolisli to stay and face the wrath of your fellows, so you set out to follow it. And the map turns out to be genuine! It leads you through uncharted lands: over mountains, through forests and skirting deserts - always. avoiding the inhabited places of the earth - until one day's journey would bring you to Colossal Cavern itself.") }
                LevelText { text: i18n.tr("Then disaster strikes. You are leaning on the wall of a building from which a river emerges and follows the road south. To the north is open country and all around is dense forest. As you attempt to decipher the next part of the map, a freak gust of wind lifts it from your hand - and carries it into the water. Rescue is not possible for the river sucks it down instantly, and in any case you cannot swim.") }
                LevelText { text: i18n.tr("It is now up to you to find the Cavern, enter it and return with its treasure. And, as you stand thinking, you remember a scrawled note on the margin of the map:") }
                LevelText {
                    text: i18n.tr("'Warning, Magic works in the Cavern!'")
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
                    height: width * 1.38
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-ca.png"
                    }
                }
                LevelText { text: i18n.tr("Colossal Adventure is a complete, full scale version of the original classic mainframe game 'Adventure', possibly the most popular and addictive computer game ever produced. You will encounter all of the creatures, treasures and locations that you will have seen hinted at in readers' letters to computer magazines.") }
                LevelText { text: i18n.tr("Just to keep you on your toes if you have played another such adventure, one of the treasures has been moved and a vitally needed object has been hidden, but it is an entirely faithful implementation apart from this.") }
                LevelText { text: i18n.tr("But when you qualify for the end-game by finding all of the treasures, it is onother matter entirely. The standard end-game is rather limited, with only two locations, so we have added a cornplete new, unique end-game to Colossal Adventure: with over 70 locations! Don't feel let down when you've solved the first part of the game - the play continues!!") }
            }

            StorySection {
                sectionTitle: "Game Instructions - Commands"
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
                        source: "../../../../graphics/jd-ca-05.jpg"
                    }
                }
                LevelText { text: i18n.tr("The <i>Jewels of Darkness</i> can be played as three entirely separate games, if you wish. However, the only way to obtain a maximum score and the title of 'Supreme Adventurer' is to complete them in the order <i>Colossal Adventure, Adventure Quest, Dungeon Adventure,</i> carrying your score across from one adventure to the next (when you finish <i>Colossal Adventure</i> with a maximum score, you will be told how to carry your score across).") }
                LevelText { text: i18n.tr("Each adventure has its own scoring system and objectives, and these are listed below, along with a few pointers to get you going in the right direction.") }
                LevelText { text: i18n.tr("You score points for finding fabulous treasures, but only get the full points for each treasure by carrying them back to the small brick building near the start. You also score points for entering the <i>Colossal Cavern</i> (when and if you find it!). You will lose points if you are killed. A number of bonus points can be obtained, and one of these is for not using SAVE/RESTORE.") }
                LevelText { text: i18n.tr("To reach the <i>end-game,</i> and so have the opportunity for high scoring, you must find all the treasures. If you can't get to the end-game, there must be at least one treasure that you have missed.") }
                LevelText { text: i18n.tr("There are many magic words in <i>Colossal Adventure,</i> and one in particular is needed to get at one of the treasures. To make it possible to guess this, it is included in one of the room descriptions.") }
                LevelText { text: i18n.tr("Almost everything in <i>Colossal Adventure</i> has a purpose.") }
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
                LevelText { text: i18n.tr("You may be wondering how <i>Colossal Adventure</i> can be crammed into only 32K (in its original version), after all typical adventures of this size have only a third as many rooms etc.") }
                LevelText { text: i18n.tr("<i>Colossal Adventure</i> is not written in ASSEMBLER or BASIC, either of these would have made it too big - and BASIC would also have been too slow. Instead it is written in a super-compact language known as 'A-CODE ', which is specially designed for writing adventure games.") }
                LevelText { text: i18n.tr("Similarly, the text messages output by the program have been compressed by a 'data compiler' to a fraction of their usual size. This also stops you peeking at the program to find out what might happen next!.") }
                LevelText { text: i18n.tr("Together, these two means of size reduction - combined with tight coding - allow Adventure Quest to run in only 32K.") }
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
                UbuntuShape {
                    width: parent.width
                    height: width
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/jd-ca-06.jpg"
                    }
                }
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
