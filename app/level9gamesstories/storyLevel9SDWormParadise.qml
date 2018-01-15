import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: siliconDreamsWiP
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Worm in Paradise")
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
                    text: i18n.tr("The Worm in Paradise takes place on the planet Eden, 100 years after the time of Snowball and Return to Eden . You are a citizen of the Enoch megapolis of Eden.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Human colonists arrived a hundred years ago and Eden now supports half a billion people. Most of them natives and some of them men. The population is distributed between a handful of domed cities, of which Enoch is the first and smallest.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("There is no contact between humans and the native fauna, so rumours of aliens are rife. It is said that flying saucers are regularly seen and that intelligent moles live in deep tunnels. But no proof has ever been produced.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * 1.37
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/worm01.jpeg"
                    }
                }
                Text {
                    text: i18n.tr("This game takes place during the reign of the third Kim, when Eden is run as a benevolent bureaucracy. It is truly a paradise for the silent majority, with peace, no crime, full employment (with a fifteen-hour week), good housing, more entertainment than anyone could watch etc. etc.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Of course, there's no way that anyone can challenge the system. But then, what right-thinking person would want to?")
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
                Label {
                    text: i18n.tr("Politics")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Governments can theoretically run at a profit, extorting no taxes from their citizens but getting income from such sources as fines for criminal offences and printing money (arguably a positive benefit in an expanding economy). This also involves tight controls on services and routine supervision of the citizens to catch trouble-makers. The Government of Enoch is run without taxes, and is underpinned by millions of robot servants who not only work hard, but are immune from corruption")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("Enoch Health Service")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Enoch hospitals make a profit, partly from the resale of body parts to ageing recipients and partly by charging for in-patient care. They also cut costs by:")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Column {
                    anchors.right: parent.right
                    width: parent.width - marginColumn * 2
                    spacing: units.gu(1)
                    Text {
                        text: i18n.tr("• Medicating the drinking water.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Making medical advice freely available via computer.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Minimising the time patients spend in hospital.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Rewards for being vaccinated and for reporting infectious people as a threat to public health. Disease spreaders would be fined.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Restricting mentally abnormal people while enabling them to do useful work if possible (they are the groups who do worst in Eden, as in many societies).")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                }
                Text {
                    text: i18n.tr("The result is the greatest good for the greatest number at the lowest price, but tough luck for the minority with expensive illnesses.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("Enoch Police")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("The Enoch Police Force also makes a profit. This entails: ")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Column {
                    anchors.right: parent.right
                    width: parent.width - marginColumn * 2
                    spacing: units.gu(1)
                    Text {
                        text: i18n.tr("• Fines rather than imprisonment.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Rewards to informants (How many expired tax disks would you see if the police paid a £10 reward for each one reported?)")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Prosecution of wealthy people for a change. They can afford fines.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Summary justice where possible to cut court costs. The accused is assumed guilty but can opt for trial at the risk of a greater penalty.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Extensive supervision, to detect crime efficiently.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Concealing crime, which increases police costs, is heavily penalised.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• Replacement of remaining taxes by fines (In 20th Century Britain, alcohol is taxed while some narcotics attract a fine. Everything is fined on Eden)")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                }
                Text {
                    text: i18n.tr("People are potentially immortal on Eden, provided they can replace body organs as these fail. Penniless criminals can easily raise the money to pay fines by cashing in their other assets...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("Work")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Robots run the Eridani E system, doing all the important work and most of the menial jobs. Whether humans are leisured aristocrats, or pets of the robots is difficult to tell. Humans are obliged by law to do some work and this involves:")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Column {
                    anchors.right: parent.right
                    width: parent.width - marginColumn * 2
                    spacing: units.gu(1)
                    Text {
                        text: i18n.tr("• extensive \"training\" schemes")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• many pen-pushing jobs")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• fraternities control access to the few good jobs")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("• status is the main concern, not money.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .48
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/worm02.png"
                    }
                }
                Label {
                    text: i18n.tr("Meanwhile, in space")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("The space robots have finished stripping the Eridani E starsystem, mining every asteroid and hollowing every moon.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The probes sent out from Eden form an ever- expanding sphere, three hundred light years across. They have already found a dozen habitable planets and colonisation has started.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("But the people of Eden have no part to play. Originally intended as a source for future colonists, their role is redundent. Machines have learnt how to build people on site (or, strictly speak ing, to grow them from ova). Spanners maketh Man.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("Afterword")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Machines evolved just as surely as any animal. They may not be able to reproduce unaided (nor can many forms of life) but they increase steadily in number and sophistication.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("In perhaps ten thousand years, machines have evolved from flints and wooden sticks to videos and Golf GTi 's. And evolution continues.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The Silicon Dream Trilogy postulates autonomous robots, each equipped with simple tools and a million blueprints. A robot would travel through space and select any convenient asteroid. There it would land and build with local materials, just like a human castaway. But where Crusoe built a house, the robot would construct a small factory for tools and mining machinery Then better tools, simple robots, better factories, better robots, and eventually a production line for robots like the one that started it all. Lots of them.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Imagine trillions of robots, coasting through the Galaxy to colonise every solar system. This is the situation at the time of The Worm in Paradise. Now let millenia go past. The Galaxy could be colonised by inconceivably advanced robots. It seems almost inevitable.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Our Galaxy is very big and billenia old. Our sun is a fairly ordinary star. Probably there are other intelligent beings out there, some more advanced than us. I wonder where, or who, their robot colonists are?")
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
                    height: width * .3
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/worm03.png"
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
                    Text {text: "EAST"}
                    Text {text: "STAND UP"}
                    Text {text: "TAKE HELMET"}
                    Text {text: "OPEN DOOR"}
                    Text {text: "PUSH RED BUTTON"}
                    Text {text: "WEAR IT"}
                    Text {text: "EAT PIE"}
                    Text {text: "DROP THE CARD"}

                }

                Text {
                    text: i18n.tr("EXAMINE ALL BUT THE HELMET, DUMMY AND LEOTARD AND GO EAST.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("TAKE PLUG AND PLUG HOLE.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("STAND UP. SOUTH, E THEN EXAMINE TREE AND CLIMB IT.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("Ordinary adventures use more words in descriptions than you can use in commands. For example, you might be \"standing in a bed of bright flowers beside a stone wall\" and try to examine the flowers. A typical response might be along the lines of \"I don't understand\". The Worm in Paradise does rather better, as you'll discover.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("However, it still pays to keep commands simple and experiment to find the best words to use. Good adventuring!")
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
                    text: i18n.tr("You will score points for finding out about the city of Enoch, and for progress within it. Your prime objective is to obtain money, and then to become a member of the governing party. Should you get the chance to save the world, it is suggested that you make an attempt.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("You will lose points for such things as being recycled (better known as dying!).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

                Text {
                    text: i18n.tr("Use SAVE and RESTORE regularly throughout the game, as well as RAM SAVE/RAM RESTORE and OOPS if they are available on your version of the trilogy.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("EXAMining objects will provide helpful clues to solving many of the puzzles you will encounter.")
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
                    text: i18n.tr("Mike and Mike Austin")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Graphics:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("James Horsier")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("To your Micro:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Nick Austin")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Delayed by:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Adrian Mole")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Cover Design:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Margaret Austin")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Cover Picture:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Godfrey Dowson")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Production")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Simon Stable, A & M Litho, Option A, etc.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Tested by:")
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
                    text: i18n.tr("Packed by:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Bernard Wise")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
            }
        }

    }
}
