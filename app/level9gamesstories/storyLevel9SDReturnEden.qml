import QtQuick 2.4
import Ubuntu.Components 1.3
import "../components"

Page {
    id: siliconDreamsRTE
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Return to Eden")
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
                id: siliconCover
                width: parent.width * .7
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-sd.jpg"
                }
            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    id: snowballHistoryTitle
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Introduction")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: snowballIntroText.visible = !snowballIntroText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: snowballIntroText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: snowballIntroText.visible = !snowballIntroText.visible
                    }
                }

            }
            Column {
                id: snowballIntroText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                Text {
                    text: i18n.tr("<i>Return to Eden</i> is Level 9 Computing's sixth adventure and has taken the usual enormously long time to produce. It's the second <i>Silicon Dream</i> adventure and starts where <i>Snowball</i> left off (though you don't need to have played Snowball first).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("You play Kim Kimberley and have just saved the interstar transport. Snowball 9, from disaster. Unfortunately the control room vidcams show a different story. Kim seems to enter, hurl a bomb and the room is engulfed in flames. The evidence is damning.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Forced to flee, you just reach a stratoglider life-boat before the waldroids close in. And one hour later you become the first human to land on planet Eden.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Snowball 9 is in orbit, crewed by people who believe you to be a murderer. The only civilisation on Eden is a robot city far to the east. And the planet is reportedly populated by furiously-hostile beings of every kind: only ceaseless vigilance and hi-tech weaponry prevent them over-running the city.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Now you know enough to start. Good luck!")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

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
                        onClicked: backgroundText.visible = !backgroundText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: backgroundText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: backgroundText.visible = !backgroundText.visible
                    }
                }

            }
            Column {
                id: backgroundText
                visible: false
                width: parent.width
                spacing: units.gu(1)

                Text {
                    text: i18n.tr("Snowball 9 started its journey to the stars from the EEC's Ceres base, one of the fifty giant colony starships launched in the 2190s. It carries the first colonists from Eden, only habitable planet in the Eridani A starsystem. (\"Eden\" is a shortform of EEri-DAN-i with sell-appeal).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Cocooned in a sphere of protective ice, the ship sped through the void, carrying its hibernating passengers to their new world. The journey took a century.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Meanwhile, robot probes had already colonised the Eden starsystem in their own way. Space cities trawled asteroids for minerals to reproduce themselves, moons were pierced with accelerators, thousands of daughter probes were fired towards nearby stars and, the lowest priority task, a city was built on Eden.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("At first, city building went well, but gradually problems accumulated, for Eden was already occupied. Not by sentient beings, but by a myriad plants and a host of cunning creatures. Eventually these adapted to fight back...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Normally the robots would have holocausted the surrounding area and solved their problems once and for all. But they were preparing for fragile human colonists, vulnerable to poison and radiation.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("So a wall was built and the war stabilised. Any machine venturing into the jungle was crushed and no living thing was allowed to reach the city or the Earth-plant farms beside it. Losses were enormous on both sides, but the robots were satisfied. Inside the wall, they work to perfect the city for the arrival of its new owners.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .695
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/rte-coverart.png"
                    }
                }
                Label {
                    text: i18n.tr("Eden")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Eridani A is a binary starsystem of a red giant and smaller sol-type star (though even this is significantly bigger than Earth's sun). Eden orbits this latter, yellow star.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("It is a most unusual planet: Earth-like and habitable without Terraforming. Its surface is mostly water and climatic extremes are rare.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Eden's variety of plant-life is legendary and was the source of a host of documentaries back home until the plants became too hostile to scan. Ecologists speculate that it was seeded by long-vanished aliens.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Unfortunately, you know less about Eden than almost any schoolchild back on Earth. The only documentation in the stratoglider is an outdated travel guide containing artists' impressions of the scenery (underneath).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .72
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/rte-01.jpg"
                    }
                }
                Label {
                    text: i18n.tr("Snowball")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Snowball 9 is carrying the first 2 million sleeping colonists for Eden and was rescued from flying into the sun in the previous Silicon Dream adventure. The Snowball is now back on course, though several months ahead a schedule, and has just entered orbit around Eden.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("However, the Snowball had been sabotaged and could not be completely repaired. Every signalling device was smashed and there were more important things to do than to jury-rig a radio. the crew have no contact with events outside.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Once in orbit a trial was held. The mempak record from the control room was fire-damaged but most interesting. It seemed to show Kim trying to destroy the ship. Kim was found quilty: unjustly, as it happens, but no one knew what really happened. The sentence was death.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Dragged to the life-boat hanger to suffer vacuum-exposure, Kim had one last chance. Amazingly it worked: Kim broke free, reached a Stratoglider and managed to launch it.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The game starts as this life-boat lands on Eden. As Kim, you have escaped a swift fate but your problems are far from over. The crew of the Snowball feel they have a score to settle.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("City")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("The robot city, Enoch, is on an equatorial shore in Eden where four rivers meet.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("From the outside, all that can be seen is a 3 klom climate-conditioning dome, surrounded by a green moat of farmland and an outer defensive wall. Gun-ships drone round the dome like wasps, swooping low over the surrounding jungle.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("Inside, you'd think that you were on Earth. A single yellow sun shines through fluffy white clouds in the sky. Green parkland surrounds huge appartment-pyramids and the ground hums with a comforting mechanical buzz.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("Enoch provides all the comforts of home: only the people are missing.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("But all is not well. The city fathers have been fighting the jungle for decades and the city is beginning to pay the price. Its foundations are broken by a million root-cracks and vermin infest the lower-levels. The dome is repeatedly-patched and spores have attacked the buildings within. The city still looks new, but impressions are misleading.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("And, what may be worse, is that the robot army has been fighting too long. Their responses are too ingrained. They have problems in recognising the enemy.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("Events at the start of this game will reinforce their paranoia.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .518
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/rte-pcw.png"
                    }
                }
                Label {
                    text: i18n.tr("Space Base")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("The city of Enoch is linked to the space factories via a colossal space station in syncro-orbit above it. Physical connection is by sky-hook (ie space-elevator) and comlink is by laser. These integrate the city into the overall Eridani A presence.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The space station is, like the orbiting factories, constructed from an iron asteroid a few kloms wide. This mass provides the inertial stability required for space-elevator operation: raising or lowering hundreds of tonnes of material between orbit and the planet's surface.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Communication is not the only function of the space station, however. It is also responsible for planetary defence...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("So, when the Snowball 9 enters orbit off schedule and without identifying itself, then ignores all radio messages, and then threatens the city, the space base has a problem. Further attempts are being made to contact the \"alien\" craft but when these fail a decision must be made: the robots can not risk a hostile presence in orbit.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("Space Cities")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Robots have been making all the important decisions since the late 2100s (if not before) and they run the colonisation program. Humans view the whole matter as an adventure on which to base interminable soap-operas.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The space robots are doing really well. They are rapidly infesting every chunk of rock in the Eridani A system and their manufacturing potential is enormous. It's easy when you have access to all Earth's knowledge. Their priority is further expansion through the galaxy.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The first probes are nearly 100 light-years away by now, and several promising planets have been found. The controlling computers are only waiting for the first generation of colonists to be born on Eden before shipping them out.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("It would all be a lot easier if people could live all their lives in space, of course and the space cities are working on this. They plan to use Eden's sister-planets as space craft. Acceleration would be meagre, but would be constant and such a starship could travel for ever...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Absorbed in their projects, the space cities have little interest in Eden for the time being. You'll get no help from them.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }


            }
            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Instructions")
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

                UbuntuShape {
                    width: parent.width
                    height: width * .842
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/rte-02.jpg"
                    }
                }
                Text {
                    text: i18n.tr("The program asks \"What now?\" whenever it expects you to enter a command. Simply type an English phrase to tell it what to do and press the RETURN (or ENTER) key. The program will act on your request, then ask for the next command and so on.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The game knows an extensive vocabulary of English and futuristic words. It scans your command, picking out the words which it recognises and 'guessing' the meaning from these. Only two or three words are used from each phrase so it pays to keep things simple.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Words can usually be abbreviated (e.g. NORTH to N and NORTHEAST to NE) and, to help you get started, some possible instructions are summarised below:")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Grid {
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    columnSpacing: units.gu(4)
                    rowSpacing: units.gu(.5)
                    columns: 2
                    Text {text: "INVENTORY"}
                    Text {text: "SCORE"}
                    Text {text: "LOOK AT COMPASS"}
                    Text {text: "OPEN DOOR"}
                    Text {text: "EXAMINE ANTS"}
                    Text {text: "QUIT"}
                    Text {text: "WEAR FIG-LEAF"}
                    Text {text: "DROP COLD LEAF"}
                    Text {text: "TAKE WATCH"}
                    Text {text: "PULL LEVER"}
                    Text {text: "LOOK AROUND"}
                    Text {text: "EAT BERRY"}
                }
                Text {
                    text: i18n.tr("AGAIN (or A) repeats the previous command.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("IT means the previous object. E.g: LIGHT LAMP and then EXAMINE IT")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("There are no \"treasures\" in <i>Return to Eden.</i> Instead, you score points for doing things which are steps on the way to solving the game.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("You lose points for getting killed.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

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

                Text {
                    text: i18n.tr("There are no \"treasures\" in <i>Return to Eden.</i> Instead, you score points for doing things which are steps on the way to solving the game.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("You lose points for getting killed.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("The initial object of <i>Return to Eden</i> is to get into the new city of Enoch. Once you  have achieved this, you must stop the Eden robots from destroying the 'alien' Snowball 9 craft.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
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
                Text {
                    text: i18n.tr("Pete Austin")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Implementation:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Mike Austin with Chris Queen")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Pictures  (some versions only):")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Tim Noyce")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Adventure System:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Mike, Nick & Pete Austin")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Booklet:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Pete Austin & Yannis Kassumis")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Typesetting, etc:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("A & M Litho")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Inspiration:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("<i>A Spell for Chamelion,</i> Piers Anthony (Del Rey)")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("<i>Deathworld 1,</i> Harry Harrison (Sphere)")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("<i>Hothouse,</i>  Brian Wilson Aldiss (Sphere)")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("<i>I, Robot </i>, Isaac Asimov (Panther)")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("<i>Broot Force</i> (from <i>The Steam-Driven Boy</i>), John Sladek (Panther)")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

            }
        }

    }
}
