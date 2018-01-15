import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: singleLancelot
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Lancelot")
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
                height: width * .98
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-lan.jpg"
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
                LevelText { text: i18n.tr("Lancelot could command some people such as knights who were grateful to him for their freedom. Type their name followed by a command such as SIR GAWAIN, GO NORTH, TAKE EVERYTHING, THEN FOLLOW ME.") }
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
                    height: width * .69
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/lan-map.png"
                    }
                }

                LevelText { text: i18n.tr("Lancelot recreates the tales of Arthur and the Knights of the Round Table, as told in Sir Thomas Malory's Le Morte D'Arthur.") }
                LevelText { text: i18n.tr("Parts 1 and 2 follow Lancelot's arrival at Camelot, his rise to become the best knight in the world, and the completion of the Round Table.") }
                LevelText { text: i18n.tr("Part 3 then follows the Quest for the Holy Grail, the high point for Chivalry, in which the best knights came near to God, but which led to the destruction of the Round Table.") }

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
                LevelText { text: i18n.tr("As you have seen, this game understands a lot of commands. The following list is only part of its vocabulary, but it gives an idea of what to try:") }
                LevelText { text: i18n.tr("North, northeast, east (and other compass directions), up, down, in, out, across, climb, go, run, follow, again, attack, inventory, quit, save, restore, RAM save, RAM restore, undo, score, wait, shout, search, examine, blink, look, kneel, take, drop, wear, throw, give, fill, empty, open, unlock, close, eat, drink, light, press, wave, blow, exits, words, pictures, brief, verbose.") }
                LevelText { text: i18n.tr("Many words can be abbreviated, for example: INVENTORY to INV.") }
                LevelText { text: i18n.tr("The following example is not from the game but it illustrates how to play. The player's commands are in capitals, after each '>' prompt, and any text in square brackets is a comment.") }
                LevelText { text: i18n.tr("Lancelot woke suddenly. He had been dreaming of Guenever, and thought for a moment that it was she who had kissed him.") }
                LevelLabel { text: i18n.tr("> LOOK") }
                LevelText { text: i18n.tr("Lancelot was lying beside a fountain, in a glade of the Forest Sauvage. He could see a fair damosel.") }
                LevelText { text: i18n.tr("The fair damosel took a step backwards and stood, peering timidly at Lancelot.") }
                LevelLabel { text: i18n.tr("> EXAMINE DAMOSEL") }
                LevelText { text: i18n.tr("She was Elaine, called at that time the Fair Maid of Astalot, daughter to Sir Bernard of Astalot, in whose castle Lancelot had recently tarried. She was holding a red sleeve.") }
                LevelText { text: i18n.tr("Elaine cast a look of love unto Sir Lancelot and besought him to wear a token of hers at the jousts.") }
                LevelLabel { text: i18n.tr("> GO NORTH") }
                LevelText { text: i18n.tr("Elaine clutched at the bridle of Lancelot's horse and would not let him ride past. 'Prithee, my Lord', she said, 'Will you wear my token? Just tell me yeah or nay'.") }
                LevelLabel { text: i18n.tr("> ELAINE, YES") }
                LevelText { text: i18n.tr("Elaine cast a look of love unto Sir Lancelot and twined the sleeve about his arm. Then she walked away into the forest, ever looking back at Lancelot until she was out of sight.") }
                LevelLabel { text: i18n.tr("> NORTH") }
                LevelText { text: i18n.tr("Sir Lancelot rode north and was on the edge of a great thorn thicket; the biggest that man had ever seen. He bethought himself to see a treasure glinting within the thicket.") }
                LevelLabel { text: i18n.tr("> IN") }
                LevelText { text: i18n.tr("Sir Lancelot dismounted and walked in. He was trapped by the thorns, completely unable to move.") }
                LevelLabel { text: i18n.tr("> UNDO [Take back move - available on most micros.]") }
                LevelText { text: i18n.tr("Lancelot was on the edge of a great thorn thicket; the biggest that man had ever seen.") }
                LevelLabel { text: i18n.tr("> INVENTORY") }
                LevelText { text: i18n.tr("Lancelot was wearing a red sleeve. Sir Lavaine entered from the south.") }
                LevelLabel { text: i18n.tr("> EXITS") }
                LevelText { text: i18n.tr("Exits lead east, south and in. Sir Lavaine stopped in front of Lancelot. 'Good sir knight', said the youth, 'Pray let me ride with you unto the tournament, for methinks I am of my age strong and wight. I see you wear my sister's sleeve and I would help her chosen champion'.") }
                LevelLabel { text: i18n.tr("> LAVAINE, FOLLOW ME") }
                LevelText { text: i18n.tr("Sir Lavaine bowed.") }
                LevelLabel { text: i18n.tr("> BRIEF, WORDS, EXITS ON") }
                LevelText { text: i18n.tr("OK. OK. OK. [Locations will be described briefly, pictures turned off and exits reported automatically in future. To reverse these choices, you could use VERBOSE, PICTURES and EXITS OFF.]") }
                LevelLabel { text: i18n.tr("> E [EAST]") }
                LevelText { text: i18n.tr("Sir Lancelot rode east and was on a forest road. Exits led east and west. Lancelot could see a little gate across the track. Sir Lavaine entered from the east.") }
                LevelLabel { text: i18n.tr("> A [AGAIN - repeat previous command.]") }
                LevelText { text: i18n.tr("Lancelot pushed the gate halfway open. Sir Lavaine looked on with interest. Then the gate sprung closed, blocking the road.") }
                LevelLabel { text: i18n.tr("> LAVAINE, WAIT THEN PUSH THE GATE [WAIT defaults to WAIT 1.]") }
                LevelText { text: i18n.tr("Sir Lavaine nodded.") }
                LevelLabel { text: i18n.tr("> PUSH THE GATE") }
                LevelText { text: i18n.tr("Lancelot pushed the gate halfway open. Sir Lavaine pushed the gate the rest of the way open and it clicked in place.") }
                LevelLabel { text: i18n.tr("> EAST") }
                LevelText { text: i18n.tr("Sir Lancelot rode through the open gate and was at a junction in the road where a winding track joined it from the north. Exits led north, east and west. Lancelot could see a signpost. Sir Lavaine entered from the west.") }
                LevelLabel { text: i18n.tr("> READ SIGNPOST") }
                LevelText { text: i18n.tr("'Thou knight, which would enter into the Tower Perilous, beware thou be well prepared. For the fiendly dragon therein is proof against all weapons, save only one.'") }
                LevelText { text: i18n.tr("A great roaring was heard in the distance.") }
                LevelText { text: i18n.tr("A great roaring was heard in the distance. Sir Lavaine looked as if he had just remembered something. 'Ye must hold me excused at this time', he said, 'For I have duties elsewhere. But if God give me speed, I shall meet with you again at the jousts'. Spurring his horse, he galloped into the distance.") }
                LevelLabel { text: i18n.tr("> SCORE") }
                LevelText { text: i18n.tr("Lancelot scored 10 out of 1000.") }
                LevelLabel { text: i18n.tr("> RAM SAVE") }
                LevelText { text: i18n.tr("OK. [Before facing the dragon, save the position in RAM - that is in the computer's memory - in case you encounter difficulties and want to return to this point, using RAM RESTORE. To save to disc or tape, use SAVE and RESTORE.]") }
                LevelLabel { text: i18n.tr("> GO TO TOWER PERILOUS [Let the computer work out the route. Press any key to cancel this type of 'high level' command.]") }
                LevelText { text: i18n.tr("Sir Lancelot rode north and was deep in the forest.") }
                LevelText { text: i18n.tr("Sir Lancelot rode northeast and was on the edge of a clearing.") }
                LevelText { text: i18n.tr("Sir Lancelot rode north and was before the Tower Perilous.") }
                LevelText { text: i18n.tr("Exits led south and inside. Lancelot could see plumes of smoke curling from its windows. A fierce bellowing echoed from inside the tower.") }
                LevelLabel { text: i18n.tr("> EXAMINE EVERYTHING") }
                LevelText { text: i18n.tr("The sleeve was of scarlet cloth, well embroidered with great pearls. The bellowing grew louder. The plumes of smoke were flecked with glowing ash. Lancelot heard movement within the tower.") }
                LevelLabel { text: i18n.tr("> WAIT FOR DRAGON") }
                LevelText { text: i18n.tr("[Do nothing until the dragon arrives] Lancelot saw two great eyes within the tower. A great gout of flame gushed from the doorway, A hideous dragon entered from the north. It reared high above Lancelot, opening its mouth like a chasm.") }
                LevelLabel { text: i18n.tr("> MAKE SIGN OF THE CROSS") }
                LevelText { text: i18n.tr("A good idea but, alas, the dragon was no fiend and could not be banished. The dragon's breath scorched Lancelot's face.") }
                LevelLabel { text: i18n.tr("> KILL SERPENT [Strike it repeatedly]") }
                LevelText { text: i18n.tr("Lancelot's blow barely scratched the dragon's scales. The dragon's breath scorched Lancelot's face. The dragon prepared itself for a deadly strike. Lancelot redoubled his efforts and slightly wounded the dragon. The dragon's fire belched forth again, and Lancelot felt himself nigh unto death. [This is rather one-sided, so a key is pressed to stop the command.]") }
                LevelText { text: i18n.tr("Did Lancelot want to continue? NO") }
                LevelLabel { text: i18n.tr("> RAM RESTORE [Return to position saved earlier]") }
                LevelText { text: i18n.tr("Lancelot was at a junction in the road, where a winding track joined it from the north. Exits led north, east and west. Lancelot could see a signpost.") }
                LevelLabel { text: i18n.tr("> EXITS OFF [Stop reporting exits]") }
                LevelText { text: i18n.tr("OK. A great roaring was heard in the distance.") }
                LevelLabel { text: i18n.tr("> E") }
                LevelText { text: i18n.tr("Lancelot rode east and came to the edge of a great river. Lancelot could see a small boat. This fragile craft bobbed high in the water, rocked by every wave, its awning of white samite fluttering in the breeze.") }
                LevelLabel { text: i18n.tr("> GET INTO BOAT") }
                LevelText { text: i18n.tr("Lancelot seated himself in the boat.") }
                LevelLabel { text: i18n.tr("> E [To move boats, just enter the normal compass directions.]") }
                LevelText { text: i18n.tr("The boat sailed east and was at the far side of the river. Lancelot could hear the sound of distant cheering, carried on the summer air.") }
                LevelLabel { text: i18n.tr("> RUN TO TOURNAMENT [Like GO TO, but without describing the moves]") }
                LevelText { text: i18n.tr("Lancelot climbed out of the boat.") }
                LevelText { text: i18n.tr("[A little time passes.]") }
                LevelText { text: i18n.tr("Lancelot was on the tournament field surrounded by milling crowds. He could see Sir Lavaine a priest and a great altar. 'Hail, best of knights', said Sir Lavaine, 'I have been waiting for you.'") }
                LevelLabel { text: i18n.tr("> EXAMINE ALTAR") }
                LevelText { text: i18n.tr("It was a massive block of granite, carved with all manner of signs of the cross. A sword was sticking through the altar. The priest noticed Lancelot's interest. 'Wit ye well', he said, 'that the haft and pommel of this sword are made of the bones of divers beasts; and its virtue is that he handleth it shall never be weary or hurt. But it belongs only to he that shall win the tournament'.") }
                LevelText { text: i18n.tr("[Perhaps the sword is what is needed to defeat the dragon, or perhaps it will protect Lancelot so he can lead the beast to the thorns, so its firey breath will burn them. In either case, Lancelot must first prove victorious in the tournament...]") }


            }

            StorySection {
                sectionTitle: "Background"
                sectionOpen: backgroundText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: backgroundText.visible = !backgroundText.visible
                }
            }
            Column {
                id: backgroundText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("The legends of King Arthur and the Knights of the Round Table are known to all, but it is a sad fact that most modern interpretations, whether games, films or stories, seem to owe nothing to the original tales.") }
                LevelText { text: i18n.tr("You have surely seen the programs with Arthurian titles that, for example, turn out to involve something called 'Merlin' jumping from platform to platform, while zapping orcs with fireball spells.") }
                LevelText { text: i18n.tr("Well, we got tired of waiting for someone else to do a proper job, so here's our faithful interpretation of the Arthurian saga. And, putting this on one side, I think it's our best game to date. I hope you enjoy it.") }
                LevelText { text: i18n.tr("Lancelot is based on Sir Thomas Malory's Le Morte D'Arthur, published by William Caxton in 1485, as one of the first books to use modern printing.") }
                LevelText { text: i18n.tr("Le Morte D'Arthur was an amalgamation of Arthurian stories of that time. It omits a few of the tales, and anyone who thinks bugs are a modern invention should consider its multiple Elaines and wounded kings, but it is the main English source on King Arthur and an undoubted literary classic.") }
                LevelText { text: i18n.tr("(If you want to read the full Arthurian legends yourself, however, I recommend The Once and Future King by T.H White. It's a fairly free adaptation, but infinitely more readable).") }
                LevelText { text: i18n.tr("A much shorter version of the Arthurian legends is enclosed, as background to the game. We have tried, in both this and the game, to use modern English while keeping some of the linguistic flavour of Malory's original.") }
                LevelText { text: i18n.tr("The adventure follows Malory's story, from the foundation of the Round Table to its finest hour, the finding of the Holy Grail. Lancelot was chosen as the hero because, while Arthur remains passively at court, Lancelot rides out to earn the title of Best Knight in the World. He rescues damosels and captive knights, and goes on to become the only first-generation Round Table knight to see the Holy Grail.") }
                LevelText { text: i18n.tr("The game starts with a new scene in which Lancelot meets Arthur. After this, it follows Malory pretty faithfully, but omits the detailed jousting results and obscure feuds, which must have numbed generations of English students. It also ascribes to Lancelot a few adventures which originally starred the likes of Gawain or Tristram. Apart from this, however, Lancelot sticks closely to the book.") }
                LevelText { text: i18n.tr("You don't get showy magic or excessive violence. What you do get is a game which recreates the Arthurian world, with both traditional adventure puzzles and some of the ethical problems involved in becoming a parfait knight.") }

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

                LevelLabel { text: i18n.tr("Hints for part 1, Camelot") }
                LevelText { text: i18n.tr("• Lancelot must go to Camelot to be knighted by Arthur."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Next, he becomes the best knight by valorous deeds in Logris."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Finally, on his return, Lancelot must look to Guenever."); width: parent.width - marginColumn * 2 }
                LevelLabel { text: i18n.tr("Hints for part 2, Logris") }
                LevelText { text: i18n.tr("• Despite the Damosel Maledisant's manner, her quest is genuine."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• You score points mainly for freeing all the captive knights, and Lancelot can command them."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Ensure Galahad can come to Camelot."); width: parent.width - marginColumn * 2 }
                LevelLabel { text: i18n.tr("Hints for part 3, The Quest for the Holy Grail") }
                LevelText { text: i18n.tr("• Remember that virtue is what is important, so avoid sins."); width: parent.width - marginColumn * 2 }
                LevelText { text: i18n.tr("• Galahad is the holiest knight."); width: parent.width - marginColumn * 2 }

            }

            StorySection {
                sectionTitle: "The Birth of a King"
                sectionOpen: birthKingText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: birthKingText.visible = !birthKingText.visible
                }
            }
            Column {
                id: birthKingText
                visible: false
                width: parent.width
                spacing: units.gu(1)

                UbuntuShape {
                    width: parent.width
                    height: width * .72
                    anchors.horizontalCenter: parent.horizontalCenter
                    aspect: UbuntuShape.Flat
                    source: Image {
                        source: "../../../../graphics/lan-st01.png"
                    }
                }

                LevelText { text: i18n.tr("IN the days when Uther Pendragon was King of all England, the mighty Duke of Tintagel stood out against him and for a long time held war against the king.") }
                LevelText { text: i18n.tr("After many battles, Uther sent for the Duke, that they might talk of peace. But he also charged him to bring his wife, Igraine, for Uther had heard that she was most fair. And when the Duke and his wife were with Uther, the king declared his love to her. Igraine was much distressed and warned the Duke her husband that they should flee, for the king surely intended her dishonour.") }
                LevelText { text: i18n.tr("After they had departed secretly, Uther was wonderly wroth, both for pure anger and great love of fair Igraine.") }
                LevelText { text: i18n.tr("The Duke heard warning of this, and anon he made provision for a long siege. He set Igraine in Tintagel Castle, the which he strongly fortified, while he set out for Castle Terrabil. Ere long, Uther's pavilions and knights surrounded Terrabil and a bitter battle began.") }
                LevelText { text: i18n.tr("But Uther was sick with his love, and remained listless in his tent, so that his knights were greatly worried. In hope of finding a cure for the king, one of his men set out to seek Merlin, a wizard well renowned for his knowledge of ancient crafts and remedies. And Merlin said that he would help Uther, if Uther would be sworn to reward Merlin in his turn. The noble knight assented that Merlin should have whatever he desired if he could make Uther whole again.") }
                LevelText { text: i18n.tr("Merlin rode to Uther's pavilion, where he told the king that Uther might spend the night with Igraine, for by Merlin's magic, he would appear to her in the likeness of her husband. In return, Uther must deliver any child, born of their union, for the magician to raise.") }
                LevelText { text: i18n.tr("Uther could not hold his patience, and rode out with his party for Tintagel at once. The Duke espied Uther's knights riding hard, as if in retreat, and he left his Terrabil fortress to pursue in all haste. On the field, he met with Uther's remaining men, and was himself slain ere the king came to the castle of Tintagel. And so, as Uther lay with Igraine, she was already a widow.") }
                LevelText { text: i18n.tr("Igraine thought her lover that night was her husband; but when she heard tell of the Duke's death she marvelled who that knight who lay with her might be. Even when she assented unto marriage with Uther, to unite their two houses, he did not tell her.") }
                LevelText { text: i18n.tr("And when the child was born, Merlin came, as he had told Uther he would, to take the baby away, reassuring the father he would be well-nourished.") }
                LevelText { text: i18n.tr("But Uther was not able to spend a long and happy life with Igraine. Within two years he had fallen sick of a great malady and died, to Igraine's great sorrow, for she had learned to love him.") }
                LevelText { text: i18n.tr("The rule of the kingdom fell into jeopardy, for there was no known heir. Many lords made claim to the throne, and fought bitterly for the right to reign, but none could take the kingdom by just cause.") }

            }

            StorySection {
                sectionTitle: "The Sword in the Stone"
                sectionOpen: swordStoneText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: swordStoneText.visible = !swordStoneText.visible
                }
            }
            Column {
                id: swordStoneText
                visible: false
                width: parent.width
                spacing: units.gu(1)

                LevelText { text: i18n.tr("AFTER years of great feuding, Merlin went to the Archbishop of Canterbury and counselled him that he would find the right-born king. All the lords of the realm and all the gentlemen of arms were summoned to London for a New Year's Day tournament, when the new ruler would be revealed.") }
                LevelText { text: i18n.tr("Sir Ector, his son Kay and his adopted son Arthur were among those who rode to London for the jousting, Kay making great excitement, for he was to be made a knight at the tournament. Yet, as they rode to the jousts-ward, Kay discovered with dismay that he had lost his sword, for he had left it at their lodging. He prayed young Arthur to run back to collect it.") }
                LevelText { text: i18n.tr("Arthur found the inn empty and locked; everyone had already left to see the tournament. Trudging dolefully back to his father and brother, he went through a churchyard, where near the high altar, he espied, to his joy, a sword. It was stuck through an anvil, set upon a wide marble stone, and glittered in the winter sunlight.") }
                LevelText { text: i18n.tr("'I will take that sword', Arthur decided. 'My brother Sir Kay shall not be without a sword today of all days'. He grasped it firmly and found that it came easily out of the anvil. Hurrying after his party, he never noticed the words that were written in gold about the sword.") }
                LevelText { text: i18n.tr("But when Arthur delivered the sword to Kay, his brother turned quite pale. For Kay too had seen the sword in the stone in the churchyard, but he had also seen what Arthur had not, the lettering around it, which read, 'WHO SO PULLETH OUT THIS SWORD OF THIS STONE AND ANVIL, IS RIGHTWISE KING BORN OF ALL ENGLAND'.") }
                LevelText { text: i18n.tr("A small smile appeared on Kay's face as he took the sword from Arthur, and so he rode to find Sir Ector. 'Look, father', he cried. 'I have the sword from the stone. I must now be King of all England.'") }
                LevelText { text: i18n.tr("Sir Ector was no fool. He took both Kay and Arthur back to the churchyard, and he made Kay swear upon a book how he had come by the sword.") }
                LevelText { text: i18n.tr("Kay faltered. 'My brother Arthur brought it to me', he said. Ector turned to his adopted son, and Arthur explained how he had taken it. Then Ector replaced the sword in the anvil and told Arthur to pull it out again.") }
                LevelText { text: i18n.tr("'There is no great skill to it', said Arthur airily, and lifted it smoothly and cleanly out of the anvil.") }
                LevelText { text: i18n.tr("Then Ector and Kay both tried pulling the sword from the stone for themselves, with all their might, but it would not move. When the two elder men learned full well that the sword would give only for Arthur, they both knelt down to the earth before him.") }
                LevelText { text: i18n.tr("'Nay, Arthur, I am not your father, nor of your blood', said Sir Ector gently, and for the first time he told him how Merlin had delivered him to Sir Ector as a newborn baby, and charged him to nourish Arthur as his own.") }
                LevelText { text: i18n.tr("At Pentecost, young Arthur was crowned at Carleon and took on the heavy duties of King of all England.") }

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
                    text: i18n.tr("Concept and game design:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Game program:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Mike Austin") }
                LevelText {
                    text: i18n.tr("Story and final game text:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Christina Erskine") }
                LevelText {
                    text: i18n.tr("Remainder of this booklet:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Pictures:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Joan Lamb, Neil Scrimgeour, Dicken Peeke, Nusarath Jahan") }
                LevelText {
                    text: i18n.tr("Systems:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Mike and Nick Austin, John Jones-Steele, Mike Bryant") }

                LevelText {
                    text: i18n.tr("Transport to your Micro:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Nick Austin and Mike Bryant") }

                LevelText {
                    text: i18n.tr("The best of the books consulted were:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Le Morte D'Arthur (two volumes). Malory, Penguin") }
                LevelText { text: i18n.tr("Sir Gawain and the Green Knight. Anon/Brian Stone, Penguin") }
                LevelText { text: i18n.tr("The Once and Future King. T.H. White, Flamingo (Fontana)") }
                LevelText { text: i18n.tr("The Plain Man's Guide to Ethics, William Barclay, Fount (Collins)") }

                LevelText {
                    text: i18n.tr("The most disappointing:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("The Book of Merlin. T.H. White, Flamingo(Fontana)") }
                LevelText { text: i18n.tr("The Mists of Avalon. Marion Bradley, Sphere") }

                LevelText {
                    text: i18n.tr("And the most peculiar:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("The Cauldron and the Grail. Nick Mann, Annenterprise of Glastonbury") }
                LevelText {
                    text: i18n.tr("The historical Arthur seems to be a mythologised composite of war leaders from southwest England and Wales, dating between the slow collapse of Roman Britain, and the Saxon influx from the east. But we cannot recommend any of the over-inflated books on the subject. By far the best works are tourist guides to individual sites, such as:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Arthurian Sites in the West. Radford and Swanton, Exeter University") }

            }


        }

    }
}
