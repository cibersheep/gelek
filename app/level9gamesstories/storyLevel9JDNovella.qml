import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Web 0.2
import "../components"

Page {
    id: jdNovella
    anchors.fill: parent
    header: GelekHeader {
        id: sdNovellaHeader
        title: i18n.tr("The Darkness Rises")
        flickable: novellaFlickable
    }

    //Colors
    property string lightColor: "#90435e"
    property string darkColor: "#842244"
    property string lighterColor: UbuntuColors.porcelain

    //Margins
    property int marginColumn: units.gu(1)


    ScrollView {
        anchors.fill: parent
        Flickable {
            id: novellaFlickable
            anchors {
                fill: parent
                topMargin: sdNovellaHeader.height + units.gu(8)
                bottomMargin: units.gu(5)
            }
            width: parent.width
            contentHeight: mainColumn.height + units.gu(5)

            Column {
                id: mainColumn
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: units.gu(8)
                Column {
                    id: chapter0
                    width: parent.width
                    spacing: units.gu(2)
                    Text { text: "The Darkness Rises"; width: parent.width - marginColumn * 2; font.bold: true; font.pixelSize: units.gu(4); color: darkColor; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter}
                    Label {
                        width: parent.width - marginColumn * 4
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        text: "Index"
                        font.bold: true
                        font.pixelSize: units.gu(2)
                        color: darkColor
                    }
                    Text {
                        width: parent.width - marginColumn * 28
                        height: units.gu(10)
                        text: "Slide Headers for Options"
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        color: lightColor
                    }

                    NovellaItem { thisChapter: "Chapter 1";  flick: chapter0.height + units.gu(8) }
                    NovellaItem { thisChapter: "Chapter 2";  flick: chapter0.height + chapter1.height + units.gu(8) * 2 }
                    NovellaItem { thisChapter: "Chapter 3";  flick: chapter0.height + chapter1.height + chapter2.height + units.gu(8) * 3 }
                    NovellaItem { thisChapter: "Chapter 4";  flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(8) * 4 }
                    NovellaItem { thisChapter: "Chapter 5";  flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }
                    NovellaItem { thisChapter: "Chapter 6";  flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }
                    NovellaItem { thisChapter: "Chapter 7";  flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }
                    NovellaItem { thisChapter: "Chapter 8";  flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }
                    NovellaItem { thisChapter: "Chapter 9";  flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }
                    NovellaItem { thisChapter: "Chapter 10"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }
                    NovellaItem { thisChapter: "Chapter 11"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }
                    NovellaItem { thisChapter: "Chapter 12"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + units.gu(8) * 12 }
                    NovellaItem { thisChapter: "Chapter 13"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + units.gu(8) * 13 }
                    NovellaItem { thisChapter: "Chapter 14"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + units.gu(8) * 14 }
                    NovellaItem { thisChapter: "Chapter 15"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + units.gu(8) * 15 }
                    NovellaItem { thisChapter: "Chapter 16"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + units.gu(8) * 16 }
                    NovellaItem { thisChapter: "Chapter 17"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + units.gu(8) * 17 }
                    NovellaItem { thisChapter: "Chapter 18"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + units.gu(8) * 18 }
                    NovellaItem { thisChapter: "Chapter 19"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + units.gu(8) * 19 }
                    NovellaItem { thisChapter: "Chapter 20"; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + units.gu(8) * 20 }
                    NovellaItem { thisChapter: "Credits"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + units.gu(8) * 21 }

                }

                Column {
                    id: chapter1
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "1"; flickNext: chapter0.height + chapter1.height + units.gu(8) * 2 }

                    ParagraphText { text: "As he struggled to raise himself, a searing shaft of pain stabbed through his skull and set a deep throbbing thrumming in his temples. He was blinded by an angry vivid light though his eyes were closed, lids weighed down by a weariness that reached from the depths of his tortured body." }
                    ParagraphText { text: "He tried to lift an arm, and the pain redoubled, sweeping in a rush, a floodtide of great waves of crashing agony that crashed on the shores of his innermost self. A cry escaped his lips, bitten back almost as soon as it was sounded. Even in the tormenting tires of his pain, the treacherous cry was accursed. He must show no weakness." }
                    ParagraphText { text: "Once more he fought to sit up and to look about him. A heavy hand rested on his shoulder and held him down." }
                    ParagraphText { text: "“Be still. Be still. You have suffered much. You must rest.”" }
                    ParagraphText { text: "The deep voice rumbled softly, easing through the agony and from the heavy hand flowed a gentle strength that reached into his soul and pressed back the tide of pain. The glaring agony dimmed and he sank once more into the darkness." }
                    ParagraphText { text: "He slept the deep sleep of exhaustion, but in the early dawn he woke again, drenched in sweat yet icy cold, haunted by the hideous faces of the nightmare. Nightmare? Nightmare? No, for it had been!" }
                    ParagraphText { text: "He opened his eyes and looked at the firelight flickering on the rough-hewn walls, but he saw only the light of his camp fire and the dancing points of light reflected off the vicious curved blades and in the vicious animal eyes of the shrieking, leaping, hacking devils that had burst upon them from the blackness of the night, from the blackness of the caverns of evil, bursting into their circle of light and life and sweeping through it in a ravaging torrent of death." }
                    ParagraphText { text: "He saw again that evil face, eyes afire with the lust of destruction, mouth agape and great crooked fangs poised to plunge into his throat. The howl of triumph. Then the sudden jerk, and the howl of death and the black tongue lolling and the choking cough and the black blood welling and the blackness covered him." }
                    ParagraphText { text: "He recoiled from the vision and with the movement the pain returned, but the voice and the hand were there." }
                    ParagraphText { text: "“Be still.”" }
                    ParagraphText { text: "And he was still and slept once more." }
                }

                Column {
                    id: chapter2
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "2"; flickNext: chapter0.height + chapter1.height + chapter2.height + units.gu(24)}

                    ParagraphText { text: "Brandon the dwarf jutted out his chin and stared at the dragon, waiting for it to make its move. Slowly the dragon reached out a horny claw towards him, then suddenly it snatched at his beard and lifted it." }
                    ParagraphText { text: "“Keep your beard off the board. I can't see the pieces” it hissed. “And I know you cheat behind it!” It lifted the beard higher, pulling Brandon's chin up until all he could see was the cavern roof high above. With its other claw, the dragon rearranged the red and blue gems on the chequered board." }
                    ParagraphText { text: "“Your move, master dwarf!” It let go of Brandon and gave him a leering grin. The dwarf looked at the board and knew he had been had again. The dragon was a terrible cheat. It was probably a rotten loser too, but until they got to the end of a game without it cheating, Brandon would never know." }
                    ParagraphText { text: "“Looks like you win again, Oh Great One.” said Brandon. “Another game? Double or quits?”" }
                    ParagraphText { text: "“Why not? I do enjoy our little games.” The dragon picked up a long golden sword encrusted with jewels and bit a nick out of the blade. “How much do you owe me now?” it asked, counting along the nicks. “1, 2, 3, 8,16, … er … 22, … um 40 bags of gold. One of these days, master dwarf, you are going to have to pay your debts.”" }
                    ParagraphText { text: "“One of these days I might win!” said Brandon brightly. The dragon belched smoke as it laughed." }
                    ParagraphText { text: "Brandon coughed and wiped the smoke from his eyes as he set up the board again. This time he was going to watch the dragon like a hawk and make sure it didn't cheat." }
                }

                Column {
                    id: chapter3
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "3"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(32) }

                    ParagraphText { text: "In the days that followed he was aware of waking time and again into pain and the presence of the big man. The pain eased, but the big man was always there. He remembered bowls of a hot sweet infusion, and the taste was there still, redolent of forest herbs and wild mountain honey. Its warmth and fragrance had done much to dispel the cold nightmare of suffering." }
                    ParagraphText { text: "He heard a movement on the other side of the room, and turned to the noise. He saw a broad back bent by the tire, thick coarse hair merging into the thick coarse fur of a dark wolfskin jacket. He heard the sound of a pot being stirred and the rich smells of thick broth wafted across to him." }
                    ParagraphText { text: "Fully awake now, he realised that the one who tended him must also be the one who had saved him from a savage death. There could have been no other, for he had seen all his comrades fall around him, hacked and torn. He should have died too." }
                    ParagraphText { text: "“Mayhaps. Now it's time to eat.  “ He brought a bowl of broth over to his patient and propped him up in the pallet bed.  “Eat.”" }
                    ParagraphText { text: "The food was good, and as he ate, he took in his surroundings. It was a cottage in the old style, with low walls and a steep pitched roof of hewn logs. In the centre of the room a hearth of stone held a fire now burning low. In its orange red light he could see the skins of bears and wolves on the floor around it. Beside the fire lay a dog almost as huge and shaggy-haired as the man who squatted on a stool by the bed." }
                    ParagraphText { text: "“Who are you that tend me?”" }
                    ParagraphText { text: "“Peasants call me the Woodman. You shall too.”" }
                    ParagraphText { text: "“I am no peasant!” He spoke sharply, stung into life and for a moment forgetting his blood debt.  “I am sorry, I owe you my life. I should not speak so.”" }
                    ParagraphText { text: "“Ha!” the Woodman cut him off with a brief laugh.  “There's fire in you yet. That's good. And as for your life - when I killed that orc I didn't know it was still there to be saved.”" }
                    ParagraphText { text: "“Orcs! So that's what they were. I had heard of them, but I thought they were the stuff of old men's tales and children's nightmares.” In his mind's eye, he saw them again. Smaller than men, and wiry, clad in coarse leather with breastplates of steel, and helmets of steel low over the coarse leather of their skull-like faces. Most of all he remembered the gleaming eyes of red, and the yellowed ivory of the glistening fangs." }
                    ParagraphText { text: "“What were you doing in the Old Forest?” The Woodman's question cut through his vision.  “It's a dark place for a young prince.” His eyes glittered with amusement as he watched the reaction." }
                    ParagraphText { text: "“How do you know who I am?”" }
                    ParagraphText { text: "“I could see it in your pride, even if your clothes and the uniforms of your men hadn't made it clear. Prince Tobiah isn't it? I have heard of you - and heard well.”" }
                    ParagraphText { text: "“Thank you. Yes, I am he. Would that I had heard of you before we set out. You would have been a good man to have had on our expedition.”" }
                    ParagraphText { text: "“You were hunting wolves.” It was a statement, not a question." }
                    ParagraphText { text: "“Yes. They terrorise our people, those few that still try to scratch a crop from the dried up lands in the valleys below. We sought to rid the forest of wolves, but there are so many! We had killed four score or more in a se'nnight, yet still we heard their howls from all quarters of the forest. And then chance brought the orcs upon us.”" }
                    ParagraphText { text: "“Not chance! The orcs hunted you as you hunted the wolves.” The Woodman turned and spat into the fire in disgust. The sharp sizzle woke the great hound. It turned its head and looked at his master. He caught the mood and bared his teeth in a snarl. The Woodman nodded.  “Yes Dog, orcs. He picked up their trail at sunset four days ago. I saw then that they were on the track of men. Would that we had caught up with them sooner. There was little to do by the time we reached your camp.”" }
                    ParagraphText { text: "“My men did well,” Tobiah recalled with pride. Though taken unaware, they had fought back and wreaked a heavy toll on their attackers.  “Would that there had been more of us... Woodman,” he asked after a moment's silence,” what brought those orc bandits to the forest?”" }
                    ParagraphText { text: "“They were no bandits, Tobiah, and they were not the only orcs in these parts. The forest has been infested with them throughout this last year. At first they came in twos and threes - spies! Though few returned to tell of what they found.” He nodded towards a great longbow of yew that stood in a corner beyond.  “This last month they came in greater numbers - the vanguard of an encroaching army, if I'm right. They seek to seal off the forest, to mass in its cover ready for an assault on your country.”" }
                    ParagraphText { text: "“Why did we know nothing of this?”" }
                    ParagraphText { text: "“The Kingdom of Valaii has grown soft in the long years of peace.” He snorted his contempt.  “When did your father last send a patrol beyond the borders?”" }
                    ParagraphText { text: "“It's true,” Tobiah replied,  “my party was the first in many a year to venture into the Forest.”" }
                    ParagraphText { text: "“And that only at your insistence?”" }
                    ParagraphText { text: "The Woodman expected no answer. He could see in the face of the prince the strength of the ancient kings and perhaps some little hope for the future." }
                    ParagraphText { text: "Tobiah lay silent. There was much to do, if he but knew where to begin." }

                }

                Column {
                    id: chapter4
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "4"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }

                    ParagraphText { text: "“Lutist, stop!” cried Queen Gwendalan, catching a noise from beyond the window. The musician laid a hand on the strings so that they could hear the street sounds more clearly. “The people shout. Does it mean that Tobi has returned at last?”" }
                    ParagraphText { text: "“By the Gods, it's time he did.” King Astuin wrung his hands. “I should never have let the boy go on that foolishness.”" }
                    ParagraphText { text: "The hubbub grew closer, bursting into the courtyard below. A wailing of grief foretold ill tidings. Soon footsteps were pounding towards the Royal chambers. The guard outside tapped briefly on the door, then opened it in haste." }
                    ParagraphText { text: "“My son! What news of my son?” asked the king desperately." }
                    ParagraphText { text: "“None, my Lord” replied the guard. “Two merchants bring ill news from the northern road.”" }
                    ParagraphText { text: "Dusty, dishevelled, nearly dropping with exhaustion, the two staggered into the room and fell at the king's feet. “Orcs!” they cried." }
                    ParagraphText { text: "“Where? Out with it!”" }
                    ParagraphText { text: "“My Lord,” panted the leader of the merchants, “our caravan was passing through the valley by the edge of the great forest. Of a sudden one of the outriders cried 'eres. Flee for your lives.' We turned, and the valley sides were black with orcs rushing down upon us. My companion and I were at the head of the caravan and our horses are swift, else none would have returned to tell the tale.”" }
                    ParagraphText { text: "“Orcs!” cried the king in horror. “Oh ye Gods, truly the darkness rises around us and will swallow us up!”" }
                    ParagraphText { text: "“Our son! He said they came from the forest!” cried the Queen. “What of our son? Is he too slain? Do you have news?” she implored." }
                    ParagraphText { text: "The merchants shook their heads slowly and dolefully." }
                    ParagraphText { text: "“Hush, woman.” The king spoke harshly to hide his fears. “We know nothing yet. Guard!” he called, “Call the High Council together immediately.”" }
                    ParagraphText { text: "The king's command was scarcely needed, for the councillors, hearing the cries of 'eres' spreading through the city, were already hurrying to the Great Hall." }
                    ParagraphText { text: "It was a sombre and despairing meeting of the High Council. Too many of its members had grown old and softened by the years of ease and peace. Even the great drought and the plague of wolves that afflicted the northern provinces had done little to stir them. Food was never short for the rich in the city, but the loss of the caravan to the orcs had shaken them to their souls, and to their pockets." }
                    ParagraphText { text: "“I am ruined!” cried Kerrinan of the Merchant's Guild. “I had ten thousand ducats invested in that caravan.”" }
                    ParagraphText { text: "“And I,” moaned Verdin, the Royal Wizard. “I had sent money with the traders too on your advice!” He turned on Kerrinan." }
                    ParagraphText { text: "“It's the army's job to protect those roads and keep them safe for honest travellers.” replied the merchant, looking at Eliglas, the Chief Marshall. “All the taxes I have paid these many years, and what is the army doing now?”" }
                    ParagraphText { text: "“The army is short of men and short of arms.” retorted Eliglas. “Those taxes you complain of were never enough to defend the Kingdom properly. Anyway,” he continued, turning to Verdin, “the wizards should have warned us. These are orcs, not human foes. There must be magic at work.”" }
                    ParagraphText { text: "Verdin sat with his head in his hands and said nothing. The others lapsed into melancholy silence." }
                    ParagraphText { text: "“Where's Jarnac? Why isn't he here when we need him?” asked the king at last. Jarnac was crusty and sharp-tongued, but at least he wouldn't be wailing and wringing his hands like the other wizards. “Where is he?” King Astuin demanded, glaring at the Royal Wizard." }
                    ParagraphText { text: "“I know not, my liege.” Verdin replied. He chose to say nothing of his last meeting with the old wizard. It was one that he would have preferred to forget. Jarnac had warned him that he felt evil was at work; that the great drought and the plague of wolves had been brought upon them by the black arts; that the Dark Lord had returned to Dom Burnur, the Black Tower beyond the northern mountains. He had even warned that they should soon see the shadow of orcs in their lands. Verdin had called him an old fool, frightened by the weather and a few wild animals, and had forbidden him to spread panic with his fears. He had felt no evil magic in the air, and was he not the greatest of them? Was he not the Royal Wizard? Jarnac had left the city the same day, but his parting remark stayed with Verdin. “I shall seek out the truth.” He had said. “Pray that find it before it finds you.”" }
                    ParagraphText { text: "“Would that Prince Tobi were here.” muttered one guard to another as they stood by the door. “These have no stomach for war.”" }
                    ParagraphText { text: "The king then turned to his marshall. “This is an army matter, Eliglas. I expect action immediately.”" }
                    ParagraphText { text: "“I shall send an expeditionary force out directly, sire. I think we can clear up these orc bandits within a few days.”" }
                    ParagraphText { text: "“If I may say, my liege…” Verdin interposed hesitantly. “It may well be that this ambush is but part of a larger problem. Taken with the other signs - the drought, the wolves, the disappearance of the Prince Tobiah one might suspect some evil hand behind it. It may be that a Dark Lord has returned to the Black Tower and will try again to conquer our world.” The wizard was still not convinced that Jarnac had been right, but he felt it prudent to give the warning now if only to protect his own position. His announcement caused instant consternation. Where before men had grieved for their lost wealth, now they feared for their very lives. “The Demon Lord!” exclaimed the king. “Why was I not told of this earlier?”" }
                    ParagraphText { text: "“It is but a surmise, Your Majesty. We have no firm evidence. We could perhaps send a party to investigate…”" }
                    ParagraphText { text: "“No!” The king cried fearfully. “If he has returned, we must act immediately. I want the full army assembled within the week. I want ambassadors sent to all our neighbouring friends entreating their support in this terrible time. I want the defences of the city strengthened, and you, Eliglas - you must send troops today to the forest to drive out those orcs and search for my son.”" }
                    ParagraphText { text: "“It shall be done.” Eliglas bowed to the judgement of the king." }
                    ParagraphText { text: "And so it was done. And so it came to pass that on the third day's march from the city, 200 horsemen of the Queen's Guard and 600 foot soldiers of the Second Regiment reached the plain below the hills of Culdaron. Terror and death waited for them there." }
                }

                Column {
                    id: chapter5
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "5"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }

                    ParagraphText { text: "Brandon had been right. The dragon was a rotten loser. When Brandon finally managed to win a game, it had bitten the score sword clean in two and eaten the jewelled handle. And when Brandon had asked nervously if he could collect his gold now, it had snarled “What gold? You said double or quits, and now we're quits!” Then it clambered back up onto its huge pile of treasure and sulked." }
                    ParagraphText { text: "The dwarf, with more greed than good sense, had suggested another game. His idea had been greeted with a sudden jet of flame that had set this beard on fire." }
                    ParagraphText { text: "Now he sat in a passage just off the great cavern, trimming the singed ends of his beard and planning his next move. There was another opening on the far side and a couple of interesting looking sacks close by it. He might just be able to grab those and get away. All he had to do was to find a way round the cavern." }
                    ParagraphText { text: "It was a journey no man would have attempted. The passages were narrow and twisted and as black as pitch. Brandon set off steadily, feeling his way, aiming to stay at the same level and to circle around the cavern. Ofttimes he would stop as his keen ears picked up a distant sound. The hoarse shout of an orc, the eery flapping of a giant bat, the scurrying of some small creature or the heavy slither of things too evil to be thought about." }
                    ParagraphText { text: "He trudged on. Sometimes squeezing through tight corridors, sometimes inching his way along narrow ledges above bottomless canyons. For a while he marched on a broad highway that sloped gently upwards, then stumbled and staggered down precipitous winding stairs. All too often the passages ended in disused storerooms - long since emptied of anything of interest or value - or in boulder-strewn rockfaces where once dwarves had mined for precious metals. And always he went in a timeless darkness." }
                    ParagraphText { text: "Who knows how long he had travelled before at last he smelt the foetid stench of dragon blowing strongly towards him, and saw the glint of gold at the end of a tunnel. He hurried on silently, then paused and risked a quick glimpse through the open”ing. He was back where he had started." }
                    ParagraphText { text: "“Hello,” said the dragon. “Fancy a game of chance? I'm, bored.”" }
                }

                Column {
                    id: chapter6
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "6"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }

                    ParagraphText { text: "Tobiah woke from a deep healing sleep. He lay still for a moment, flexing his muscles and feeling their repsonse. The wound in his arm still troubled him and would slow him down in a fight, but he knew he was strong enough to walk and he must return to the city." }
                    ParagraphText { text: "He rose into an empty room. Both the Woodman and his hound had gone. Hunting? Perhaps, thought Tobiah, for there was little enough to eat and he was ravenously hungry. He found some bread and the remains of a roast hare and set to. Later he strapped on his sword and stepped out into the bright light of an autumn morning." }
                    ParagraphText { text: "The Woodman's cottage was built in a small clearing encircled by tall oaks. Tobiah looked around, trying to get his bearings, and as he turned he saw a hawk launch itself from the top of the tallest tree and beat its way powerfully up and away to the south east. He stared after it with envy. “Ha! If I could fly like you, I would be home before nightfall.”" }
                    ParagraphText { text: "“Then it's as well that you can't. I need you elsewhere.”" }
                    ParagraphText { text: "Tobiah span round in surprise, drawing his sword clumsily. He let it fall back in its sheath as he saw who had spoken. “Jarnac! What brought you here?”" }
                    ParagraphText { text: "“My feet. And they're sore, and I'm hungry. Did you leave me any breakfast? I don't suppose so, but no matter. The Woodman knows I have arrived. He'll bring something back with him.”" }
                    ParagraphText { text: "“How does he know? Have you seen him?”" }
                    ParagraphText { text: "“He knows everything that happens. His birds keep him informed. Did you not see the hawk that went to tell him that you were practising at being an orc's target.”" }
                    ParagraphText { text: "The young prince looked again at the dark spaces between the trunks of the great trees. “Are they, then, around here?”" }
                    ParagraphText { text: "“No, but you weren't to know that. Come inside. We'll build a fire to roast that young fallow deer that the Woodman has shot, and you can tell me of your adventures with the orcs while we wait.”" }
                    ParagraphText { text: "Tobiah followed him into the cottage, marvelling at the old wizard." }
                    ParagraphText { text: "Later, as they sat around the table eating vension, Tobiah asked how Jarnac had known about the deer. The Woodman answered the question." }
                    ParagraphText { text: "“He didn't. He was just hopeful. Jarnac's been living on roots and berries up in his cave. He was eager for some real meat. Isn't that true?” He grinned at the wizard." }
                    ParagraphText { text: "Jarnac nodded and took another bite. “Thank you, old friend. I knew you wouldn't fail me, but I haven't just been sitting in my cave.” He waved away Tobiah's unasked questions and spoke no more until he had finished eating." }
                    ParagraphText { text: "At last the wizard pushed himself back from the table and wiped his grey beard. “Now, Tobiah. You were going to ask me something?”" }
                    ParagraphText { text: "“Indeed! Will you now tell me what brings you here? I didn't know that you and the Woodman were friends. He never spoke of you. And also, what of this cave of yours?”" }
                    ParagraphText { text: "Jarnac spoke slowly, savouring a pot of the Woodman's beer. “The cave is but a day's long walk from here. I have used it for many a long year, retreating there whenever I needed to think deeply or to search out truth. The city is no place for that. It is too full of distractions for inner peace, and its walls too high for distant friends. And if he did not speak of it to you, why should he? He has never been one to say more than is needful. Is that not right?”" }
                    ParagraphText { text: "“Get on with it, Jarnac. Even I don't know why you are here. Though I can guess.”" }
                    ParagraphText { text: "“And perhaps you would be right. There's little that escapes your knowledge. You will know, Woodman, and you may have guessed, Tobiah, that the storm clouds are gathering over our lands. That skirmish of yours with the band of orcs was but the smallest hint of what is to come. Soon the whole land will ring to the stamp of orc armies on the march.”" }
                    ParagraphText { text: "I must get back to the city to alert them!” burst in Tobiah." }
                    ParagraphText { text: "“There's no need. They already know of the orcs. Jarnac, you have missed this on your travels. A host of the enemy passed through the southern bounds of the forest last week and descended upon a merchants' caravan and slew them. A few managed to escape and reach the city.”" }
                    ParagraphText { text: "“Then the orcs could be at the gates of the city by now. I must return and lend my sword to the fight.”" }
                    ParagraphText { text: "“Be still, Tobiah.” The Woodman chided him. “The city is not yet in danger for the host was not that great. Now pay heed to Jarnac. He has come far to speak with us.”" }
                    ParagraphText { text: "“Indeed, Tobiah.” The wizard looked steadily at the young prince. “Your sword will be little use until your wound is fully healed, but you have within you the spirit of ancient kings. It gives you a strength that will be of more value in another part of this battle. Don't worry about the city. Its walls can withstand a long siege if it comes to it. There is a greater danger in the mountains to the north, and that is where we must go.”" }
                    ParagraphText { text: "Tobiah had been ready to argue with the wizard, but at the hint of his mission he fell quiet and waited to hear more. The Woodman sat impassively, patient and watchful as the forest itself." }
                    ParagraphText { text: "“There is a Dark Lord again in the Black Tower. If I am right, his name is Agaliarept, a warrior wizard terrible in battle and a master of the black arts. l have heard some rumours of him in the far northern lands, and it would seem that he seeks to extend his empire to encompass us. It was he who sent the wolves to plague us, who holds back the clouds so that our lands shrivel in the burning sun, who directs the orc armies and is even now stirring yet viler creatures in the bowels of the Earth. But fearsome though his armies are, the danger lies less in them than in his magic. The darkness of his great presence spreads out from the Black Tower and falls as a shadow to chill the hearts of men and to cloud their minds with fear. Yet his power is not complete. I can feel him questing, searching the lands for that final link that will join the chains to enslave us all.” The wizard fell silent and the room grew still and dark." }
                    ParagraphText { text: "“What is this link?” asked the Woodman at last." }
                    ParagraphText { text: "“I know not. I know only that he has found the Stones of the Elements and unlocked their secrets. There were other gems and rings and amulets that the great ones of old invested with their powers. I know from his works that he has gathered many of these unto him, but something is yet missing or his darkness would have already fallen upon us all. We must seek out the source of his power and destroy it, or find that weakness in his armour that will let us drive a blade into the black heart of his evil. Either way our quest must take us within the very bounds of his dark empire.”" }
                    ParagraphText { text: "“Come, the road ahead is long and grim.” The Woodman spoke sombrely, aware of the dark days ahead, and seeing in his mind's eye the foreboding Orc's Head, dark gateway to a dark land. “Let us at least start in full sun.”" }

                }

                Column {
                    id: chapter7
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "7"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }


                    ParagraphText { text: "It was just before noon that one of the forward scouts came galloping back to the main column. He headed directly to Thomback Hamber, Captain of the Queen's Guard and leader of the expeditionary force." }
                    ParagraphText { text: "“Sire, the enemy! Less than an hour's march from here.”" }
                    ParagraphText { text: "“How many and where?” As he spoke, Thomback reined in his steed and signalled the column to halt." }
                    ParagraphText { text: "“About a hundred in all, mainly orcs with some dwarves and men - Northmen by their red hair and the axes they carry. They are camped on the far side of a stream bed just below yonder hills. A rise in the land conceals them from view.” The scout paused, then added, keen to do battle, “Do we attack, Sire?”" }
                    ParagraphText { text: "“We haven't marched all this way for the exercise.” said Thomback grimly. He knew that the enemy ahead was but a fraction of the main force, and wanted a good victory that would inspire his men for the more difficult times to come. “To attack their camp directly will cost us many men. I know that land, and the steep sides of the stream bed are as good as fortress walls. Ellyett!” he called to his second-in-command. “Take sixty horsemen and make a feint at their camp. Fall back immediately towards that rise where I shall be waiting with the foot soldiers. Denat will take the rest of the horses and circle round in the cover of the hills. The enemy will charge after you believing that you are routed and then...” he snatched at the air with his hand, “...we will have them in our grasp and slaughter them.”" }
                    ParagraphText { text: "Ellyett's troops rode off ahead of the main column, the sunlight glinting off their burnished armour, and the pennants on their lances fluttering in the wind of their passage. As they topped the rise, the riders' hearts filled with the excitement of battle. The enemy lay before them, unsuspecting and at their ease." }
                    ParagraphText { text: "“Onward men of Valaii! Onward to victory!” Ellyett cried, launching his horse down the slope at the gallop, attacking with such vigour that the enemy could not suspect it for a feint." }
                    ParagraphText { text: "“Valaii and victory!” his men shouted with one voice and the tide flowed onto the enemy's shore." }
                    ParagraphText { text: "But waves break upon the shore, and just so was the onslaught checked by the orcs. They leapt to their weapons and rushed out to meet the charge. Their black barbed arrows found targets in the flesh of men and horses, and their curved swords hacked at the riders as they fought their way up from the stream bed. For a few moments the fight was poised along the edge of the bank, lances plunging, swords and battle-axes flailing, then Ellyett took up his horn and sounded the retreat." }
                    ParagraphText { text: "The riders whirled and swept away as swiftly as they had come. The orcs shouted in triumph and ran after them. Ellyett's horsemen galloped up the slope, drawing the enemy after them into Thomback's trap. But the trap did not close. Where were his Captain's foot soldiers that should now have been rushing down to join the fray? Where was Denat's troop that should have been sweeping in from the side?" }
                    ParagraphText { text: "As Ellyett reached the top, the truth struck him like a blow. They were the ones who had been trapped. The orc camp was bait for them, and their every move had been foreseen. Denat's horsemen had been scattered by a host of orc riders that must have lain in wait for them in the hills. The remnants of the troop were even now flying towards the main column with terror at their heels. Wolves were steeds for the orcs and their howling echoed across the plain. From behind Thomback's army and from the right, dense lines of orcs closed in at the trot, the thunder of their feet and the clamour of swords on shields striking fear into the men of Valaii." }
                    ParagraphText { text: "Ellyett's riders wavered at the sight before them, but he rallied them with a great cry “To me, men of Valaii! To me!” and as a troop they galloped across the plain and into the midst of the battle." }
                    ParagraphText { text: "He led his men across the path of the wolf-riders, hewing to left and right and breaking their charge. His fleeing comrades rallied to his cries and turned once more upon their foes. Hound they surged in a milling mass of men and orcs, of horses and wolves, half-blinded by the clouds of dust churned up from the dry plains, half-deafened by the cries of battle and the clash of steel on steel." }
                    ParagraphText { text: "At last the orc cavalry withdrew. The wolves, maddened by the iron-shod hooves that lashed at them, were throwing off their riders and running wild. Ellyett looked around to count the cost to his troops and to view the main action beyond. Of two hundred riders that had set out from the city, but two score remained mounted and fit. The foot soldiers were faring little better, their dwindling band hard-pressed on all sides, yet the standard still flew aloft. Thomback Hamber could be seen in the thick of it, urging his men to hold firm against impossible odds." }
                    ParagraphText { text: "Once more Ellyett rallied his men and led them against the enemy. Once more the sharpness of his sword and the valour of his voice gave new heart to near-exhausted men. For a moment it seemed as if his charge might turn the tide of the battle, but its impact was absorbed by the great mass of orcs and the cavalry were pressed back." }
                    ParagraphText { text: "In the burning heat of the afternoon sun and the choking dust of the plain, the fight raged on; the black noose of orcs drawing ever tighter around the men of Valaii. Then Thomback saw his chance. For a moment there was a clear path through to the enemy leader who directed his troops from the back of a great black stallion. He was a tall and thick-set orc with a single, gleaming eye. Thomback spurred his horse forward, his sword held high and the cry of 'Valaii' ringing across the blood-soaked field." }
                    ParagraphText { text: "The huge orc turned to his attacker and they met with a crash of tempered steel. Their battle steeds whirled and lunged at each other as man and orc fought blade to blade and shield to shield. Around them all other action ceased and all eyes were drawn to this combat of champions. Thorn back at first gained the initiative and began to press the orc back into the ranks of his army, but his opponent steadied, then turned the fight with a mighty blow that snapped the man's sword in two. The Captain of Valaii pulled back, cast aside his sword and took up the ball and chain that hung from his pommel. As he swung it about his head the orc pressed home his advantage and thrust his scimitar into Thomback's breast. Yet the man fell not, but gathering all his dying strength he smashed the heavy spiked ball into the orc's head." }
                    ParagraphText { text: "The orc leader, his skull crushed, fell from his horse but Thomback, the scimitar protruding from his breasts remained mounted, the ball and chain still swinging in his hand. “Valaii!” he cried again, and the host of orcs turned and fled. And then he fell." }
                    ParagraphText { text: "Thus ended the battle of Culdaron." }
                }

                Column {
                    id: chapter8
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "8"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }

                    ParagraphText { text: "“Perhaps the Great One would like a song?” suggested the dwarf. Legend had it that here in the dragon's hoard was the Harp of the Sirens - the harp with the magical power to lull to sleep all who listened to it." }
                    ParagraphText { text: "The dragon thought about it for a moment, then rummaged through the glittering mound on which it lay. It pulled out a golden flute and tossed it to Brandon. “Yes, sing me a song.”" }
                    ParagraphText { text: "“Oh Wondrous Light of the World, I fear I cannot play a flute and sing at the same time. Would you perhaps have a harp?”" }
                    ParagraphText { text: "The dragon snorted. It liked the sound of flute and voice. “You're a poor musician.” it accused Brandon, then gestured behind him. “Try over there in the chest. I think I put one there.”" }
                    ParagraphText { text: "Brandon raised the heavy brass-bound lid of a great oaken chest and trembled at the sight that met his eyes. Never before had he been so close to so much wealth. True, the mound that was the dragon's bed was worth infinitely more, but the dragon kept him at a distance from that. He lifted the treasures cut one by one and placed them lovingly on the floor beside him. Cunningly carved ornaments of brilliant green jade and the purest ivory; a golden crown beset with a dozen matching black rubies; a statuette almost a foot long fashioned from a single flawless diamond; rings, necklaces, belts and bracelets without number, all of glittering gold and heavy with rare gems." }
                    ParagraphText { text: "“Come along, master dwarf!” The dragon grew impatient. “Get the harp and put those oddments away.”" }
                    ParagraphText { text: "The dwarf shook his head to try to clear it of the togs of gold-greed. He could see the harp now, and picked it from the chest. It was the Harp of the Sirens, of that there was no doubt. What other harp would be made of white gold and decorated with golden shells inset with pearls as big as a dwarf's hand? He grinned at his cunning, and went back to the dragon." }
                    ParagraphText { text: "“I hope the song is about gold. I like songs about gold.” The dragon stared at Brandon, daring him to sing about anything else." }
                    ParagraphText { text: "'Well, it starts 'The golden day...' You'll like it.” said Brandon hopefully." }
                    ParagraphText { text: "The dragon putted a cloud of grey smoke as if to say 'I'd better'. Brandon payed a few melodic chords then struck up a song that his mother had taught him when he was but a dwarf-child." }
                    ParagraphText { text: "“The golden day is ending, The time for play is done, It's time to lay your head in sleep, For sleepeth now the sun.”" }
                    ParagraphText { text: "The dragon yawned and settled closer to Brandon." }
                    ParagraphText { text: "“Though night is drawing on us, Be not thou atear'd, But lay your head in mother's lap, And hold your mother's beard.”" }
                    ParagraphText { text: "The dragon fell asleep, with a smile on its face. Its head lay in Brandon's lap and it clutched Brandon's beard tightly in its taloned claw. The dwarf didn't notice. He too had fallen asleep as soon as the song had ended. " }

                }
                Column {
                    id: chapter9
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "9"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }

                    ParagraphText { text: "Their path took them along narrow forest trails, winding steadily northwards and upwards. By late afternoon they had left the oaks and beeches of the lower slopes, and entered into a more rugged land ot dense pines. There were no sounds of bird or beasts up there, and the pine needles beneath their feet deadened the noise of their passage." }
                    ParagraphText { text: "They passed the night among the firs, and the next day marched many miles beneath the dusty, low-hanging boughs. At length, the trees thinned out, and by noon they stood on a rocky upland clear of the Great Forest. Jarnac scanned the barren hills and cliffs ahead, then turned and cast his eyes over the tree-clad lands behind them." }
                    ParagraphText { text: "“Woodman, you are a marvel” The wizard congratulated him. “How many leagues have we travelled through that sea of greenery, scarce ever seeing more than a few yards in front of us? Yet you bring us out just here, within sight of our first goal, the Pinnacle of Obdurat. I must ascend that pinnacle. It is a place of seeing.” He pointed to a spire of rock that rose from the hills before them." }
                    ParagraphText { text: "As they walked the final mile towards the pinnacle, Jarnac explained his purpose to Tobiah. “Within our lands and the lands of the enemy, there are several such places of seeing. They have a magic within them that makes each place an aspect of the other. From that pinnacle I shall be able to see, not merely the land around here, but the land around every place of seeing. I believe that in the ancient days, when the magic was stronger, a man could transport his whole body - not just his vision - from one such place to another. Would that we commanded that magic now. It would save my poor feet much labour!" }
                    ParagraphText { text: "Do you think that the Dark Lord possess the secret of the places?” asked Tobiah." }
                    ParagraphText { text: "“There is no great secret to the seeing, Tobi. Many magicians have acquired that art, and we can use it to communicate with each other, though as most of the places are in these distant parts, they are little used normally. As for the Dark Lord, I think I may even have come upon that one, once. It was some time ago, before he began to expand his evil upon us. I think he had but newly discovered the power of the places, and thought that he alone commanded it for I sensed great surprise in him. I also sensed a force of hatred and fury, far more potent than any I had ever felt before. Then he was gone. In after times, some of the places became clouded with a mist that obscured vision. I seek now to clear those mists and to learn his plans.”" }
                    ParagraphText { text: "By then, they had reached the pinnacle, and as the old wizard began to mount the steep and narrow steps, Tobiah asked after him “Is there not great danger for you in this?” But Jarnac replied not." }
                    ParagraphText { text: "While they waited for the wizard, Tobiah and the Woodman sat and ate in silent contemplation of the lands before them. The pinnacle was on a ridge of high land above a rocky-sided valley that opened out onto a great rolling plain. In the far distance, shimmering in the heat of the day, was a thin line of purple-blue; the mountain wall that marked the edge of the Dark Lord's vastness. The land between was dry and barren, save for a few stunted trees and patches of burnt-out gorse at the mouth of the valley below." }
                    ParagraphText { text: "A thin, brief cry from the pinnacle made them start. Swiftly they ran up the rocky staircase only to find, when they reached the top, that the wizard was no longer there." }
                    ParagraphText { text: "“Has he then discovered the power of movement between the places?” asked Tobiah breathlessly." }
                    ParagraphText { text: "“No,” replied the Woodman. “For look, he has left his wand behind. It is the Demon Lord who has that power, and who has taken him.”" }
                    ParagraphText { text: "“Then we must rescue him!”" }
                    ParagraphText { text: "“We must try.” His older companion said grimly. “The wand points to the eastern end of yonder mountain chain. The Black Tower lies there, and there we may find him.” The Woodman tucked the wizard's wand into his belt and led the way down again." }
                    ParagraphText { text: "Once more at the base, they shouldered their packs and prepared to set out." }
                    ParagraphText { text: "“Wait!” said the Woodman, catching sight of a movement high in the sky. It was a hawk far above, winging swiftly towards them. The bird circled once over their head, then flew off, turned and came back low flying as straight and true as an arrow. It rose and landed on the pinnacle." }
                    ParagraphText { text: "“What does it mean?” asked the young prince." }
                    ParagraphText { text: "“Orcs! A party is coming swiftly towards us along the line of the ridge. The enemy may have seen us, or may have guessed that Jarnac had companions on his journey. There will be too many for us to fight in the open. Let us find shelter in the valley. There are caves in its rocky sides where we may hide or stand and fight if need be.”" }
                    ParagraphText { text: "The Woodman led Tobiah at a scramble down the slope, dog loping swiftly alongside. Near the bottom they found a deep, high-mouthed cave and flung themselves into its cool darkness. They lay still, breathing deeply and Silently, straining to catch any sounds from beyond. But another sound came first to their ears. A deep regular rumbling from deeper in the cave told them that they were not alone. They peered into the darkness and tasted the air. The heavy smell of sweat and badly cured leather, and an undertone of cold roast meat suggested orcs or wild mountain men, but the rumbling snores told of a much larger frame. And as their eyes became accustomed to the darkness they could see the great bulk of a giant lying on a bed of skins." }
                    ParagraphText { text: "Tobiah shifted his position to bring his sword to hand, and the movement upset a small pile of bones by his feet. The rattle as they fell echoed through the stillness of the cave. The giant stirred and yawned mightily. He scratched his massive gut and stretched out arms as long as a man is tall, then he yawned again. The travellers pressed cautiously back into the deeper shadow against the cave wall." }
                    ParagraphText { text: "Other sounds now reached them - the soft padding of leather-soled feet on rocky ground and the sniffing of an orc tracking his prey. The giant also heard the sounds and rose from his bed. Tobiah could scarcely believe how one so large could be so nimble and silent. The giant crept swiftly to the cave mouth, paused and listened, then leapt outside. They heard the orc cry in surprise, and the swish of a sword being unsheathed, then a sickening crunch as the giant caught up his victim and dashed him against a rock." }
                    ParagraphText { text: "The deep voice rumbled softly as the giant returned, trailing the orc by one leg. “Ho, ho. Roast orc for supper. Better than scrawny goat, though I'd rather 'ave a bit of man-flesh. Bin a long time since I 'ad any of that. It's you lot what 'ave done it. Driving all them good tasty farmers away. Right I'll 'ang you up by the chimney, and see if I can find another 'un. You never comes one by yourselves." }
                    ParagraphText { text: "The giant left the orc hanging upside down at the back of the cave and returned quietly to the hunt. As he reached the cave mouth he paused, the smell of men reaching his nostrils. He turned and looked towards the travellers, though seeing them not in the darkness of shadow. The Woodman and Tobiah prepared to sell their lives dearly, but the giant turned away again, hearing more orcs outside." }
                    ParagraphText { text: "“Cor! Loads of 'em. I'll not go 'ungry this month.” He picked up a massive club from the floor by the cave mouth and went outside." }
                    ParagraphText { text: "“What now, Woodman?”" }
                    ParagraphText { text: "“Leave the orcs to him, and him to the orcs. Come! He spoke of a chimney. There may be a way out there.”" }
                    ParagraphText { text: "The chimney was a natural feature of the rock, a wide fissure that angled steeply upwards and backwards. Though it was slippery with greasy smoke, the two men and the dog were able to scramble up through it, emerging into daylight on a brush covered slope. There was no sight of ires, though the sounds of fighting drifted to them over the hill from the valley beyond. As they climbed down the slope, the cries of the orcs ceased one by one." }
                    ParagraphText { text: "“We have lost time, Tobiah, and I fear for Jarnac. Let us hurry.”" }
                    ParagraphText { text: "Together they set off at a steady trot northwards across the wide and dusty plain." }

                }

                Column {
                        id: chapter10
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "10"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }

                        ParagraphText { text: "King Astuin sat brooding in the Council Chamber, scarcely aware of Marshall Eliglas, his aides and the other councillors who were brooding over maps spread out on the great table. Why, after so many centuries of peace, had the orcs chosen his reign in which to return? He was no warrior king. He didn't even enjoy hunting, let alone battle, and was now tar too old to ride out at the head of an army. Why couldn't they have waited ten or twenty years when Tobiah would be king? He would have thrown himself into the campaign heart and soul - probably pulled some good young bloods round himself too. The king looked balefully at the ageing marshall and his fluttering advisers." }
                        ParagraphText { text: "And what of Tobiah anyway? The queen had scarcely stopped crying in the week since the merchants had brought news of the orcs. And when she wasn't crying she was cursing the king for allowing the boy to go off alone. Boy! Tobiah was over twenty - a grown man. And the king had sent him with a guard of a dozen men. That seemed more than enough for anything at the time." }
                        ParagraphText { text: "A disturbance at the door made the king look up. Verdin, the Royal Wizard came hurrying across." }
                        ParagraphText { text: "“My liege! I have had communication from Jarnac. He has much news of the enemy - and of your son.”" }
                        ParagraphText { text: "“News!” cried the king eagerly. “Is it good? Is he yet alive?”" }
                        ParagraphText { text: "“Some good news, my liege. Prince Tobiah is alive and well, but...”" }
                        ParagraphText { text: "“Enough!” The king cut him off sharply. “Does the queen know this?”" }
                        ParagraphText { text: "“No, my liege I came straightway to you. But...”" }
                        ParagraphText { text: "“Later, Verdin.” The king called to a servant. “Take the news to Her Majesty that Verdin has spoken with Jarnac the wizard, and that Prince Tobiah is alive and well.” He waited until the servant had left, then turned once more to his councillor. “Only good news for Queen Gwendalan. She has worn me out with her crying this week. Now you may tell me the rest.”" }
                        ParagraphText { text: "“Jarnac spoke to me from the Pinnacle of Obdurat - it is to the north of the Great Forest on the borders of the wastelands. Prince Tobiah was with him, and though wounded in a fight with orcs was much recovered. They intended to press across the waste into the enemy's vastness...”" }
                        ParagraphText { text: "“You forbade it, of course. I cannot allow the prince to go there!” the king burst in." }
                        ParagraphText { text: "“My liege, he wouldn't listen to me. He...”" }
                        ParagraphText { text: "“You blithering fool! Do you know what the queen will do when she hears of this?”" }
                        ParagraphText { text: "“My liege!” implored the Royal Wizard. “There was nothing I could do!”" }
                        ParagraphText { text: "“Her Majesty must not know of this.” The king was adamant." }
                        ParagraphText { text: "“The secrets of the High Council do not pass beyond this door.” said Kernnan the merchant, who also had a wife. The other councillors nodded their support, and the king looked a little relieved." }
                        ParagraphText { text: "“Jarnac also had news of the enemy.” Verdin began again. “He had a vision within the realm of the Black Tower and had seen a great army assembling and beginning to march east - towards Valaii.” He paused for a moment and tried to find the right words in which to convey the rest of Jarnac's message. “He estimated the force at one hundred thousand orcs, and suggested that we would be unable to defeat them on the field. He - Jarnac - suggested,” the wizard continued over the protests of the marshall, “that we seek a solution in magic.”" }
                        ParagraphText { text: "“Poppycock!” cried Marshall Eliglas. “We have defeated them once on the field of battle. We shall do so again. Magic, ha! Where has your magic got us so far?”" }
                        ParagraphText { text: "“Have we defeated them?” asked Verdin. “What news is this?”" }
                        ParagraphText { text: "Eliglas showed the magician a scroll. “A messenger brought this within the hour. The expeditionary force met with an army of orcs on the plains at Culdaron. After a fierce fight, the orcs withdrew, and our troops return. Casualties were heavy on both sides. This is Captain Ellyett's report on the campaign.”" }
                        ParagraphText { text: "“Did not Hamber lead that force?” asked the magician." }
                        ParagraphText { text: "“Thomback Hamber died gloriously in combat. His body is being borne back to the city.”" }
                        ParagraphText { text: "“Do you mind if I read Ellyett's report?” Verdin was sure that the marshall was leaving much unsaid about the battle, but knew that the young Captain could be relied on to give a fair account. He took the scroll and read it silently. At length he spoke quietly to the marshall. “Ellyett estimates a force of two thousand orcs against the eight hundred of ours. He puts the enemy's dead at under a thousand, while our own force is reduced to a miserable handful. They were outmanoeuvred and outfought and they would have been utterly defeated had it not been for Thomback Hamber's valiance. How can we repel one hundred thousand orcs, especially now that the flower of our troops lie dead at Culdaron?”" }
                        ParagraphText { text: "“We have full twenty thousand men under arms now, and the promise of as many again from our neighbouring princes. As for the enemy's numbers, we have only Jarnac's word for that. My army stands ready to defend our country.” The marshall spoke stiffly to Verdin." }
                        ParagraphText { text: "“Can we not sue for peace?” asked Kerrinan. The merchant had little faith in either Eliglas' army or Verdin's magic." }
                        ParagraphText { text: "“Peace with the orcs?” Verdin laughed bitterly." }
                        ParagraphText { text: "“Never!” cried Marshal Eliglas. Then he added, impetuously. “My liege, I ask permission to lead my forces against the enemy.”" }
                        ParagraphText { text: "“Not all of them!” replied the king in haste. “The city must remain well guarded. You must leave at least half of them here.”" }
                        ParagraphText { text: "The marshall thought over his command, and weighed the likelihood of Jarnac's estimates being right. “Then perhaps, Sire, I shall wait for Ellyett's return and send him with ten thousand to o~n forces with our allies against the enemy. I shall supervise the defence of the city myself.”" }
                        ParagraphText { text: "“Do what you will.” said the king." }

                }
                Column {
                        id: chapter11
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "11"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + units.gu(8) * 12 }


                        ParagraphText { text: "Jarnac lay where he had been thrown on the filthy floor of an evil-smelling dungeon. He had seen much from that magic place on the pinnacle, and had managed to contact the Royal Wizard in the city to pass his knowledge on, but he had lingered too long. The Demon Lord had felt his questing eye and had come to him, face-to-face. They had locked their wills in combat, and though Jarnac was strong, the enemy was stronger yet and had prevailed. He had beaten down the old wizard's defences and swept through, capturing him bodily and transporting him to another place deep within his citadel. There he had given him into the charge of his orcs to guard until he had time to spare to question the wizard. His jailers locked and bolted the cell door, then one went to report to his chief." }
                        ParagraphText { text: "Grok, Keeper of the Orc's Head Tower - for that is where Jarnac had been taken - was in his room staring out of the single round window. For over two hours he had been standing there, watching the Demon Lord's army march across the bridge of stone and down to the crossroads beyond. From there the soldiers were turning southwest towards Valaii. Many thousands had already passed, and many more thousands yet were still assembling in the great caverns beneath and behind the guard tower." }
                        ParagraphText { text: "“Chief… It's me, Zaxz.”" }
                        ParagraphText { text: "“What is it?” Grok snarled, without turning his gaze." }
                        ParagraphText { text: "“We just put a prisoner in the fourth dungeon. Some wizard what 'is Worship caught. We gotta keep 'im safe, 'cept if 'e tries any of 'is magic, we've gotta chop is 'ead off. An' if we don't keep 'im safe…”" }
                        ParagraphText { text: "“'imself'll chop our 'eads off, right?” Grok growled, and turned at last. “Who's bleeding, think 'e is? That's what I wanna know. Who does all the bleedin' work round 'ere? Who goes out an' gets 'emselves killed? Eh? Orcs! That's who! An' who sits around where it's safe giving the orders, livin' off the fat of the land? Eh? 'imself! That's who! It ain't right. Orcs does the work. It oughta be an orc as sits on 'is throne.”" }
                        ParagraphText { text: "“Don't talk like that Chief! 'E'll 'ear you! 'E'll 'ave you strung up inside out!” Zaxz whispered frantically." }
                        ParagraphText { text: "“Bleedin' nonsense! 'E won't know nothin' unless some squealin' rat goes thin' 'im. Now you wouldn't do that would you?” Grok grabbed the guard by the throat and hissed in his face." }
                        ParagraphText { text: "“No, Chief, no!”" }
                        ParagraphText { text: "“'Ere, did you say a wizard? A wizard like 'imself?” The trembling orc nodded. Grok let go of him and paced the floor. “A wizard, eh?” he mused, his small red eyes gleaming brightly. “Now tell me, my lad, what's 'imself got what we 'aven't? Don't know, do you? Well I'll tell you. 'E's got a bleedin' great big army - what's just marchin' out the door - and 'e's got magic. Now we got our little lot what's lookin' after the tower - all mates from the same cave - an the only soldiers what'll be left 'eere soon. Now just suppose we 'ad a wizard of our own… then we'd 'ave magic, and we wouldn't need 'im. Would we?”" }
                        ParagraphText { text: "“Nah, it wouldn't work.” Zaxz shook his head, then stopped as cunning overcame fear. It might just work. It was certainly worth playing along with Grok. If things started to go bad, he could always shop him to the Dark Lord - perhaps get his job as keeper. He grinned conspiratorially. “Yeh, why not. I'll go get the others.”" }
                        ParagraphText { text: "“Not yet.” Grok stopped him quickly and gestured to the open window and the marching army beyond. “Wait till that lot 'ave gone. An' wait till I've 'ad a word with this 'ere wizard.”" }
                        ParagraphText { text: "Jarnac stirred as the heavy feet of the orcs tramped into his cell. He had been stunned by his encounter with the Demon Lord and he had to struggle to bring his mind back into focus. He was aware of an orc bending over him, a horny hand pulling him up by his beard and a warty face only inches from his own." }
                        ParagraphText { text: "“Wizard!” Grok hissed, and the foulness of his breath made Jarnac snap his head back. The orc turned to his fellow, “Zaxz! 'E's awake. Go and keep that lot busy out there. I want a bit of quiet chat with our friend 'ere.”" }
                        ParagraphText { text: "Grok waited while the wizard sat up, then handed him a flagon. “It's alright.” he urged, as Jarnac refused it. “Some men's drink. Never touch it meself.” He preferred the flagon again. The wizard took it cautiously, sniffed and tasted it. A honey liquor, thick and sweet with a fiery heat. He drank and felt the warmth spread inside." }
                        ParagraphText { text: "“Enough!” Grok snarled and grabbed the flagon. “Maybe a little more later if you're a good boy.”" }
                        ParagraphText { text: "The wizard stiffened. No orc was going to weasel information out of him. But Grok's questions were not what he expected." }
                        ParagraphText { text: "“Now what do you think's gonna 'appen to you, oh? Well, I'll tell you. As of right now, you got two choices. Either they torture you till you tell 'em what they wanna know an' then they kill you, or they torture you till you die without telling 'em nothin'. Not a lot o' bleedin' choice really is it?” Grok grinned evilly, then hunched closer. “But supposin' there was another choice, eh?… Now, I got a proposition for you, my old son…”" }

                }
                Column {
                        id: chapter12
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "12"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + units.gu(8) * 13 }

                        ParagraphText { text: "The dragon woke first and tugged Brandon's beard to wake him too. “I liked that, master dwarf. Sing me another - only make it a bit livelier this time.”" }
                        ParagraphText { text: "The dwarf shook his head to clear the fogs of sleep. Then the dragon shook Brandon's head. “I won't take no for an answer. I want another.”" }
                        ParagraphText { text: "“All right, all right!” said Brandon, half-dazed. “Just give me a minute or two, Oh Master of the Living Flame!”" }
                        ParagraphText { text: "“Only one.” The dragon spoke severely. “If you want two minutes, you'll have to give me two songs… Wait! That's a good idea. Let's have two songs - but make them about gold.”" }
                        ParagraphText { text: "“Yes, right.” Brandon though frantically, trying desperately to remember a song. He had heard so many in his hundred and forty years. Why couldn't he recall one - or two! - when he needed it." }
                        ParagraphText { text: "“Time's up!” The dragon was smouldering gently, ready to burst into flame if it didn't get its song." }
                        ParagraphText { text: "“Er… er… I've got one! It's called Gilmor's Quest for Gold. It's all about how a warrior is torn between love for a dwarvess and love of gold. You'll like this one.” He struggled to find the right chords on the harp, then began." }
                        ParagraphText { text: "“She was a golden maiden fair, And would have given him ought, Though gold her beard and gold her hair, 'Twas not the gold he sought.”" }
                        ParagraphText { text: "Getting drowsy, and beginning to dream about gold, Brandon lost concentration and got his fingers tangled in the harp's strings. The dragon looked at him crossly. It was enjoying this song. He snorted smoke and hissed at the dwarf. “Never mind about the harp, just get on with the song.” Brandon shrugged and carried on unaccompanied." }
                        ParagraphText { text: "“She loved her handsome warrior all, And the golden axe he carried, Full three foot two he stood in all, Oh, fain she would have married." }
                        ParagraphText { text: "Come sit by me and drink, she cried, Handing him a flagon. No, no, he said, for I must go, And kill that flaming… er… wolf.”" }
                        ParagraphText { text: "Brandon's song ended rather lamely. He peered up at tho dragon to see how it was taking the ending. The dragon was disappointed." }
                        ParagraphText { text: "“That doesn't rhyme. I don't like songs that don't rhyme. Why doesn't it rhyme?”" }
                        ParagraphText { text: "“O Living Volcano, O Golden-Winged Elegance!” said Brandon hurriedly before the dragon could think too much about rhymes. “I have just remembered. There's a whole scroll of songs in my pack. I left it in that passage. If your Smokiness will but wait, I'll go thence and fetch it.” He scurried off while ihe dragon was still thinking, and had reached the entrance to the passage before there was an explosion of anger." }
                        ParagraphText { text: "“Pah! It should have been 'flaming dragon'! Come back here you tricky little dwarf, and bring back my harp. I'll give you flaming dragons!” And to make its point, it sent a burst of fire after Brandon." }


                }
                Column {
                        id: chapter13
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "13"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + units.gu(8) * 14 }

                        ParagraphText { text: "All through the long hot afternoon, Tobiah, the Woodman and his hound ran across the baked-dry plains. As evening came, a wind sprang up and whipped the dusty earth into a choking, blinding fog that made further progress impossible. They stopped and took the enforced rest, then later, in the chill of the night when the air was again calm and the stars could guide them, they urged their weary legs into action once more." }
                        ParagraphText { text: "Through the night they ran, running through pain and exhaustion, running at last in a mindless state in which nothing existed save the ground beneath their feet and the Pole Star above their heads. In the half-light before the dawn, they saw the mountain wall looming high on the horizon and the plain falling away to their left in wooded valleys. They ran on, into the cover of the woodlands and there slumped down for a few hours' sleep. Towards sunset of that day the two men and the dog came onto an ancient road that ran eastwards from the edge of the woodland and across the grassy plain beyond. The weeds that grew through its cracked surface were trampled and crushed. The Woodman bent low and studied the road, then read the signs to his companion, pointing to faint marks as he spoke." }
                        ParagraphText { text: "“A great army has passed, heading southwest. Orcs without number - many mounted on wolves. A train of wagons with iron bound wheels, drawn by the sturdy ponies of the south, led by dwarves. Engines of war and siege towers drawn by oxen. Elephants, hunting leopards and the feet of many men from distant countries. All these have passed by in the last two days some but a few hours since.”" }
                        ParagraphText { text: "“The Demon Lord has spread his net wide to amass such a force. Now he seeks to engulf the world.” Tobiah spoke sombrely." }
                        ParagraphText { text: "“Perhaps,” replied the Woodman evenly, “but this army marched away from his lands. How many now are left to guard his fortress? Our passage will be much easier now that the army has gone, and Valaii is safe for yet a while. That great host must move slowly. Come, I would reach the Orc's Head before it is fully dark.”" }
                        ParagraphText { text: "They marched off with the setting sun at their backs and their shadows long before them. But the road also was long and the sun had sunk far below the horizon before they reached the cross-roads and saw the Orc's Head to the north. It looked an evil, fearsome place in the dismal twilight. A great head, fully sixty foot high, carved out of the solid stone at the base of a high cliff. Its stone tongue formed the bridge over a fast flowing river and led into the foetid darkness of the fang-fringed mouth. Beneath a massive brow, its stone eyes in deep sunken sockets stared a deadly challenge across the lands below. Many centuries ago, another Dark Lord had caused it to be built as a guard tower and gateway to his kingdom. Ancient battles and the long years of neglect had etched deep scars in the graven face, making it yet more grim and foreboding. Now once again it stood guard at the entrance to a land of evil." }
                        ParagraphText { text: "The hound growled deep in his throat, and his hackles rose. “Aye, dog. There's orcs in there, but go quietly now.” The Woodman laid a hand on its neck and calmed him down." }
                        ParagraphText { text: "“How far is the Black Tower from here?” asked Tobiah." }
                        ParagraphText { text: "“How far?” echoed the Woodman. “Time and distance have no meaning beyond that bridge, Tobiah. It has ever been thus. I ventured in there once, in the days before the Demon Lord took possession of the lands. How long I wandered I will never know. Beneath is a maze of unlit passages and caverns; above a marsh of mists and forgetfulness. I know only that the Tower is there, somewhere above and beyond, and that to find it we must go only where we least want to.” He pointed down the road. “Do you want to cross that bridge?”" }
                        ParagraphText { text: "Tobiah looked at the glaring Orc's Head and sensed the evil flowing out from it. “No.” he spoke heavily. “That must be the way.”" }
                        ParagraphText { text: "They set off up the road in single file, the Woodman in the lead, with his hound padding silently at his heels. As they crossed the narrow bridge of stone the noise of the rushing waters below rose up to greet them, but from within the gatehouse came no sound. They stepped inside the cavernous mouth with its broken rows of stone fangs jutting up from the floor and hanging low from the ceiling. All was still and quiet, then suddenly from somewhere deep inside, there came the echoing clang of an iron door being flung open, and distant sounds of harsh voices raised in angry argument. At the thundering of heavy feet running towards them, they drew their swords and made ready to fight. But the running stopped and instead they heard the lashing of a whip and cries of pain and death. Then the footsteps receeded, the iron door clanged again and all was silent once more." }
                        ParagraphText { text: "“What do you make of that, Woodman?”" }
                        ParagraphText { text: "“I know not, but it would seem that the guards have no time for us. Now, which way, Tobiah? I judge that Jarnac could be either in some dungeon or in the Black Tower itself. But which? The wizard would tell us to seek light in the darkest places, and the darkest opening is to that passage over yonder.”" }
                        ParagraphText { text: "They trod softly forwards, swords drawn and all senses alert. The passage angled sharply to left and then to right, but always sloping gently downwards. The air was cold, damp and heavy with the smell of orcs and the walls and floor were slippery with a slimy wetness. In that total darkness, where they dared risk no light, they moved slowly, feeling their way, listening for any sound that might guide them. They came to a junction and paused. To the left rose a flight of stairs, while to the right the passage seemed to continue downwards. Tobiah moved towards the stairs, but the Woodman held him back." }
                        ParagraphText { text: "“Listen and look!” he whispered. From up above there drifted a faint murmuring of voices, and there was the merest hint of light that suggested a flickering torch somewhere far out of view. “I would guess that leads to the guard rooms. We need to go much further in to find the Black Tower.”" }
                        ParagraphText { text: "The passage down which they now walked had many doors leading off it. Massive doors of wood or iron, at which they listened but heard nothing. Then at one where a slit of light beneath told of its use, the Woodman heard the scraping of stools on the floor and the sound of footsteps. He hurried Tobiah forwards urgently. They had gone only a few yards when the door opened, and an orc bearing a torch stepped out into the passage. He was startled to see the men and it was a moment before he turned to call to his fellow guards." }
                        ParagraphText { text: "“There are m…” The Woodman's swift sword cut him down before he could finish, but the damage was done. More orcs poured out from the guard room, swords and whips flailing." }
                        ParagraphText { text: "The Woodman and Tobiah fought back fiercely, hewing at the orcs with their swords. The great hound also lunged forward, massive jaws agape, but sheer weight of numbers told against them. They fell back steadily looking for some way of escape. Tobiah felt an opening in the wall beside him and turned to tell the Woodman. In that one brief moment that his attention slipped from the fight, an orc whip wrapped around his leg and jerked him off balance. Down he crashed through the opening, and headlong down a steep flight of stairs." }
                        ParagraphText { text: "Up above, the Woodman fought on with renewed ferocity, careless of his own life, seeking only to protect the young prince and to safeguard his escape. Blind to his wounds, he pressed forward, scything at his foes and hewing them to the ground. One by one the orcs fell, but they were all battle-hardened soldiers who sold their lives dearly. At last it was over. The orcs lay all around him, slain by the Woodman's sword or rent by the hound's fangs. And the Woodman, overcome by his many grievous wounds laid himself down by his dying dog, and together they passed into the spirit world." }


                }
                Column {
                        id: chapter14
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "14"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + units.gu(8) * 15 }


                        ParagraphText { text: "Brandon ran along the passage, the dragon's fire licking at his back. The stone walls echoed to the clatter of his clogs, the panting of his breath and the occasional twang as a harp string caught on a toggle. At last he reached a sharp bend and once round it, he was safe from any further jets of flame. I “Typical!” he puffed, pressing his back gratefully against the cold wall. “Two dozen ways out and I pick the straight one that's wide enough for it to get its head in! Still, mustn't complain. I've got the harp. It must be worth a king's ransom. I suppose 1 could even go back and sing it to sleep and collect a bit more…”" }
                        ParagraphText { text: "He walked on for some way, debating the issue with himself, weighing treasure that had been gained against even greater treasure that might be gained. At last, overcome by the memories of the dragon's hoard, Brandon sat down to think about it properly. How could he just walk away and leave it? But could he get any more? Perhaps a song would work - though he must remember to stop up his own ears first. Or perhaps there were other ways. The dragon must leave its hoard sometimes, if only to feed. Perhaps if the dwarf learnt the ways of the passages, he could even lure the dragon out then slip in and take a few sackfuls. As he lay day-dreaming, his hands stroked the golden harp making soft melodic music." }
                        ParagraphText { text: "An orc patrol found him there a few hours later, and carried him off, fast asleep. Brandon woke as he bounced down the steps into a cell. A hard thump in the back and a resonant twang told him that his harp had been thrown in after him." }
                        ParagraphText { text: "“You musicians ain't supposed to be down 'ere. You just wait till 'imself cars about this!” the guard shouted as he locked the door." }
                        ParagraphText { text: "The true strength of dwarves lies not in their thick muscles and sturdy bones, but in their resilience in the face of sudden misfortune. Brandon may have been a thief - though he would call himself an 'adventurer' - but he was a true dwarf. He waited until his orc jailers had settled to their supper in the guard room just beyond. Then he rose and sat by the iron bars of the door, stuffed his hair in his ears and struck up a song. It was one that he had composed while he was waiting." }
                        ParagraphText { text: "“There were four vicious orc soldiers, None worse in all the land, They loved to kill and maim their foes, To chop off head and hand.”" }
                        ParagraphText { text: "Brandon glanced round to check the reaction. So far, so good. The orcs seemed to be enjoying it." }
                        ParagraphText { text: "“Now Nazgarod their captain, Was the nastiest of them all, He used to grab foes by the nose, And smash them 'gainst the wall." }
                        ParagraphText { text: "But Grindlesocks the greedy, Was no use in a fight, As soon as he had killed a man, He'd sit down for a bite." }
                        ParagraphText { text: "While Bumblespots the horrible, Was a foul and filthy fiend. He'd… er…”" }
                        ParagraphText { text: "The dwarf let his song trail to an end. The orcs all seemed to be asleep, and he still hadn't worked out the rest of the verse. He couldn't find a rhyme for 'fiend'." }
                        ParagraphText { text: "It was then that he realised the shortcomings of his plan. The cell door was locked. The keys were on the table and the table was out of reach. He turned back into his cell to hunt for something long, found nothing and wandered back to the door. The fourth orc was standing there, holding out a plate of vile-smelling stew. The dwarf could see the other three slumped over the table, snoring loudly. He looked up at his jailer and wondered." }
                        ParagraphText { text: "“Would you like another song?” he asked hopefully." }
                        ParagraphText { text: "“Eh?” replied the orc, cupping a hand to his ear. “Speak up!”" }
                        ParagraphText { text: "“Never mind.” Brandon accepted the food through the bars and sat down." }

                }
                Column {
                        id: chapter15
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "15"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + units.gu(8) * 16 }

                        ParagraphText { text: "“Now then, mates. You all knows me, an' what I stand for, don't you. You all knows you can trust Grok, don't you. 'Ave I ever whipped or killed anyone as didn't deserve it? No, course not! Not like some as I could mention.” Grok gestured upwards in the direction of the Black Tower and there were grunts of agreement." }
                        ParagraphText { text: "“'Ere, Chief!” called a voice from the back. “We knows you, but who's this wizard you got with you?”" }
                        ParagraphText { text: "“Ah, don't you mind 'im. 'E's all right. I'll tell you why 'e's 'ere in a minute. The wizard you got to worry about, mate, is that other one up there. An' what I says is, who's 'e think 'e is, going round givin' out all the orders an killin' orcs what don't do just what 'e says. What I says is, it's time we got ourselves a new boss - an orc like us - what 'ud look after our interests, not 'is own.”" }
                        ParagraphText { text: "“Forget it!” another orc jeered. “You don't stand a bleedin' chance. Not an earthly. 'E'd 'ave yer guts for garters before you'd even started.”" }
                        ParagraphText { text: "“Guts! What would you now about guts? Apart from tilling that fat gut of yours…” Grok snarled back, and waited while the cruel laughter died down. “You need real guts for this. Guts enough to stand on your two feet an' say 'I'm an orc, an' orcs don't take orders from no wizards!'”" }
                        ParagraphText { text: "Grok looked over his audience as they cheered and shouted their approval. There were a few at the back who would need careful watching. “An' we can do it…” he went on, speaking more quietly, so that the other orcs had to be silent and listen. “…an' 'ere's 'ow. There's three score of us 'ere now, all orcs from the same cave, bin through thick an' thin together, an' we'll stick together in this one too. Out there in the rest of this place, there ain't no more than fifty - an' most of 'em 'll join us when they sees what's 'appening. So that's the fightin' sorted out, right?”" }
                        ParagraphText { text: "“What about his bleedin' great army?” Yeh, an' what about his magic?”" }
                        ParagraphText { text: "“Don't you worry yerself about the army, mate. By the time it gets back, we'll be in charge 'ere, an' the army'll do what its told, like what it always does. An' as for magic… that's where our friend 'ere comes in.” Crok cocked a thumb in Jarnac's direction. “We gotta wizard of our own. Only this one don't wanna be boss. 'E just wants to go 'ome, ain't that right, my old son?”" }
                        ParagraphText { text: "“Yeh, but is 'e any good?” asked a worried voice." }
                        ParagraphText { text: "Jarnac made no reply but looked steadily at the one who doubted his powers. The orc held his gaze for a brief moment then recoiled clutching his head. “All right, all right. Tell 'im to stop. I only wanted to know.”" }
                        ParagraphText { text: "“An' now you do.” Grok didn't know what Jarnac had done, or how, but it had done the trick. “All agreed then?” He glanced around the company." }
                        ParagraphText { text: "“No! I still don't reckon it'll work, an' anyway, I'd rather 'ave 'imself for boss than you. Look at all them battles what we won with 'imself tellin' us what to do.” “Yeh! But it were the orcs what done the fightin', an' it always will be. We'd 'ave won them battles without 'imself, but if it weren't for us, 'e wouldn't 'ave got nowhere.”" }
                        ParagraphText { text: "“You're wrong, Grok. An' I'm not gonna get meself killed for you. I'm off.” The angry orc stormed to the door and crashed it open." }
                        ParagraphText { text: "'Stop 'im!” shouted Grok. “'E'll squawk to 'imself an' ruin it.”" }
                        ParagraphText { text: "Zaxz stepped into the passage after the other, unwinding his whip as he moved. Before the running orc had gone ten paces, Zaxz had lashed out, catching him by the legs and bringing him crashing down. Flicking the whip free, he lashed the dazed orc again and again as he walked closer, down on his victim. One blow was enough. Zaxz turned and went back to the meeting, slamming the door shut behind him." }
                        ParagraphText { text: "“Any more objections?” Grok asked. “No? Right. Now we're all goin' down the stores to get ourselves some extra weapons, then we 'ead for 'is tower. Anyone we meet on the way, we gives 'em a choice - join us or get topped. When we get there, the wizard goes in an' sorts out 'imself - an' that's it! Right?”" }
                        ParagraphText { text: "“What 'appens then, Grok?” Zaxz asked the question that he had arranged with his chief." }
                        ParagraphText { text: "“We raid 'is cellar an' 'ave a booze up.” Grok knew that this would delight the crowd." }
                        ParagraphText { text: "The shouting, cheering orcs cleared a way for Grok across the room to the door. “Follow me, mates!” he cried." }
                        ParagraphText { text: "Jarnac was swept along in the crush. This was not the way he would have chosen to approach the Black Tower, but it was better than none. Quite how he was supposed to 'sort out' the Demon Lord was another matter altogether. Most of all he wanted to know what had happened to Tobiah and the Woodman." }


                }
                Column {
                        id: chapter16
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "16"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + units.gu(8) * 17 }

                        ParagraphText { text: "There was a thudding and crashing down the stairs towards the cell block. Brandon ignored it, the deaf jailer couldn't hear it and the other three slept through it." }
                        ParagraphText { text: "Tobiah lay stunned for a few moments, then picked up the sword that had clattered down ahead of him. He rose cautiously and painfully, peering through the open doorway to the jailers' room. Three orcs were slumped about a table - the stone walls echoed with their snoring - while a fourth was picking his teeth with a key, his head turned partly away from the man. Tobiah hefted his sword to his left hand, took up a club that stood against the wall and crept upon the unsuspecting orc. The club came down on the orc's skull with a loud thud that made Brandon turn and take notice. He watched with interest as Tobiah span round towards the other three, ready to deal with them too." }
                        ParagraphText { text: "“I shouldn't bother,” Brandon told him, “they'll not wake up for ages.”" }
                        ParagraphText { text: "“Who speaks?” asked Tobiah, startled by the dwarf's voice." }
                        ParagraphText { text: "“Brandon Branningon's son at your service, or will be if you would be so kind as to open this door.” replied the dwarf politely." }
                        ParagraphText { text: "“A dwarf, eh?” said Tobiah, picking up the keys and approaching the door. He looked closely at the captive." }
                        ParagraphText { text: "“Yes, but no friend of the orcs, as you can see.” He gestured to the keys and the lock. The prince eyed him doubtfully, for dwarves had a poor reputation amongst men and some were known to be in the Demon Lord's service. “And what are you doing in this place?” he asked." }
                        ParagraphText { text: "“I might ask the same of you, noble sir, for you are my visitor are you not?” The dwarf politely reminded Tobiah of his manners, but went straight into his explanation, for he was keen to be free. “I am, good sir, but a humble minstrel. I came to these parts by chance and was thrown into this dungeon for my pains. And I, who want only to please the world with my music… Shall I sing you a song?” He realised that if Tobiah fell asleep where he then stood, the keys would come into reach." }
                        ParagraphText { text: "Tobiah looked at the harp and laughed. “And what humble minstrel carries a harp of gold? Ha! I judge you for an adventurer, come to steal gold and caught in the act.” Even as he laughed he unlocked the door. “Come out, for I am an adventurer too, though it is not gold that I seek. I am Tobiah of Valaii, come here in search of knowledge. Now tell me again about yourself. But tell me no more lies!” He swung the club with half-serious menance to emphasise his point." }
                        ParagraphText { text: "“My noble lord is right. I am an adventurer in search of gold. There is a vast treasure here, guarded by the most cunning dragon. So far I have acquired only this harp - though it does have its uses!” He gestured with the harp towards the sleeping jailers." }
                        ParagraphText { text: "“A Sirens' harp, no less! And you would have sung to me?”" }
                        ParagraphText { text: "Brandon shrugged. “An adventurer must take care of himself…”" }
                        ParagraphText { text: "“What do you know of these caverns?” Tobiah grew suddenly sombre. He had found the dungeons, but the wizard was not there. He had become separated from the Woodman, who might be captured, or even dead. It fell now to him alone to seek out the Demon Lord's lair and discover what he could. “Do you think you could guide me to the Black Tower?”" }
                        ParagraphText { text: "“I think I would rather guide myself to the outside. I have decided that I shall give up adventuring and go home.”" }
                        ParagraphText { text: "“Home! Do you think you have a home to go to? Do you not know that this Demon Lord has already conquered the northern world and is even now set to overwhelm the rest of the surrounding lands?”" }
                        ParagraphText { text: "“No.” This was all news to Brandon." }
                        ParagraphText { text: "“How long have you been here?” asked Tobiah incredulously." }
                        ParagraphText { text: "“I confess, I do not know. I would guess a few weeks. The first snows had fallen the day I entered these caverns.”" }
                        ParagraphText { text: "“Rut 'tis now autumn! Have you then been here nearly a year?”" }
                        ParagraphText { text: "Brandon looked surprised, then he shrugged again. “Time has little meaning in this place, and I am in no special hurry.”" }
                        ParagraphText { text: "“Well I am! And you, master dwarf, will use your knowledge of these passages and caverns to take me where I must go. There are things that must be done, for your sake as well as for the rest of our peoples. When all is done, Valaii will be grateful - in gold!”" }
                        ParagraphText { text: "The promise of gold seemed to overcome any doubts Brandon may have had about getting involved in Tobiah's enterprise. He took a flickering torch from a wall bracket, strapped the harp on his back and strode purposefully towards the exit opposite the staircase. “Follow me.”" }
                        ParagraphText { text: "“Is the torch wise?” asked Tobiah." }
                        ParagraphText { text: "“Yes.” replied Brandon firmly. He was tired of being lost in the dark. “But don't worry about orcs. I could hear one at a thousand yards.”" }
                        ParagraphText { text: "Tobiah was not entirely reassured by the dwarf's confidence and kept his sword poised as they walked." }
                        ParagraphText { text: "Brandon stumped solidly on. He reasoned that orcs were orcs, and that their Demon Lord, whatever he might be, would certainly be no better. Therefore, the path from the dungeons to the Black Tower would be well worn and probably marked by trails of blood. lt was not a cheerful thought, but it seemed to be paying off. Their route took them along passages and up stairways that grew steadily wider and higher. At last they reached a junction with a broad highway lit by torches all along the walls. It stretched away in both directions, as far as the eye could see. Both ways were equally well worn, and both splattered with patches of dried blood. Brandon came to a standstill." }
                        ParagraphText { text: "“I think we should go to the right.” Tobiah suggested, sensing a great force of evil in that direction." }
                        ParagraphText { text: "“Definitely not! lt's this way.” The dwarf could also feel it, and was not going to argue about the way. He set off to the left, then almost immediately he stopped and turned. In the far distance he could see a group of orcs marching towards them. He pointed them out to Tobiah. “Perhaps you are right, fair lord. Let us hurry on this other way.”" }
                        ParagraphText { text: "They ran swiftly until the orcs behind had fallen from view and the far end of the highway was in sight. It opened out into a great cavern, and a massive ornate stairway could be seen on the opposite side. There were orc guards on the stairs." }
                        ParagraphText { text: "“Master dwarf, it's time to unstrap your harp again. Play it as we walk the last mile.”" }
                        ParagraphText { text: "Brandon nodded his agreement and made ready. “What shall I play?” he asked, but got no reply, for Tobiah had already blocked his ears and gone on ahead. The dwarf swung into 'There were four vicious orc soldiers' and followed at a distance. His caution was not necessary, and before they had reached the cavern the guards had lain themselves down on the stairway and fallen into a deep sleep." }

                }
                Column {
                        id: chapter17
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "17"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + units.gu(8) * 18 }

                        ParagraphText { text: "Tobiah stood at the end of the passage. Though the immediate danger of discovery had been removed, he was reluctant to go further. The air in the cavern was so heavy with menace that it pressed upon him with a physical force, and evil shimmered on the stairway. Brandon came and stood by him, then shuddered. “I think my harp is of no further use here, my lord. If you don't mind, I'll await your return in that little storeroom we have just passed.”" }
                        ParagraphText { text: "The prince nodded and spoke leadenly. “Thank you, master dwarf, for all that you have done. I shall look for you on my return.” He gritted his teeth and forced his way forward." }
                        ParagraphText { text: "That last short distance across the cavern and up the great flight of stairs seemed infinitely long, his feet growing heavier with each step. The evil bit into his body, chilling him to the bone and numbing his brain. No ordinary mortal could have made that journey, but Tobiah of Valaii was no ordinary morfal. In his veins flowed the blood of ancient kings, and he had inherited their strength in full measure. The flame of his inner self flickered and dimmed but never stopped burning." }
                        ParagraphText { text: "At length he stood before a pair of massive doors of ebony studded with silver. They were closed firm, but slivers of light showered around a wicket gate within the left-hand door. Tobiah moved to it and slowly pushed it ajar." }
                        ParagraphText { text: "From where he stood, he could not see that black sorceror and Demon Lord, the evil genius Agaliarept, but the shadow of his robed figure loomed high on the wall beyond. A giant, menacing shadow dancing a sombre dance of death in the vivid red light of a fire that seemed to rise and fall at his command. And his voice! So cold, so harsh, hissing venomously, it cut through his consciousness like a jagged knife. What was said made little sense to him, yet would not be forgotten. But to whom did he speak? Tobiah could see no other shadow, hear no other voice." }
                        ParagraphText { text: "“…but not yet. Let them sweat for seven more days. Fear will make them weaker yet and our victory so much easier…" }
                        ParagraphText { text: "“Bangara! You have found the Amulet? I will not have failure!” The shadow of a robed arm swept across the wall. Its long talons slicing through the air. “…You! What is your name? Well, Talak, you have charge of this miserable crew. Throw this body to the wolves, then go! md that talisman! I must have it!…”" }
                        ParagraphText { text: "“Tobi! Tobi! Come away boy!” Another voice, kindly and warm, pushed itself urgently into the prince's mind. “Come away! You must not linger here!” Tobiah drew his eyes from the unholy sights within and turned towards the voice. Jarnac stood beside him, tugging at his sleeve, pulling him away from the door. “Come quickly! Soon he will sense me, then all is lost!” The young man resisted, transfixed by the black power beyond the doors, but slowly Jarnac overcame him, drawing him step by step away." }
                        ParagraphText { text: "Then the Demon Lord returned from his visionary travels and sensed the presence of the two, sensed that he had been betrayed, or had betrayed himself somehow, and a great shriek of rage rent the air, echoing down the stone staircase. That scream released Tobiah from the grip of his power. “The Amulet! He seeks the Amulet,” the prince whispered." }
                        ParagraphText { text: "“The Amulet of Life! Of course! What other talisman could resist the magic of the bane fire that he commands. Come quickly, Tobi! Our mission here is done.” The wizard led the way down the staircase at the run. Before they made the final turn that would bring them insight of the cavern, he thrust Tobiah behind a tapestry and told him to wait. Then he continued on alone to face the orcs below." }
                        ParagraphText { text: "They had heard the great shriek and now cowered fearfully, wondering what it had meant. When Jarnac appeared, there was a ragged cheer and hoarse sighs of relief." }
                        ParagraphText { text: "The wizard said nothing, but stood to one side, and gestured to the orcs to pass him. Grok's eyes gleamed brightly, his nostrils quivered with the false scent of success. He swirled his scimitar above his head and shouted to his troops. “Come on! 'E's ours now!”" }
                        ParagraphText { text: "The orc rebels charged swiftly up the staircase, and when they were past, the wizard called softly to Tobiah. As they ran together across the great cavern, they heard from above the screams and cries of the orcs as they burst into the Chamber of the Bane Fire and were met by the Demon Lord's great anger." }


                }
                Column {
                        id: chapter18
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "18"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + units.gu(8) * 19 }

                        ParagraphText { text: "“My councillors, my friends…” the old king looked around the table, his face full of sorrow. He spoke on, with quavering voice. “This morning an ambassador of the enemy did approach the gates of the city. He bore this message.” King Astuin opened a scroll with shaking hands, and read to the High Council. “My Lord Agaliarept calls upon you to surrender. Even now his armies are sweeping towards you and cannot be defeated in battle. If you surrender, you will be permitted the boon of death with dignity; else if you resist it will be the worse for you when you are overcome. You have one week in which to decide.”" }
                        ParagraphText { text: "He raised his eyes from the scroll. “I am not a fighting man and never have been - though in our long years of peace that has been of little account but I will not give up my people to slaughter by this tyrant. If we must die, we shall die fighting.” Pride and a strong sense of duty had overcome the fear felt by the king, and he made his pledge with dignity. He turned then to his council. “Well, Eliglas, what of our armies? And Verdin, what have the wizards to say?”" }
                        ParagraphText { text: "The marshall answered first, summing up the current state of the campaign. “My liege, members of the High Council. As you know, our troops under Field Captain Ellyett have been acting in concert with the armies of surrounding kingdoms. It is now over a fortnight since they decamped from the plains below the city and marched north. The enemy hosts were met some forty leagues off, by the borders of the Great Forest. The couriers tell of a series of engagements - running battles, for they are heavily outnumbered and cannot risk a standing fight. Ellyett commends the valour of our troops but reports that they have suffered many casualties. The last message told that the line of retreat to the city had been cut and that they were seeking the shelter of the earthworks at the base of Mount Suwi. That was four days ago. Whether they got there or not, I do not know. It should have been possible, but by all accounts the enemy shows great tactical ability and an alarming capacity for anticipating our every move.”" }
                        ParagraphText { text: "The marshall laid down the handful of scrolls to which he had been referring and picked up another set. “I also have reports of a second army, equipped with siege engines, now marching down the northern road towards the city. Our estimate is that it will be three to four days before they come into sight of the walls. That will give us sufficient time to complete the strengthening of the city's defences and to bring our people and stores of food in from the outlying farmlands. I have every confidence in our ability to hold the enemy at bay for many weeks if not months.”" }
                        ParagraphText { text: "“Marshall Eliglas, you had every confidence in the army's ability to defeat the enemy on the field of battle.” pointed out Kerrinan the merchant. “But even assuming we could hold out for months - who would then relieve us? Are there any forces left that could come to our aid?”" }
                        ParagraphText { text: "“It won't be a matter of months.” said Verdin dourly. “This Demon Lord is but playing cat and mouse with us. If he chooses to spread his power he could enter the city today. No army can withstand him. Only by destroying the base of his power within the Black Tower can we hope to resist him.”" }
                        ParagraphText { text: "“Could we attempt that, Eliglas? Do we have forces to spare for the venture?” asked the king." }
                        ParagraphText { text: "“If the wizard speaks truth, my liege,” he replied, “we had best send an army of wizards to attack the Black Tower!”" }
                        ParagraphText { text: "All eyes turned towards the Royal Wizard. “Well, Verdin?” The king prompted him. “It's time the Wizard's Guild did something useful.”" }
                        ParagraphText { text: "The wizard thought deeply for a few moments, recalling his past conversations with Jarnac and piecing together what he knew of Agaliarept. “Not an army of wizards,” he said at length, “but a single wizard could perhaps slip beneath his gaze and enter the tower.”" }
                        ParagraphText { text: "“So be it. Call your guild council together and put this in train immediately. I hold you responsible for its success, Verdin. The Guild failed to see the onset of these dark times. If they fail in this venture, you will not live to see its end.” The king spoke harshly and dismissed the wizard with a flick of his hand. “And Eliglas, let us at least try an assault on this Black Tower.”" }
                        ParagraphText { text: "“It shall be done, my liege.”" }


                }
                Column {
                        id: chapter19
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "19"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + units.gu(8) * 20 }

                        ParagraphText { text: "Brandon cowered in the little storeroom off the highway and waited until he had heard the orcs' feet tramp by. He eased the door open a crack and peered through. The orcs were all gathered at the foot of the great staircase in the cavern beyond with their backs turned to him. Deciding to retreat further down the highway ready for a quick escape, the dwarf slipped out and crept away stealthily. No-one noticed him." }
                        ParagraphText { text: "He had gone only a few hundred yards when Agaliarept's blood-curdling shriek set the stone walls echoing. Brandon didn't wait to find out what had happened. He fled. He ran without stopping and without looking back until he came to a major crossroads. He knew that the passage along which he had come led from the Black Tower to the Orc's Head, and that this gatehouse would always be heavily guarded. He guessed that the cross passage led down and right to a second and little-used exit to the west, while in the opposite direction the passage would lead to those great chambers where once dwarves had held banquets, but now the dragon stored his gold." }
                        ParagraphText { text: "“I've got the harp. I'm still alive. I'm off.” Brandon told himself severely and headed to the right. The passage had some sharp twists in it and began to rise steadily upwards, so that the dwarf soon wondered whether or not he had made the right choice. And then, a hint of roast vension came to his nostrils, and he knew he must be approaching the outside world where dwarves and men hunted deer, ate well and lived without fear. “I shall sing for my supper!” said Brandon gaily." }
                        ParagraphText { text: "The gleam of sunlight at the end of the passage and the rich meaty smells now flooding towards him filled his heart with joy. Brandon shielded his eyes against the brightness and ran. He burst out of the passage and cried “Hello!”" }
                        ParagraphText { text: "“Ooh, hello again!” replied a familiar voice. “Did you find your music? You've been ever such a long time.”" }
                        ParagraphText { text: "Brandon lowered his hand and saw the dragon roasting a deer in its flames. In the firelight, the mounds of gold shone like the morning sun. “Sorry, no.” Brandon replied, struggling to smile politely. “Someone must have taken my pack.”" }
                        ParagraphText { text: "“I hate thieves!” the dragon hissed. “I had an awful lot of trouble with one once.”" }
                        ParagraphText { text: "“Did he steal a lot?” Brandon was suddenly interested." }
                        ParagraphText { text: "“Ha! Don't be silly!” The dragon dismissed the possibility. “It was just that he gave me the most terrible stomach ache.” It held the deer to its flaming breath, turning it gently in the fire until it was done. “Like a leg? You can sing to me after we've eaten.”" }
                        ParagraphText { text: "“Thanks, I love spit-roasted venison.”" }


                }
                Column {
                        id: chapter20
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "20"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + units.gu(8) * 21 }

                        ParagraphText { text: "Tobiah stumbled to a halt just within the entrance to the broad highway that led from the cavern. “The dwarf! He is hiding here somewhere. We must save him.”" }
                        ParagraphText { text: "“No need.” replied Jarnac, his keen eyes spotting a small figure running off in the distance. “He is already saving himself. You must tell me about him later. But hurry now.” He urged Tobiah on, aware of the prince's great weariness, but also aware that they were still in mortal danger. The Demon Lord had sensed their presence and the threat that it posed. It might be that his anger at the betrayal of Grok's rebellion would for a while cloud his mind, but of this Jarnac could not be sure." }
                        ParagraphText { text: "“Good for you, Brandon!” cried Tobiah, and his heart lightened in the knowledge and his step grew more firm. “And the Woodman? Where is he? Where shall we meet him?”" }
                        ParagraphText { text: "“He is safe out of here. Now hurry!” Time now for haste, thought the wizard, later for explanations. Jarnac knew that their comrade had died so that Tobiah might succeed, and he knew that his memory could best be served by making good their escape. He had deen the bloody carnage of the Woodman's stand when he had gone with the orc rebels earlier. Some had asked if there were others of his ilk at large in their domain. But Grok had had more pressing business and had led them past with little more than a glance." }
                        ParagraphText { text: "They stumbled and ran the length of the wide passage, going straight on at the crossroads where Brandon had misjudged his way, until they came once more to the stairs below the Orc's Head Tower. There Tobiah collapsed, exhausted by his long hard travels and the terrible strains of his closeness to the Demon Lord. >From far away behind there came a terrible howl of anger and revenge, that echoed and re-echoed down the stone-walled passage." }
                        ParagraphText { text: "“Come! Come! We are nearly there!” The wizard pulled him upright, but Tobiah slumped once more. “Save yourself, Jarnac. I am done!”" }
                        ParagraphText { text: "The howl came again, terrifyingly closer. Jarnac knelt by his prince in despair and as he knelt, he felt a hardness at his thigh. “Fool that I am!” he cried, reaching into the deep pocket of his robe and drawing out a small flagon. “Drink this!” He poured the honey liquor down the exhausted man's throat and sighed his gratitude to Grok as Tobiah began to revive." }
                        ParagraphText { text: "The howl came once more, and with it the flickering edges of an icy shadow. “Come!” he cried and this time Tobiah staggered to his feet. They struggled up the steep and winding stairs and through the fanged mouth of the Orc's Head Tower until they stood on the bridge beyond. The shadow of the Demon Lord was now close behind them, and a long straight road and open plains before." }
                        ParagraphText { text: "“We cannot escape across there!” panted Tobiah. “No! This is our way.” So saying the wizard took the prince's arm and together they leapt from the bridge. Down they fell into the rushing torrent and by the torrent were carried many miles. Over hurtling rapids they were swept, dashed against the cruel rocks, helpless in the surging force of the current until the river disgorged into a wider valley and the water grew calmer. They were washed up on muddy bank in the shade of an old tree and there they lay." }
                        ParagraphText { text: "“We have failed, Jarnac. We can never return in time to find those amulets that we need to defeat him.” The prince spoke sorrowfully." }
                        ParagraphText { text: "“No, Tobiah. If I can but pass our knowledge on, then we will have succeeded. Our part is done, but there will be another who can complete the task.”" }


                }
                Column {
                        id: chapter21
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "Credits"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }

                        ParagraphText { text: "© 1987 Peter McBride"; font.bold: true}
                        ParagraphText { text: "<b>OCR’d in by</b> <a href='mailto:jeremyalansmith@netscapeonline.co.uk'>J.Smith</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}
                        ParagraphText { text: "using <b>Textbridge,</b> and <b>HTMLised.</b>" }
                        ParagraphText { text: "<b>Proofread by</b> <a href='mailto:gschmidl@gmx.at'>Gunther Schmidl</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}

                    }

            } //MainColumn

        } //flickable

    } //SrollView

}
