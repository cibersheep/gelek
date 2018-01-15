import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: scapeGhost
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Scape Ghost")
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
                id: emeraldCover
                width: parent.width * .7
                height: width * 1.3
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-sg.jpg"
                }
            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    id: emeraldHistoryTitle
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Game Background")
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
                LevelText { text: i18n.tr("Alan Chance was on an undercover mission, trying to infiltrate a drugs gang.  All was going well, but then something or someone alerted the gangsters and they killed Alan and escaped, taking his colleague Sarah as a hostage. His fellow police falsely blame a mistake of Alan's for tipping off the criminals.") }
                LevelText { text: i18n.tr("Alan has three nights as a ghost to disprove this false accusation, clear his name and gain revenge. Use his detective skills and growing spirit powers to delay the gangsters, track down their new hideout and bring them to Justice.") }

            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Commands")
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

                LevelText { text: i18n.tr("When the game prints 'What now?' or '>', it is waiting for you to type a command and press ENTER or RETURN. (The game also waits when it has more text to print than will fit on the screen at one time; read what's displayed and press either SHIFT or SPACE to continue).") }
                LevelText { text: i18n.tr("This game knows four types of commands:") }
                LevelLabel { text: i18n.tr("Movement:") }
                LevelText { text: i18n.tr("Type a direction: NORTH, NORTHEAST, EAST (and the other compass directions). IN, OUT, UP or DOWN. GO or RUN take you to a named place, e.g. GO TO SHED, and FOLLOW is self-explanatory.") }
                LevelLabel { text: i18n.tr("Actions:") }
                LevelText { text: i18n.tr("e.g. LOOK, GET THE THISTLEDOWN. DROP IT, EXAMINE THE WREATH, PUT THE WHITE CARD ON THE WREATH or GIVE PEBBLE TO JOE.") }
                LevelLabel { text: i18n.tr("System commands.") }
                LevelText { text: i18n.tr("EXITS, INVENTORY and SCORE give information; WORDS, PICTURES, BRIEF, VERBOSE, EXITS OFF and EXITS ON control the output; UNDO, SAVE and LOAD, RAM SAVE and RAM LOAD save your position or return to one, and RESTART restarts.") }
                LevelLabel { text: i18n.tr("Commands to others.") }
                LevelText { text: i18n.tr("You can give commands to fellow ghosts, and a few living creatures, providing they are willing to follow orders. Type their name, followed by commands, e.g JOE, GO NORTH, GET EVERYTHING, THEN FOLLOW ME. You can cancel orders given in error by e.g., JOE, STOP") }
                LevelText { text: i18n.tr("You can abbreviate commands, e.g. SOUTH to S and SOUTHEAST to SE, and even type several commands on one line, e.g. EAST, TAKE ALL, WEST. After typing a command (or commands), press the ENTER or RETURN key.") }
            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Example Game")
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
                    height: width * .44
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/sg01.png"
                    }
                }
                LevelText { text: i18n.tr("The following example is not from Scapeghost. but it illustrates how to play.  Your commands are in capitals after each '>' or 'What now?' prompt, and text in square brackets is comments...") }
                LevelText { text: i18n.tr("As twilight fell, I felt my strength grow. Another day was past. Now I could leave the shadows where I had hidden from the sun, and move away through the Autumn mists.") }
                LevelText { text: i18n.tr("> LOOK") }
                LevelText { text: i18n.tr("I was standing in the lee of a jutting slab of granite, near the northern wall of the Necropolis. I could see Ace.") }
                LevelText { text: i18n.tr("Ace grinned and rattled her chains.") }
                LevelText { text: i18n.tr("> EXAMINE ACE") }
                LevelText { text: i18n.tr("She was a strange spectre in grey overcoat and tricorn hat.") }
                LevelText { text: i18n.tr("> ACE, FOLLOW ME") }
                LevelText { text: i18n.tr("Ace bowed her translucent head.") }
                LevelText { text: i18n.tr("> SOUTH") }
                LevelText { text: i18n.tr("I floated south and was beneath the wrought-iron pergola which split the churchyard, dividing the graves on its north side from the grassy parkiand to the south. Ace entered from the north.") }
                LevelText { text: i18n.tr("The moon rose above the jagged outline of a great family vault to the east, its beams illuminating a hidden memorial.") }
                LevelText { text: i18n.tr("> EXAMINE MEMORIAL") }
                LevelText { text: i18n.tr("As I looked, a small blue spirit slowly oozed from the stones, brushed down his stomach and smiled. 'Call me Junior', he wheezed.") }
                LevelText { text: i18n.tr("I smiled sympathetically, then leapt in alarm as a large cat bounded past and raced away east.") }
                LevelText { text: i18n.tr("> FOLLOW CAT") }
                LevelText { text: i18n.tr("I floated east and found myself beside a fallen oak tree. It had once towered above the landscape, putting out a myriad twigs in every direction, but its roots were starved and old age had rotted its trunk. I could see the lynx and the fundamental statue. Ace entered from the west. The lynx bounded east.") }
                LevelText { text: i18n.tr("I floated east and was outside the Sinclair family vault: a great Gothic monstrosity, each wing showing the date it was built. Prismatic windows cast spectrums on every side, but most of them bounced right back. The lynx squeezed east through a crevice and was gone. Ace entered from the west.") }
                LevelText { text: i18n.tr("I tried to float east, but the crevice was too small and the building too holy. Meanwhile, Ace looked up at the vault. 'Enter to want you if ring must you and, Pittance a for developer property a to sold all was this know you did?'. she remarked, obscurely.") }
                LevelText { text: i18n.tr("> UNDO ['Take back move' - available on most micros]") }
                LevelText { text: i18n.tr("I found myself beside a fallen oak tree. I could see Ace and the fundamental statue.") }
                LevelText { text: i18n.tr("> INVENTORY [or use 'examine inv']") }
                LevelText { text: i18n.tr("I owned a key.") }
                LevelText { text: i18n.tr("Ace wandered thoughtfully north. Junior entered slowly from the west and collapsed. 'I wish everyone didn't go so fast', he whined, fading away into the mist.") }
                LevelText { text: i18n.tr("> EXITS") }
                LevelText { text: i18n.tr("Exits lead east, south and west.") }
                LevelText { text: i18n.tr("> EXAMINE STATUE") }
                LevelText { text: i18n.tr("It was of gilded lead, and showed how bad atoms decay into protons and electrons. A plaque pointed north to the Professor's grave.") }
                LevelText { text: i18n.tr("> BRIEF, WORDS, EXITS ON OK. OK. OK. [Locations will be described briefly, pictures turned off and exits reported automatically in future. To reverse these choices, you could use VERBOSE, PICTURES and EXITS OFF.]") }
                LevelText { text: i18n.tr(">S [i.e. 'SOUTH'] I floated south and was outside St Amiga's chapel of rest, a sludge grey building decorated with architraves and archimedes. Exits led all around and inside.") }
                LevelText { text: i18n.tr("> GO INSIDE") }
                LevelText { text: i18n.tr("The door was just too solid for me to float through. Ace arrived from the north.") }
                LevelText { text: i18n.tr("> OPEN DOOR") }
                LevelText { text: i18n.tr("As I opened the door, it released a switch and light bathed the area. Ace staggered backwards, moaning. I felt suddenly weaker and had to let the door swing shut. It pushed the switch and all was dark again.") }
                LevelText { text: i18n.tr("> ACE, PUSH THE SWITCH AND WAIT 10") }
                LevelText { text: i18n.tr("Ace reached through the door and held the switch in place.") }
                LevelText { text: i18n.tr("> OPEN DOOR") }
                LevelText { text: i18n.tr("OK. The light remained off. Ace made as if to applaud, but thought better of it.") }
                LevelText { text: i18n.tr("> IN") }
                LevelText { text: i18n.tr("I went inside and found myself in the vestry of St Amiga's chapel, listening to the drone of PC fans and prayer disks. I could see a bell, a bottle and a candle.") }
                LevelText { text: i18n.tr("> SCORE") }
                LevelText { text: i18n.tr("I scored 15 out of 1000.") }
                LevelText { text: i18n.tr("> EXITS OFF [stop reporting exits]") }
                LevelText { text: i18n.tr("OK. The droning grew slower and more fragmented.") }
                LevelText { text: i18n.tr("> RAM SAVE") }
                LevelText { text: i18n.tr("OK. [Before doing anything with these strange objects, save the position in RAM - i.e. in the computer's memory in case you encounter difficulties and want to return to this point, using RAM LOAD. To save to disc or tape, use SAVE and then LOAD.]") }
                LevelText { text: i18n.tr("> EXAMINE ALL BUT THE CANDLE") }
                LevelText { text: i18n.tr("Bell: it was a small golden ornament.  Bottle: as I reached for the bottle of holy water, I felt my strength drain away. I could not move, even to step back from the bottle.") }
                LevelText { text: i18n.tr("> RAM LOAD") }
                LevelText { text: i18n.tr("OK. I was inside St Amiga's chapel, listening to the drone of PC fans and prayer disks. I could see a bell, a bottle and a candle.") }
                LevelText { text: i18n.tr("> TAKE BELL") }
                LevelText { text: i18n.tr("I took the bell. I dropped the key. [Ghosts are relatively weak and cannot levitate many things at once.]") }
                LevelText { text: i18n.tr("> GO TO MEMORIAL [letting the computer work out the route. Press any key to abandon this type of 'high level' command.]") }
                LevelText { text: i18n.tr("I floated north and was outside St Amiga's chapel of rest.") }
                LevelText { text: i18n.tr("I floated north and found myself beside a fallen oak tree.") }
                LevelText { text: i18n.tr("I floated east and was outside the Sinclair family vault.") }
                LevelText { text: i18n.tr("Exits led west and inside.") }
                LevelText { text: i18n.tr("> RING BELL") }
                LevelText { text: i18n.tr("Slowly and with a great noise, the side of the vault swung open...") }

            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Hints")
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
                LevelLabel { text: i18n.tr("Hints") }
                LevelText { text: i18n.tr("Draw a map [or a series of maps]. Remember that the EXITS ON command lists all the paths from each location.") }
                LevelText { text: i18n.tr("To make life easy for you. the objects that matter in a location are nonnally listed in a sentence like, 'You can see Ace and a key'. Examine all the objects that you see. Most are useful.") }
                LevelText { text: i18n.tr("Use the 'high level' commands, such as GO TO CHAPEL, RUN TO SHED. FOLLOW DOG, WAIT 8, which do the work of many instructions. Pressing a key 'breaks' out of such conunands.") }
                LevelText { text: i18n.tr("Try everything you can think of - even weird or dangerous actions sometimes provide clues, and might be fun. You can use UNDO [or LOAD If you have previously used SAVE] to recover if the results are 'fatal'.") }
                LevelText { text: i18n.tr("You can word commands in many different ways. For example, If there were an axe and a ball on the ground. you could take the axe by:") }
                LevelText { text: i18n.tr("> GET THE AXE") }
                LevelText { text: i18n.tr("> TAKE AXE") }
                LevelText { text: i18n.tr("> GET ALL BUT THE BALL") }
                LevelText { text: i18n.tr("> LOOK AT THE AXE AND TAKE IT") }
                LevelText { text: i18n.tr("If the game doesn't understand your command, try rephrasing it and using synonyms. If the game still doesn't understand, you are probably trying something that is not important.") }
                LevelLabel { text: i18n.tr("Hints for Part 1") }
                LevelText { text: i18n.tr("Build up your strength as a ghost; Recruit your fellow spirits; Buy time by delaying the gang's criminal plans.") }
                UbuntuShape {
                    width: parent.width
                    height: width * .44
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/sg02.png"
                    }
                }
                LevelLabel { text: i18n.tr("Hints for Part 2") }
                LevelText { text: i18n.tr("Once in the gang's old hideout, collect clues to help the police work out where they have moved to;") }
                LevelText { text: i18n.tr("Alert the emergency services and make sure that they trip over something really dramatic, so they know foul play is involved.") }
                LevelLabel { text: i18n.tr("Hints for Part 3") }
                LevelText { text: i18n.tr("Distract the lookout while the police are arriving; Rescue the hostage and prevent the gang destroying the evidence.") }
            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Saving")
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

                LevelLabel { text: i18n.tr("Save on disc") }
                LevelText { text: i18n.tr("To save game positions from the disc version of Scapeghost, you first need a blank disc of your own.") }
                LevelText { text: i18n.tr("Before playing Scapeghost, format [initialize] this disc, using the ordinary software bought with your micro. [Exceptions to this are Apple II and Atari XE,800XL discs - Scapeghost uses its own disc format on these computers and will initialize the disc itself.]") }
                LevelText { text: i18n.tr("When playing the game, enter SAVE and follow the instructions displayed.") }
                LevelText { text: i18n.tr("To return to a SAVEd position, enter LOAD and YES. When entering a file name, you can either type a short word such as POS1, or use the full format permitted by your particular computer.") }
                LevelLabel { text: i18n.tr("Save on tape") }
                LevelText { text: i18n.tr("To save game positions from a cassette version of Scapeghost, you need a blank cassette of your own.") }
                LevelText { text: i18n.tr("When playing the game, start a blank tape on RECORD and enter SAVE [if the cassette doesn't move, press ENTER or RETURN again). When the game starts running again, e.g. to prompt for your next command by displaying '>' or 'What now?', stop the tape.") }
                LevelText { text: i18n.tr("To return to a SAVEd position, enter LOAD and YES, then follow any instructions asking for one word from the story. Finally, rewind the tape on which the position was saved, and play it (if the cassette doesn't move, press ENTER or RETURN again).") }
                LevelLabel { text: i18n.tr("Save in memory") }
                LevelText { text: i18n.tr("To save your game position in memory (all except 48K Spectrums, 64K Amstrad CPCs and small BBCs allow this), enter RAM SAVE. To return to a RAM SAVEd position. enter RAM LOAD. UNDO is available on all versions which have RAM SAVE. UNDO takes you 'back in time' to before you last moved; a bit like RAM LOAD where the corresponding RAM SAVEs are automatic. UNDO can be used many times in succession on larger micros.") }
                LevelText { text: i18n.tr("Remember that the contents of memory are lost if your computer is turned off or crashes, so SAVE to disc or tape occasionally.") }


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

                LevelText {
                    text: i18n.tr("Original idea:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Sandra Sharkey, Pete Gerrard.") }
                LevelText {
                    text: i18n.tr("Game design etc.:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Game programming:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Graham Jones.") }
                LevelText {
                    text: i18n.tr("Game text:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Graham Jones, Pete Austin, Peter McBride.") }
                LevelText {
                    text: i18n.tr("Cover Picture:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Godfrey Dowson.") }
                LevelText {
                    text: i18n.tr("Computer Art:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Dicon Peeke.") }
                LevelText {
                    text: i18n.tr("Systems:")
                    color: lightColor
                    width: parent.width
                }
                LevelText { text: i18n.tr("Mike and Nick Austin, John Jones-Steele, Mike Bryant.") }
                LevelText {
                    text: i18n.tr("Transport to your Micro:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Nick Austin and Mike Bryant.") }


            }


        }

    }
}
