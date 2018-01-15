import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: iBNovella
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
            bottomMargin: units.gu(5)
        }

        contentHeight: levelSGColumn.height + units.gu(14)

        Column{
            id: levelSGColumn
            width: parent.width - marginColumn * 6
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: units.gu(3)
            anchors.margins:units.gu(2)
            anchors.top: parent.top
            anchors.topMargin: levelHistoryHeader.height + units.gu(8)

            UbuntuShape {
                id: siliconCover
                width: parent.width * .7
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-gr2.jpg"
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
                LevelText { text: i18n.tr("When the game prints 'What gnow?' or '>', it is waiting for you to type a command. (The game also waits when it has more text to print than will fit on the screen at one time; read what's displayed and press either Shift or the Spacebar to continue.)") }
                LevelText { text: i18n.tr("This game knows four types of commands:") }
                LevelLabel { text: i18n.tr("Movement:") }
                LevelText { text: i18n.tr("Just type the direction you want to go: NORTH, NORTHEAST, EAST (and the other compass directions), IN, OUT, UP, DOWN or ACROSS. GO or RUN take you to a named place, e.g. GO TO INN, and FOLLOW is self-explanatory.") }
                LevelLabel { text: i18n.tr("Actions:") }
                LevelText { text: i18n.tr("For example, LOOK, TAKE THE PETITION, SIGN IT, DROP IT, EXAMINE THE CASK, WEAR THE HAT, DRINK THE CIDER, or GIVE CARROT TO BUMPY.") }
                LevelLabel { text: i18n.tr("System commands:") }
                LevelText { text: i18n.tr("EXITS, INVENTORY and SCORE give information; WORDS, PICTURES, BRIEF, VERBOSE, EXITS ON and EXITS OFF control what is output; UNDO takes you back a move; SAVE, RESTORE, RAM SAVE and RAM RESTORE save your position or return to an earlier position, and QUIT stops the game. See the example game, on Page iv for more details of these commands.") }
                LevelLabel { text: i18n.tr("Commands to others:") }
                LevelText { text: i18n.tr("Ingrid could command some people such as Flopsy her dog, but most gnomes were wary of her talent for disaster and tried not to get involved. Type their name, followed by commands, e.g FLOPSY, GO NORTH, GET EVERYTHING, THEN FOLLOW ME.") }
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

                LevelText { text: i18n.tr("<i>Gnome Ranger</i> told how Ingrid Bottomlow returned from the Institute of Gnome Economics, full of schemes to improve life, and succeeded in demolishing most of the family farm. 'Accidentally' banished by her exasperated family, Ingrid had more success with putting the wilderness to rights, and even stopped a war or two.") }
                LevelText { text: i18n.tr("<i>Ingrid's Back</i> starts with Ingrid's return to Little Moaning, and tells how she stopped the plans of Jasper Quickbuck, money-grabbing lord of Ridley's Manor, to steamroll the gnome-belt village for an estate of yuppie homes.") }
                LevelText { text: i18n.tr("Ingrid Bottomlow's Second Gnettlefield Journal is an introduction. Then, part 1 of the game describes Ingrid's attempts to get her fellow gnomes to sign a petition against the planned eviction. The next part concerns the defence of Gnettlefield farm and finally, in part 3, Ingrid infiltrates the manor.") }

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
                UbuntuShape {
                    width: parent.width
                    height: width * .6
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/ib-03.png"
                    }
                }
                LevelText { text: i18n.tr("As you have seen, this game understands a lot of commands. The following list is only part of its vocabulary, but it gives an idea of what to try:") }
                LevelText { text: i18n.tr("North, northeast, east (and other compass directions), up, down, in, out, across, climb, go, run, follow, again, attack, inventory, quit, save, restore, RAM save, RAM restore, undo, score, wait, shout, search, examine, blink, look, kneel, take, drop, wear, throw, give, fill, empty, open, unlock, close, eat, drink, light, press, wave, blow, exits, words, pictures, brief, verbose.") }
                LevelText { text: i18n.tr("Many words can be abbreviated, for example: INVENTORY to INV.") }
                LevelText { text: i18n.tr("The following example is not from Ingrid's Back, but it illustrates how to play. The player's commands are in capitals, after each '>' prompt, and any text in square brackets is a comment.") }
                LevelText { text: i18n.tr("Ingrid struggled from the rubble of Low Moan fann and brushed herself down. All gnew projects had little teething troubles, and fortunately the farmhouse had gneeded redecorating anyway. Muffled shouts announced that Mrs Downtrodden was unharmed , just trapped in the cellar of her former home, so Ingrid cheerily called, 'Don't worry! Trust me and I'll soon get you free'. There was a pause, then much louder shouting. But Ingrid had gnot waited to be thanked and was already away down the road.") }
                LevelLabel { text: i18n.tr("> LOOK") }
                LevelText { text: i18n.tr("Ingrid was standing near the top of Ploughgnomes' Lane, looking down towards the village of Little Moaning. She could see Flopsy. Flopsy bounded around Ingrid, barking happily.") }
                LevelLabel { text: i18n.tr("> EXAMINE FLOPSY") }
                LevelText { text: i18n.tr("Flopsy was the Bottomlow's cart dog; a Yuletide present from Ingrid to her parents. They had wanted a gnice, quiet, small dog, but instead got this bouncy monster with flopping ears. However, Ingrid thought she was wonderful.") }
                LevelLabel { text: i18n.tr("> FLOPSY, FOLLOW ME") }
                LevelText { text: i18n.tr("Flopsy nodded and licked Ingrid's face .") }
                LevelLabel { text: i18n.tr("> UP") }
                LevelText { text: i18n.tr("Ingrid went uphill and reached the summit of Ploughgnomes' Hill. The lane continued northwards, past a stile on the west side. A rabbit scampered across the road, pushed through the hedge beside the stile and hopped away quickly towards Darkwood.") }
                LevelText { text: i18n.tr("Flopsy arrived from below.") }
                LevelLabel { text: i18n.tr("> FOLLOW RABBIT") }
                LevelText { text: i18n.tr("Ingrid tried to climb over the stile but found, gnot surprisingly, that it was too high. She shrugged, walked underneath and was in a scrubby field on the edge of a great forest. She could see a signpost. The rabbit's tail was just visible, vanishing west into the trees.") }
                LevelText { text: i18n.tr("Flopsy entered from the east and barked excitedly.") }
                LevelText { text: i18n.tr("Ingrid went west and was below the eaves of darkwood, in the middle of a bramble hedge. Ingrid could see a multitude of thorns.") }
                LevelText { text: i18n.tr("Flopsy entered from the east, sniffed at a bramble, yelped and retreated out of sight.") }
                LevelText { text: i18n.tr("Ingrid tried to go west but found she was trapped by the thorns and could not follow the rabbit any further.") }
                LevelLabel { text: i18n.tr("> UNDO ['Take back move' — available on most micros.]") }
                LevelText { text: i18n.tr("Ingrid was in a scrubby field on the edge of a great forest. She could see a signpost and Flopsy.") }
                LevelLabel { text: i18n.tr("> INVENTORY [or 'examine me']") }
                LevelText { text: i18n.tr("Ingrid owned a book and a petition.") }
                LevelText { text: i18n.tr("Flopsy chased a butterfly into the distance.") }
                LevelLabel { text: i18n.tr("> EXITS") }
                LevelText { text: i18n.tr("Exits lead east, south and west.") }
                LevelLabel { text: i18n.tr("> EXAMINE SIGNPOST") }
                LevelText { text: i18n.tr("It said 'General Store, prop Seamus Sosmall' and pointed south along a winding path. Ingrid thanked the signpost kindly.") }
                LevelLabel { text: i18n.tr("> BRIEF, WORDS, EXITS ON") }
                LevelText { text: i18n.tr("OK. OK. OK. [Locations will be described briefly, pictures turned off and exits reported automatically in future . To reverse these choices, you could use VERBOSE, PICTURES and EXITS OFF.]") }

                Item {
                    width: parent.width
                    height: img.height + units.gu(4)
                    UbuntuShape {
                        id: img
                        anchors.top: parent.top
                        anchors.topMargin: units.gu(2)
                        width: parent.width
                        height: width * .6
                        anchors.horizontalCenter: parent.horizontalCenter
                        aspect: UbuntuShape.Flat
                        source: Image {
                            source: "../../../../graphics/ib-02.png"
                        }
                    }
                }

                LevelLabel { text: i18n.tr("> S [i.e 'SOUTH']") }
                LevelText { text: i18n.tr("Ingrid went south and was just outside Seamus' shop. Exits lead gnorth. and inside through a door. Ingrid could see a bell-pull.") }
                LevelLabel { text: i18n.tr("> GO INSIDE") }
                LevelText { text: i18n.tr("The door was closed.") }
                LevelText { text: i18n.tr("Flopsy arrived from the gnorth.") }
                LevelLabel { text: i18n.tr("> RING BELL") }
                LevelText { text: i18n.tr("As Ingrid rang the bell, the door opened and slowly closed again.") }
                LevelText { text: i18n.tr("Flopsy looked on with interest.") }
                LevelLabel { text: i18n.tr("> FLOPSY, WAIT AND HOLD DOOR") }
                LevelText { text: i18n.tr("Flopsy gnodded happily.") }
                LevelLabel { text: i18n.tr("> RING BELL") }
                LevelText { text: i18n.tr("As Ingrid rang the bell, the door opened. Flopsy held the door so that it could gnot close.") }
                LevelLabel { text: i18n.tr("> IN") }
                LevelText { text: i18n.tr("Ingrid walked inside and was in Seamus Sosmall's shop, surrounded by all kinds of peculiar objects. An exit led outside. Ingrid could see a flying pig, a three dollar bill, a postcard of cute little ice-skating demons, a tax refund, the philosopher's stone and an axe . Ingrid looked very suspiciously at the axe, and it looked very suspiciously back.") }
                LevelLabel { text: i18n.tr("> SCORE") }
                LevelText { text: i18n.tr("Ingrid scored 10 out of 1000.") }
                LevelLabel { text: i18n.tr("> EXISTS OFF [stop reporting exits]") }
                LevelText { text: i18n.tr("OK. One of the little demons winked at Ingrid.") }
                LevelLabel { text: i18n.tr("> RAM SAVE") }
                LevelText { text: i18n.tr("OK. [Before doing anything with these strange objects, save the position in RAM – i.e in the computer's memory – in case Ingrid encounters difficulties and you want to return to this point, using RAM RESTORE. To save to disc or tape, use SAVE and RESTORE.]") }
                LevelLabel { text: i18n.tr("> GET ALL BUT THE PIG") }
                LevelText { text: i18n.tr("Three dollar bill: Ingrid took it.") }
                LevelText { text: i18n.tr("Postcard of cute little ice-skating demons: it was pinned firmly to the wall.") }
                LevelText { text: i18n.tr("Tax refund: Ingrid took it.") }
                LevelText { text: i18n.tr("Philosopher's Stone: as Ingrid touched the Philosopher's Stone, she felt herself becoming slower and heavier. Her last thoughts were of Mistress Gneehigh at the Institute, 'She would have been so proud; She always told us girls to be good as gold.'") }
                LevelLabel { text: i18n.tr("> RAM RESTORE") }
                LevelText { text: i18n.tr("OK. Ingrid was in Seamus Sosmall's shop, surrounded by all kinds of peculiar objects. Ingrid could see a flying pig, a three dollar bill, a postcard of cute little ice-skating demons, a tax refund, the Philosopher's Stone and an axe.") }
                LevelLabel { text: i18n.tr("> TAKE AXE") }
                LevelText { text: i18n.tr("Ingrid took the axe.") }
                LevelLabel { text: i18n.tr("> GO TO THORNS [letting the computer work out the route. Press any key to abandon this type of 'high level' command.]") }
                LevelText { text: i18n.tr("Ingrid went outside and was in a scrubby field on the edge of a great forest.") }
                LevelText { text: i18n.tr("She could see a signpost.") }
                LevelText { text: i18n.tr("Flopsy jumped up to greet her.") }
                LevelText { text: i18n.tr("Ingrid went west and was below the eaves of darkwood, in the middle of a bramble hedge. Ingrid could see a multitude of thorns.") }
                LevelText { text: i18n.tr("Flopsy entered from the east and ate a blackberry.") }
                LevelLabel { text: i18n.tr("> LIE ON THE GROUND") }
                LevelText { text: i18n.tr("Ingrid lay down and considered the problem.") }
                LevelLabel { text: i18n.tr("> CUT THORNS") }
                LevelText { text: i18n.tr("Ingrid gave the thorns a thorough pruning with the axe. After all, she had studied gardening for two years at the Institute.") }
                LevelText { text: i18n.tr("Flopsy looked at the splintered greenery and barked approvingly.") }
                LevelLabel { text: i18n.tr("> WEST") }
                LevelText { text: i18n.tr("Ingrid stepped over the remains of the thorns and was in a woodland clearing. She could see a dog cart. In fact, the cart looked just like the one from Gnettlefield farm.") }
                LevelText { text: i18n.tr("Flopsy entered from the east.") }
                LevelLabel { text: i18n.tr("> GET IN [to use vehicles, get in and move as normal]") }
                LevelText { text: i18n.tr("Ingrid seated herself in the dog cart. Seeing this, Flopsy positioned herself between the shafts at the front of the cart, ready to pull it. From her higher vantage point, Ingrid caught sight of the smoke from the chimney of a small cottage, far to the gnortheast.") }
                LevelLabel { text: i18n.tr("> NE") }
                LevelText { text: i18n.tr("The cart drove gnortheast and was on a paved driveway. The sound of angry voices came from the cottage at the other end. The trolls were trying to evict Great Aunt Halfyard!") }

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
                UbuntuShape {
                    width: parent.width
                    height: width * .6
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/ib-01.png"
                    }
                }
                LevelText { text: i18n.tr("• Draw a map (or a series of maps). Remember that the EXITS ON command lists all the paths from each location."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• To make life easy for you, the objects that matter in a location are normally listed in a sentence like, 'You can see a shopkeeper and a bunch of herbs'. (Some other authors hide useful objects amidst the background scenery, but Level 9 avoid this). The rest of your surroundings are probably scenery, but by all means try to do things to them if you like."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Examine all the objects that you see and, as a rule, take everything that you can. Most objects are useful in some way."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Use the 'high level' commands, such as GO TO WINDMILL, RUN TO BRIDGE, FOLLOW STEAMROLLER, WAIT 5, WAIT FOR FLOPSY, which take the place of many individual instructions. Remember that pressing a key 'breaks' out of such commands."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Some puzzles can only be solved with cooperation from other people (especially in later parts of the game), so get used to giving orders. You can cancel orders given in error by e.g. FLOPSY, STOP"); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Get used to using 'UNDO'. If you make a mistake and get 'killed' or lose a vital object, the UNDO command is available on most micros and takes you back in time - to before your previous move . On larger micros, you can use UNDO many times in succession to retrace your steps a long way through the game."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• SAVE your place occasionally, so that if you notice a mistake too late to be able to UNDO it, or if the electricity flickers and your computer crashes, you can RESTORE the saved position and continue from there. SAVE puts your position on tape or disc (see the details instructions) and RESTORE can retrieve it later. RAM SAVE is quicker but less secure, as it saves the position in memory."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Try everything you can think of - even weird or dangerous actions sometimes provide clues, and might be fun. You can use UNDO (or RESTORE if you have previously used SAVE) to recover if the results are 'fatal'."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• You can word a command in many different ways. For example, if there were an axe and a ball on the ground, you could take the axe by typing any of the following:"); width: parent.width - marginColumn * 2 }

                LevelText { text: i18n.tr("> GET THE AXE"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("> TAKE AXE"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("> GET ALL BUT THE BALL"); width: parent.width - marginColumn * 4 }
                LevelText { text: i18n.tr("> LOOK AT THE AXE AND TAKE IT"); width: parent.width - marginColumn * 4 }

                LevelText { text: i18n.tr("If the game doesn't understand your command, try rephrasing it and using synonyms. If the game still doesn't understand, you are probably trying something that is not important in the game."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("Clues for part 1:") }
                LevelText { text: i18n.tr("• Only Flopsy trusts Ingrid."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• To get someone to sign, try e.g 'give petition to Jumbo'."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Don't collect signatures from outsiders."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("Clues for part 2:") }
                LevelText { text: i18n.tr("• Noah has been known to lie down on the job, but follows instructions."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Stop the steamroller, then trap the trolls."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("Clues for part 3:") }
                LevelText { text: i18n.tr("• Cousin Daisy may be of help."); width: parent.width - marginColumn * 2 }

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
                    height: width * .6
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/ib-00.png"
                    }
                }
                LevelText {
                    text: i18n.tr("Ingrid design:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin, Peter McBride, Godfrey Dowson.") }
                LevelText {
                    text: i18n.tr("Game design and management:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin.") }
                LevelText {
                    text: i18n.tr("Game programming and game text:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Graham Jones.") }
                LevelText {
                    text: i18n.tr("Diary translation and game text polishing:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Peter McBride.") }
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
                }
                LevelText { text: i18n.tr("Mike and Nick Austin, John Jones-Steele, Mike Bryant.") }
                LevelText {
                    text: i18n.tr("Transport to your Micro:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Nick Austin and Mike Bryant") }

            }


        }

    }
}
