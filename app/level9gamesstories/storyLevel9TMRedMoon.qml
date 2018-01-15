import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: timeAndMagikRM
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Red Moon")
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
            bottomMargin: units.gu(5)
        }
        
        contentHeight: levelSBColumn.height + units.gu(14)

        Column{
            id: levelSBColumn
            width: parent.width - marginColumn * 6
            anchors {
                top: parent.top
                topMargin: levelHistoryHeader.height + units.gu(8)
                horizontalCenter: parent.horizontalCenter
            }
            spacing: units.gu(3)
            anchors.margins:units.gu(2)

            UbuntuShape {
                id: emeraldCover
                width: parent.width * .7
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-tnm.jpg"
                }
            }

            StorySection {
                sectionTitle: "Getting Started"
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
                LevelText { text: i18n.tr("If you have not played a Level 9 adventure before, please read all these instructions. If you are an experienced Level 9 adventurer, skip to the preface and just read that.") }
                LevelText { text: i18n.tr("When the game prints 'What now?' or '>', it is waiting for you to type a command. (The game also waits when it has more text to print than will fit on the screen at one time; read what's displayed and press either Shift or the Spacebar to continue.)") }
                LevelText { text: i18n.tr("This game knows four types of commands:") }
                LevelLabel { text: i18n.tr("Movement:") }
                LevelText { text: i18n.tr("Just type the direction you want to go: NORTH, NORTHEAST, EAST (and the other compass directions), IN, OUT, UP, DOWN or ACROSS. GO or RUN take you to a named place, for example GO TO CATHEDRAL, and FOLLOW is self-explanatory.") }
                LevelLabel { text: i18n.tr("Actions:") }
                LevelText { text: i18n.tr("For example, LOOK, TAKE THE HARP, DROP IT, EXAMINE THE CROSS, WEAR THE HAT, DRINK THE WINE, or GIVE CLOTH TO SIR MELIOT.") }
                LevelLabel { text: i18n.tr("System commands:") }
                LevelText { text: i18n.tr("EXITS, INVENTORY and SCORE give information; WORDS, PICTURES, BRIEF, VERBOSE, EXITS ON and EXITS OFF control what is output; UNDO takes you back a move; SAVE, RESTORE, RAM SAVE and RAM RESTORE save your position or return to an earlier position, and QUIT stops the game. See the example game, on Page iv for more details of these commands.") }
                LevelLabel { text: i18n.tr("Commands to others:") }
                LevelText { text: i18n.tr("Commands to others. A spell in The Price of Magic lets you control creatures. Type their name, followed by a command such as BAT, GO NORTH.") }
                LevelText { text: i18n.tr("You can abbreviate commands such as SOUTH to S and SOUTHEAST to SE, and even type several commands on one line, like EAST, TAKE ALL, WEST. After typing a command (or commands) press the ENTER or RETURN key.") }

            }

            StorySection {
                sectionTitle: "Preface"
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
                    height: width
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/tnm-lot-rm-01.jpg"
                    }
                }

                LevelText { text: i18n.tr("This adventure is a trilogy of key episodes from the struggles of the Guardians to protect Time and Magik. The three parts are played as separate games.") }
                LevelText { text: i18n.tr("In Lords of Time the evil Timelords are fighting to change world history, with the aim of gaining permanent control over Time and warp eternity according to their wishes . You must bring together nine crucial objects from different times to defeat them.") }
                LevelText { text: i18n.tr("Red Moon, tells how the Red Moon Crystal, only remaining source of magik power, was lost. And how the Guardians selected a lone adventurer to recover it.") }
                LevelText { text: i18n.tr("And finally The Price of Magik recounts the sad tale of Myglar who, driven mad by the intensity of magikal radiance from the M.o on Crystal that he had protected for so long, stole it. His aim was a vain attempt to squander its power and live forever. But a magician of great skill (who eventually rose to lead the Guardians) avoided Myglar's traps, recovered the crystal and ensured that magik survived as long as there was need for it.") }

            }

            StorySection {
                sectionTitle: "Talking to the Game"
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
                LevelText { text: i18n.tr("As you have seen, <i>Time and Magik</i> understands a lot of commands. The following list is only part of its vocabulary, but it gives an idea of what to try:") }
                LevelText { text: i18n.tr("North, northeast, east (and other compass directions), up, down, in, out, across, climb, go, run, follow, again, attack, inventory, quit, save, restore, RAM save, RAM restore, undo, score, wait, shout, search, examine, blink, look, kneel, take, drop, wear, throw, give, fill, empty, open, unlock, close, eat, drink, light, press, wave, blow, exits, words, pictures, brief, verbose.") }
                LevelText { text: i18n.tr("Many words can be abbreviated, for example: INVENTORY to INV.") }
                LevelText { text: i18n.tr("The following example is not <i>Time and Magik</i> but it illustrates how to play. The player's commands are in capitals, after each '>' prompt, and any text in square brackets is a comment.") }
                LevelText { text: i18n.tr("Lancelot woke suddenly. He had been dreaming of Guenever, and thought for a moment that it was she who had kissed him.") }
                LevelLabel { text: i18n.tr("> LOOK") }
                LevelText { text: i18n.tr("You're standing on the north shore of a marshy island, lost in the mists and reed-beds of a great swamp. Frogs croak incess- antly.") }
                LevelLabel { text: i18n.tr("> GO NORTH") }
                LevelText { text: i18n.tr("You bravely wade into the cool water, sink up to your neck in a tangle of weeds and barely manage to struggle back to the island.") }
                LevelLabel { text: i18n.tr("> NORTH") }
                LevelText { text: i18n.tr("Some people never learn! You wade into the marsh again, get hopelessly tangled in the weeds and sink beneath the waters. The game is over. You scored O out of 1000. Enter UNDO RESTART, RESTORE or RAM RESTORE.") }
                LevelLabel { text: i18n.tr("> UNDO ['Take back move' - available on most micros.]") }
                LevelText { text: i18n.tr("You're standing on the north shore of a marshy island, lost in the mists and reed-beds of a great swamp. Frogs croak incessantly.") }
                LevelLabel { text: i18n.tr("> S [SOUTH]") }
                LevelText { text: i18n.tr("You're on the south shore of the marshy island, which looks exactly like the north shore. You can see a little rowing boat.") }
                LevelLabel { text: i18n.tr("> EXITS") }
                LevelText { text: i18n.tr("Exits lead north and south.") }
                LevelLabel { text: i18n.tr("> LOOK AT THE BOAT") }
                LevelText { text: i18n.tr("Fragile is too good a description for this craft! The only reason for it remaining in one piece must be because the woodworm, deep in its crumbling timbers, are all holding hands. ") }
                LevelLabel { text: i18n.tr("> GET IN BOAT") }
                LevelText { text: i18n.tr("Ok") }
                LevelLabel { text: i18n.tr("> BRIEF, WORDS, EXITS ON") }
                LevelText { text: i18n.tr("OK. OK. OK. [Locations will be described briefly, pictures turned off and exits reported automatically in future. To reverse these choices, you could use VERBOSE, PICTURES and EXITS OFF respectively.]") }
                LevelLabel { text: i18n.tr("> S [SOUTH]") }
                LevelText { text: i18n.tr("You're in a little rowing boat in the middle of the swamp. By paddling very carefully, you are able to make slow but steady progress. Exits lead north and south.") }
                LevelLabel { text: i18n.tr("> A [AGAIN - repeat previous command.]") }
                LevelText { text: i18n.tr("You're in a little rowing boat at a jetty. Exits lead north, west and south. You can see a signpost. ") }
                LevelLabel { text: i18n.tr("> OUT. EXAMINE SIGNPOST") }
                LevelText { text: i18n.tr("The boat rocks as you get to your feet, then breaks apart and sinks into the depths. The letters on the sign are too tarnished to see properly. ") }
                LevelLabel { text: i18n.tr("> RUB SIGNPOST AND READ IT") }
                LevelText { text: i18n.tr("You clean the signpost and it is readable now. Apparently the west road leads along a causeway to the City of the Moon.") }
                LevelLabel { text: i18n.tr("> SCORE") }
                LevelText { text: i18n.tr("You score 10 out of 1,000.") }
                LevelLabel { text: i18n.tr("> RAM SAVE") }
                LevelText { text: i18n.tr("OK. [Having escaped from the swamp, save your position in RAM -i.e in the computer's memory - in case you encounter difficulties and want to return to this point, using RAM RES- TORE. To save to disc or tape, use SA VE and RESTORE respectively.]") }
                LevelLabel { text: i18n.tr("> WEST") }
                LevelText { text: i18n.tr("You are on the east end of a long causeway. Exits lead east and west. You can see a wallet.") }
                LevelLabel { text: i18n.tr("> TAKE WALLET AND EXAMINE EVERYTHING") }
                LevelText { text: i18n.tr("The wallet is a tanned fishskin bag. In the wallet are a coin and a card.") }
                LevelText { text: i18n.tr("The coin is a golden sovereign.") }
                LevelText { text: i18n.tr("The card is printed with , 'J. Fisher Esq, The Burrow, Pondside'.") }
                LevelLabel { text: i18n.tr("> EXITS OFF [stop reporting exits]") }
                LevelText { text: i18n.tr("OK.") }
                LevelText { text: i18n.tr("You can hear a faint buzzing noise!") }
                LevelLabel { text: i18n.tr("> WEST") }
                LevelText { text: i18n.tr("You are in the middle of the causeway. A swarm of insects appears and starts circling around you!") }
                LevelLabel { text: i18n.tr("> EXAMINE THE INSECTS AND HIT THEM") }
                LevelText { text: i18n.tr("The insects are a kind of virulent mosquito.") }
                LevelText { text: i18n.tr("Something bites your neck!") }
                LevelText { text: i18n.tr("You flail wildly at the air, but miss everything.") }
                LevelText { text: i18n.tr("More insects bite you, then they all fly happily away.") }
                LevelLabel { text: i18n.tr("> WEST") }
                LevelText { text: i18n.tr("You are at the west end of the causeway. You can see a pebble. The air seems to be getting colder!") }
                LevelLabel { text: i18n.tr("> GET PEBBLE") }
                LevelText { text: i18n.tr("OK. You seem to have a fever.") }
                LevelLabel { text: i18n.tr("> INVENTORY") }
                LevelText { text: i18n.tr("You own a pebble and a wallet. You shiver uncontrollably.") }
                LevelLabel { text: i18n.tr("> WEST") }
                LevelText { text: i18n.tr("You are on the outskirts of the City of the Moon. Unfortunately, the fever develops apace and you can barely stay on your feet.") }
                LevelLabel { text: i18n.tr("> RAM RESTORE [return to the position y ou saved earlier]") }
                LevelText { text: i18n.tr("You're at a jetty. Exits lead north, west and south. You can see a signpost.") }
                LevelLabel { text: i18n.tr("> SOUTH") }
                LevelText { text: i18n.tr("You are outside a drug store. Exits lead north and in.") }
                LevelLabel { text: i18n.tr("> IN") }
                LevelText { text: i18n.tr("You are in the drug store. You can see a shopkeeper and a bottle of plague antidote pills. 'Good morning', says the shopkeeper, 'Can I help you?'") }
                LevelLabel { text: i18n.tr("> TAKE PILLS") }
                LevelText { text: i18n.tr("The shopkeeper slaps your hand away. 'Naughty!', she scolds, 'Antidote pills are extremely valuable - one gold sovereign each!'") }
                LevelLabel { text: i18n.tr("> OUT. N. W. GET WALLET. E. S. IN. GIVE SOVEREIGN TO SHOPKEEPER") }
                LevelText { text: i18n.tr("[then, armed with the antidote pills, try to pass the insects again ... ]") }


            }

            StorySection {
                sectionTitle: "Hints"
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
                
                LevelLabel { text: i18n.tr("Hints for <i>Red Moon</i>") }
                LevelText { text: i18n.tr("• To cast a spell, enter CAST [spell-name] [optional-target], such as CAST ESCAPE or CAST SNOOP NORTH."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• If you must attack somethmg, wear armour and carry a weapon."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• You score points for making progress towards regaining the Red Moon Crystal, and 50 bonus points for each of nine treasures collected."); width: parent.width - marginColumn * 2 }

                LevelText { text: i18n.tr("• Draw a map (or a series of maps). Remember that the EXITS command lists the possible paths from each location."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• To make life easy for you, the objects that matter in a location are normally listed in a sentence like, 'You can see a shopkeeper and a bottle of plague antidote pills'. (Some other authors mix in useful objects amid the background scenery, but Time and Magik avoids this time-wasting trick.) The rest of your surroundings are probably scenery, but by all means do things to them if you like."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Examine all the objects that you see, and take everything that you can. Most objects are useful- either as treasure, or in solving later puzzles."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Remember 'UNDO' . If you make a: mistake and get 'killed' or lose a vital object, the UNDO command is available on most versions and takes you back in time - hopefully to before the mistake. On larger micros you can use UNDO many times in succession to step backwards a long way through the game."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• SAVE your place occasionally, so that if you notice a mis- take too late to be able to UNDO it, or if the electricity flickers and your computer crashes, you can RESTORE the saved position and continue from there. SA VE puts your position on tape or disc and RESTORE can retrieve it later. RAM SA VE is quicker but less secure, as it just saves the position in memory."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Try everything you can think of - even weird or dangerous actions sometimes provide clues, and might be fun. You can always use UNDO (or SAVE followed by RESTORE) to recover if the results are 'fatal'."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• You can word a command in many different ways. For example, if there were an axe and a ball on the ground, you could take the axe by typing any of the following:"); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("> GET THE AXE"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("> TAKE AXE"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("> GET ALL BUT THE BALL"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("> LOOK AT THE AXE AND TAKE IT"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("• If Time and Magik doesn't understand your command, try rephrasing it and using synonyms. If Time and Magik still doesn't understand, you are probably trying something that is not important in the game."); width: parent.width - marginColumn * 2 }

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
                    text: i18n.tr("Game design:")
                    color: lightColor
                }
                LevelText { text: "David Williamson & Pete Austin" }
                LevelText {
                    text: i18n.tr("Implementation:")
                    color: lightColor
                }
                LevelText { text: "Simon Aspinall & Pete Austin" }
                LevelText {
                    text: i18n.tr("Pictures (most versions):")
                    color: lightColor
                }
                LevelText { text: "James Horsler" }
                LevelText {
                    text: i18n.tr("Transport to your Computer:")
                    color: lightColor
                }
                LevelText { text: "Nick Austin" }
                LevelText {
                    text: i18n.tr("Adventure System :")
                    color: lightColor
                }
                LevelText { text: "Mike & Nick Austin" }
                LevelText {
                    text: i18n.tr("Data Compiler:")
                    color: lightColor
                }
                LevelText { text: "Pete Austin" }
                LevelText {
                    text: i18n.tr("Booklet:")
                    color: lightColor
                }

            }

        }

    }
}
