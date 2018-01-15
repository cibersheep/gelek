import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: siliconDreamsSb
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Snowball")
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
                Label {
                    text: i18n.tr("Greetings, adventurer!")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Prepare to enter the future worlds of <i>Silicon Dreams,</i> where Earth Man has started to colonise the outlying reaches of distant galaxies.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("This adventure is a trilogy of <b>Level 9</b>'s adventures <i>Snowball, Return to Eden,</i> and <i>Worm in Paradise.</i> The trilogy retains the highly acclaimed quality of the original versions, but now stretches the imagination even further with the addition of graphics, extended text descriptions, an extremely flexible English-language sentence interpreter, and a whole host of user-friendly features which allow the player a more versatile means of communication.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .67
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/sb-coverart.png"
                    }
                }
                Text {
                    text: i18n.tr("For the player new to adventure games, the first part of this text will explain how to use the keyboard to enter the futuristic age of robots, spacecraft, inflatable dolls and cute furry animals with lousy senses of humour.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Scenarios have been included to set the scene for each adventure in the trilogy, and point you roughly in the right direction. Further information on what your objectives might be have been included in the \"Scoring and Hints\" section.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("In the main menu you will find the novella \"Eden Song\", by Peter McBride, which will take you even deeper into the fantasy world of Silicon Dreams.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Good fortune on your quest, and remember that to succeed, you must show courage, determination, skill, cunning, and have a brain the size of a fairly large solar system...!")
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
                    text: i18n.tr("Kim Kimberley")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: kimKimberlyText.visible = !kimKimberlyText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: kimKimberlyText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: kimKimberlyText.visible = !kimKimberlyText.visible
                    }
                }

            }
            Column {
                id: kimKimberlyText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                Text {
                    text: i18n.tr("Kim is 1.7 metres tall, weighs 55 kilos, is fairly intelligent, athletic, and has brown eyes and fair hair. Now aged 22, or 25, or 131 years... depending on how you calculate these things.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Born on September 29th, 2172 AD, Kim was raised by the Hampstead Creche. This was a peculiar place, set amongst decaying buildings, and heavily reliant on a mix of relationship-engineering, behaviour conditioning and Hell-Fire religion. It was finally closed in 2185 for breaches of the Android Protection Acts. It seems to have done Kim little harm however, though possibly contributing to a tendency towards introversion.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Then to Milton Keynes School of Life: a fine, residential establishment situated (despite its name) in Malta. The staff were, in effect, Kim's family. (This type of situation, by the way, was far from unusual in the late 22nd century. Advances in entertainment and travel, plus the sexual revolution resulting from A.I. partho and cloning techniques, made a family up-bringing the exception.)")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .6
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/ship.jpg"
                    }
                }
                Text {
                    text: i18n.tr("Kim returned to England for National Service before progressing to Oxford. Kim proved a good student, and established many close relationships, though nothing permanent. It was during National Service that the event central to the Snowball mission took place, though it went unremarked at the time. Kim was approached, discreetly, to do security work. Initially, this simply involved training and occasional surveillance of possible subversives, but it soon developed into counter-espionage.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Then, when the Snowball project got under way, Kim was approached to volunteer for the stars. The Snowball craft were as near automatic as possible, and carried a trained crew in case anything went wrong. But suppose something happened to the crew? What was needed were one-or-two trained people, carried without the crew's knowledge who could emerge and take over if something went really wrong.")
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
                    text: i18n.tr("Terran Expansionary Phase, 2120-2210")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("The late 21st Century saw a great increase in space travel within the solar system.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Fusion power was not yet feasible, conventional fuel sources were close to running out and the energy needs of the industrial nations were ever-increasing. The solution lay in space. Solar reflectors, if made large enough, could easily concentrate any amount of energy and beaming it back to Earth is simplicity itself.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("What was not simple was to transport enough material for thousand-mile reflectors into space. Indeed, it was much more efficient to use what was already there... and thus the first accelerator chains were set up to boost asteroid material from beyond Mars into Earth's orbit.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .5
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/sb-02.png"
                    }
                }
                Text {
                    text: i18n.tr("By 2120, thirty percent of Earth's energy came from the space reflectors and the proportion was steadily rising. To supply the colossal requirements of the orbital industries, the whole Solar System was linked by accelerators.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Then workable fusion power was perfected, and it was very cheap.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The whole space sector of the economy was redundant. A lot of politicians risked looking very silly indeed.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Thus a use for the accelerators, space reflectors and orbiting factories had to be found, and Stellar Colonisation was it. A lot of voters/party members read SF, after all, and colonies are always popular (at first, anyway).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("So the accelerators were linked up and fired out of tens of thousands of small exploration probes in all directions. These robots would coast through space with only one mission — as each flashed past a star it would report back the existence of Earth-sized planets. Unmanned, they could continue for centuries.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .93
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/snowball03.png"
                    }
                }
                Text {
                    text: i18n.tr("Ten years behind came larger survey craft, each clutching a great ball of ammonia ice to power its fusion motor. If one was lucky enough to be following a successful exploration probe, it had just enough time to decelerate (from its coasting speed of 0.3 C) before reaching the star. Once there it would scout the system and if there really were habitable planets (or even ones requiring controlled climate domes as long as the ground was solid) it would radio the information back to Earth.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Then, while waiting for the first colonists to join it, decades later, the survey craft would proceed to prepare a world for them to live in.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("First came a long, slow, painstaking period of asteroid mining — assembling the necessary materials to build its first robot-production line. The first robot would take ten or twenty years, the next ten or twenty days and the thousandth would take minutes.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("By a process of careful boot-strapping, highly-intelligent space factories were built, as well as colossal dish receivers to collect the constant stream of technological data from Earth.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Next came the landings on the target planet, city building and making ready for the colonists. And, at the same time, preparations for launching more probes and survey craft.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The Terran Expansionary phase was scaled down as time passed, and eventually stopped — as far as Earth was concerned. Domestic political pressures changed, and politicians became more concerned with the quality of life for the so-called Free Nations than with space exploration. But the starships were in flight, and the foundation of the Human Empire was assured.")
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
                    text: i18n.tr("Game Scenario")
                    font.bold: true
                    font.pixelSize: units.gu(2)
                    color: darkColor
                    MouseArea {
                        anchors.fill: parent
                        onClicked: scenarioText.visible = !scenarioText.visible
                    }
                }
                Icon {
                    width: units.gu(2)
                    height: width
                    name: scenarioText.visible ? "down" : "next"
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: scenarioText.visible = !scenarioText.visible
                    }
                }

            }
            Column {
                id: scenarioText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                Label {
                    text: i18n.tr("Snowball")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("You play Kim Kimberley, secret agent extraordinaire.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Your mission: to safeguard the interstar transport, Snowball 9, as a last resort following catastrophic accident or sabotage.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Thus when your modified freezer-coffin wakes you with the Snowball still in transit, you know that something must be very wrong. You're weakened and disorientated from lengthy hibernation, but the fate of two million passengers is in your hands!")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Snowball 9 started its journey to the stars from the EEC's Ceres base, one of fifty colony starships launched in the 2190s. It carried the first colonists for Eridani E.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("First to be despatched were the ten giant passenger disks, rotating ponderously to provide internal gravity. Each was towed gently by a cluster of small tugs and floated into the void with 200,000 sleeping colonists on board.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Then the Snowball's engine unit followed, accelerated rapidly by the spectacular flares from its four great fusion motors. Like previous launches, and the link-up with the disks some weeks later, this was holo'd worldwide (though few people bothered to watch).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Looking like a necklace of sparkling beads, Snowball 9 headed out into deepest space, and into a century of obscurity.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("But the major part of the launch was yet to come — and it happened quietly, out of the glare of publicity. The chains of accelerators, beyond Pluto, burst erratically into life throughout the following three years: firing ten-tonne blocks of ammonia-ice at precise speeds after the receding craft. Once reeled in by Snowball’s skyhooks, the ice was built into a huge hollow shell around the linked passenger disks. When complete, this shielded the disks during the voyage; until the ice was finally needed as fuel for the ravening fusion drives.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The ice-shell — which gave the Snowball series its name — formed most of the mass of the completed craft. Without the accelerator/skyhook system of \"in flight refuelling\", realistic-time interstellar voyages would not have been feasible.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("As with life, the first thirty years of Snowball 9's journey were the most interesting. The computers and crew had to catch as much ice as possible before it flew past. But even then, there were never more than eight active crew at a time.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Then the starship was left to coast until its destination was near, the crew hibernating with the passengers. A brief flurry of activity to start deceleration, and back to autopilot. Even allowing for the great resilience, and hence low sophistication of the Snowball's machine intelligences, they are quite capable of running everything unaided. No further crew members were woken until a year from journey's end.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The plan from here on was to continue deceleration, shed the remains of the ice-shield (by now eaten away to insubstantiality by the need for fuel), and dock with the target planet, Eden, in geostationary orbit. Finally, the passengers would land by glider-shuttle... a process taking many years to get everybody down, and necessitating the retrieval of grounded gliders by sky-hook: the same gliders being used many times. This was the plan, anyway...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                UbuntuShape {
                    width: parent.width
                    height: width * .93
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/snowball02.png"
                    }
                }
                Text {
                    text: i18n.tr("Meanwhile, in the Eridani star system, the robot descendants of the original survey craft that scouted Eden have been hard at work. The original crude waldroids, directly controlled form the survey craft's computers, were good for little other than manual routine work. But they have long been superseded by a host of specialised robots: highly intelligent and suitable for any task.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Indeed, in the outer reaches of the planetary system the first accelerator chains are already being built. It will not be long before colonists can leave Eden for remoter stars.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The colonists have taken over a hundred years to reach Eden, but the robots can obtain information and programming at light speed. They are immeasurably ahead of their future 'masters’ in knowledge and technology. Even if Snowball 9 arrives safely, it is by no means certain that the passengers will be able to cope with the sudden outdating of all their experience.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The physical well-being of the colonists is, however, assured by the robot's diligent work. Condo's, paveways, PVT's, holo nets, pre-ordained work... everything necessary for civilised life will be provided. After all, why risk further disruption of the social fabric resulting from a manifestation of the so-called \"pioneer spirit\"?")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("All you, as Kim Kimberley have to do, is to rescue the Snowball 9.")
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
                Text {
                    text: i18n.tr("Silicon Dreams uses an advanced command language interpreter (called a 'parser') that understands both simple one or two word commands and complex multiple command sentences. This chapter is split into sections describing ways in which to communicate with the program.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("i. Movement")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    font.bold: true
                }
                Text {
                    text: i18n.tr("To move around, use the following commands:")
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
                    Text {text: "Word"; font.bold: true; width: parent.width * .5}
                    Text {text: "Abbrv."; font.bold: true}
                    Text {text: "NORTH"}
                    Text {text: "N"}
                    Text {text: "NOTHEAST"}
                    Text {text: "NE"}
                    Text {text: "EAST"}
                    Text {text: "E"}
                    Text {text: "SOUTHEAST"}
                    Text {text: "SE"}
                    Text {text: "WEST"}
                    Text {text: "W"}
                    Text {text: "NORTHWEST"}
                    Text {text: "NW"}
                    Text {text: "UP"}
                    Text {text: "U"}
                    Text {text: "DOWN"}
                    Text {text: "D"}
                    Text {text: "INSIDE"}
                    Text {text: "IN"}
                    Text {text: "OUTSIDE"}
                    Text {text: "OUT"}
                    Text {text: "CLIMB"}
                    Text {text: "-"}
                    Text {text: "JUMP"}
                    Text {text: "-"}
                    Text {text: "CROSS"}
                    Text {text: "-"}
                }
                Text {
                    text: i18n.tr("The EXITS command will list any likely exits. ")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Label {
                    text: i18n.tr("ii. Actions")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    font.bold: true
                }
                Text {
                    text: i18n.tr("The majority of commands that you will use are actions, such as picking up objects, opening doors, lighting lamps, etc. Here are some examples of the most common action commands.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Grid {
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    columnSpacing: units.gu(4)
                    rowSpacing: units.gu(1)
                    columns: 2
                    Text {text: "Command"; font.bold: true; width: parent.width * .4}
                    Text {text: "Meaning"; font.bold: true; width: parent.width * .4}
                    Text {text: "GET THE SPANNER"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Pick up the spanner from here."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "DROP THE BLACK PISTOL"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Leave the black pistol in this room."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "GIVE THE DRINK TO THE ROBOT"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Refresh the robot with my drink."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "PUSH THE RED BUTTON"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Press only the button that is red."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "WEAR HELMET"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Put on the helmet that I'm carrying."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "OPEN THE DOOR"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Open the door (!)"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "CUT THE TUBE WITH THE SCALPEL"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Sever the tube using my scalpel."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "EXAMINE THE COFFIN"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Take a good look at the coffin."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "INVENTORY (INV)"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "What am I carrying?"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "SCORE"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "How well am I doing?"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "QUIT"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Abandon your quest."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "AGAIN (A)"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                    Text {text: "Repeat the last command entered."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
                }
                Text {
                    text: i18n.tr("You can use punctuation, or the word AND to string together multiple commands, for example...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("OPEN THE DOOR. GO SOUTH AND CLOSE THE DOOR.GO EAST AND PULL THE GREEN LEVER.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The parser also understands the words ALL and EVERYTHING to mean everything moveable that it can see. This is an extremely useful time-saving feature. In most other adventures, to pick up a number of objects, you would have to do the following...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Column {
                    width: parent.width
                    spacing: units.gu(.3)
                    Text {
                        text: i18n.tr("GET RATCHET")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("GET BOLT")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("GET CLOTH")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                }

                Text {
                    text: i18n.tr("Without using the ALL command, Silicon Dreams would allow you to use...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("GET RATCHET, BOLT AND CLOTH")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("But this can be abbreviated even more simply to...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("GET ALL")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Another useful feature is the ability to refer to the last used item/object as IT, for example...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("EXAMINE THE BLUE SWITCH AND PRESS IT")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("or...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("GET THE GREEN FLASK AND FILL IT WITH WATER.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Exceptions are also understood by the parser, such as...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("TAKE EVERYTHING BUT THE COMPASS")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("or...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("EXAMINE ALL EXCEPT THE WATCH")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Using all of these command structures allows you to type in near-English sentences of great complexity, such as...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Column {
                    width: parent.width
                    spacing: units.gu(.3)
                    Text {
                        text: i18n.tr("EXAMINE ALL BUT THE WATCH, SPANNER AND TORCH AND GO EAST.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("DROP EVERYTHING BUT THE FLASK. OPEN IT AND GIVE IT TO THE ROBOT.")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                    Text {
                        text: i18n.tr("GET THE KEYS. OPEN THE SLIDING DOOR AND RUN NORTHWEST THEN INVENTORY. WHAT IS MY SCORE?")
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    }
                }
                Label {
                    text: i18n.tr("iii. Special commands")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    font.bold: true
                }
                Text {
                    text: i18n.tr("There are a few commands that are neither movement or actions. Two of these affect the way the adventure is presented to you; they are...")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Grid {
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    columnSpacing: units.gu(4)
                    rowSpacing: units.gu(1)
                    columns: 2
                    Text {text: "WORDS"; width: parent.width * .3}
                    Text {text: "Turn off the pictures."; width: parent.width * .5}
                    Text {text: "PICTURES"; width: parent.width * .3}
                    Text {text: "Turn them back on again."; width: parent.width * .5}
                }

                Text {
                    text: i18n.tr("A HELP feature has been included, to give you a clue at certain points within the three games. The HELP command is generally useful in the locations around the start of each adventure to get you on your way.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("The other commands are concerned with saving and restoring your game position. Full instructions will be displayed on the screen where necessary. Those marked with an asterisk may not be available on all versions.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Grid {
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    columnSpacing: units.gu(4)
                    rowSpacing: units.gu(1)
                    columns: 2
                    Text {text: "SAVE"; width: parent.width * .3}
                    Text {text: "Stores game position to your filing system."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "RESTORE"; width: parent.width * .3}
                    Text {text: "Loads a saved game position. Lenslok might be needed."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "RAM SAVE*"; width: parent.width * .3}
                    Text {text: "Stores game position in the device’s memory."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "RAM RESTORE*"; width: parent.width * .3}
                    Text {text: "Loads a RAM SAVEd position from the device's memory."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                    Text {text: "OOPS*"; width: parent.width * .3}
                    Text {text: "Restore position as it was before you last moved. OOPS is a very useful command, and versions on larger machines let you use it several times in succession to go back a long way in time."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
                }
                Text {
                    text: i18n.tr("Naturally, you can use OOPS, RESTORE or RAM RESTORE, even when you have just been killed, so that you can return to your position before your fatal accident!")
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
                    text: i18n.tr("Scoring and Hints")
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
                    text: i18n.tr("Silicon Dreams can be played as three entirely separate games, if you wish. However, the only way to obtain a maximum score and the title of 'Supreme Adventurer’ is to complete them in the order Snowball, Return to Eden, Worm in Paradise, carrying your score from one adventure to the next (when you finish Snowball with a maximum score, you will be told how to carry your score across).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Unlike many adventures, you don't score points for collecting 'treasures' and storing them in a certain location in the game. Instead, you score for doing certain things that help you on your way to solving each of the adventures.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Your aim is to get to the main control room in the engine unit, and rescue the starship from crashing into the planet Eden.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("You will lose points for being caught by the Nightingales.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("North, south, east, west, etc. are understood in the usual way, however, UP and DOWN are relative to local gravity. At the start of the game, you are in the lowest level of a passenger disk. You will need to go 'up'.")
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
                Label {
                    text: i18n.tr("Silicon Dreams was brought to you by the following people:—")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.pointSize: units.gu(1.5)
                    color: darkColor
                }
                Text {
                    text: i18n.tr("Game design and text:")
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
                    text: i18n.tr("Programming:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Mike, Nick and Pete Austin.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Pictures:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Tim Noyce and James Horsier.")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Miss Kimberley's costume:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                Text {
                    text: i18n.tr("Spider and Jeannie Robinson (Stardance).")
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }

            }
        }

    }
}
