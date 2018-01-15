import QtQuick 2.4
import Ubuntu.Components 1.3
import "../components"

Page {
    id: tmNovella
    anchors.fill: parent
    header: GelekHeader {
        id: sdNovellaHeader
        title: i18n.tr("Time & Magik")
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
                bottomMargin: units.gu(5)
            }
            width: parent.width
            contentHeight: mainColumn.height + units.gu(15)

            Column {
                id: mainColumn
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: sdNovellaHeader.height + units.gu(5)
                spacing: units.gu(8)
                Column {
                    id: chapter0
                    width: parent.width
                    spacing: units.gu(2)
                    Text { text: "Time & Magik"; width: parent.width - marginColumn * 2; font.bold: true; font.pixelSize: units.gu(4); color: darkColor; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter}
                    Label {
                        width: parent.width - marginColumn * 4
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        text: "A short story by Peter McBride"
                        font.bold: true
                        font.pixelSize: units.gu(2)
                        color: darkColor
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
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

                    NovellaItem { thisChapter: "Lords of Time 1"   	; flick: chapter0.height + units.gu(8) }
                    NovellaItem { thisChapter: "2"    				; flick: chapter0.height + chapter1.height + units.gu(8) * 2 }
                    NovellaItem { thisChapter: "Red Moon"   		; flick: chapter0.height + chapter1.height + chapter2.height + units.gu(8) * 3 }
                    NovellaItem { thisChapter: "The Price of Magik" ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(8) * 4 }
                    NovellaItem { thisChapter: "Epilogue"  			; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }
                    NovellaItem { thisChapter: "Credits"  			; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }
                    
                }

                Column {
                    id: chapter1
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "1 Lords of Time"; flickNext: chapter0.height + chapter1.height + units.gu(8) * 2 }
                    
                    UbuntuShape {
						width: parent.width - marginColumn * 4
						height: width * .52
						anchors.horizontalCenter: parent.horizontalCenter
						aspect: UbuntuShape.Flat
						source: Image {
							source: "../../../../graphics/tnm-lot-00.png"
						}
					}

                    ParagraphText { text: "<b>It was a still, chill night. The moon stood high and full,making the village almost as bright as day but drained of allcolour. I walked home across the silver sea that was the villagegreen and there in the centre I saw an old man. He was hunchedlow over a strange device which reminded me of a sundial.</b>" }
					ParagraphText { text: "<b>I stopped, overcome with curiosity, and stared in silence. Whatwas that device, and who the man? Was it indeed a man, and was heyet alive, for he moved not.</b>" }
					ParagraphText { text: "<b>'Tis a moondial,' he said at length, in answer to myunspoken question. 'Have ye not seen one ere now?'</b>" }
					ParagraphText { text: "<b>'No indeed,' I replied, 'Does it tell thetime?'</b>" }
					ParagraphText { text: "<b>'Time!' He gave a dry cackle, 'Aye, it tells thetime. And time will tell of it.'</b>" }
					ParagraphText { text: "<b>He raised his head, and a grey face, deeply lined, looked up atme from within the blackness of his hood. 'Time! Aye, 'tistime. Sit ye now, if ye have time!' He laughed again at someirony that only he understood, and waved a withered hand to theground opposite him.</b>" }
					ParagraphText { text: "<b>I sat cross-legged on the silver grass and watched the moon-dialtell the time and listened to the old man tell of Time - andMagik.</b>" }
					ParagraphText { text: "<b>And this was what he said.... </b>" }
					ParagraphText { text: "'Time was when Time was not, nor Death, norLife as you would know it. And the Red Moon lay high above,bathing the world in its ruby light. Magik there was in thatlight and in all upon which it fell." }
					ParagraphText { text: "But the Red Moon did not enjoy sole sovereignty of the skies. TheSun shone then as it does in these latter times, and when it rodethrough the heavens, its fiery brightness overlay the Moon's coldcrimson light. Only when the Sun passed below the land did theMoon reign unchallenged. Yet for long ages the world grew andlived in harmony, the sun's coarse vigour tempered by the puremagik of the Moon." }
					ParagraphText { text: "We were young then... Young? No, not young, but ageless, forthere was no Time and therefore no ageing. But we had all thestrength and impudence of youth, we who had being but not form.We who called ourselves the Ten that were One, the Guardians ofthe Timelessness." }
					ParagraphText { text: "And the world was reflected in the thoughts of we Ten, and ourthoughts were reflected in the world. Each took an aspect as hisown; one delved into the mysteries of the deep seas:" }
					ParagraphText { text: "another allied his powers with the birds of the air; a thirdfound fascination in rocks and running rivers; and there was onewho contemplated the Heavens above. Yet did we study the world orwere we its designers? Who should tell? The question was oflittle import then, when what was, what could be. what should be,was all one. Neither did we question our right to lordshop. Weknew no limit to our powers, and we set no limits. Ha! So wiseand yet so ignorant." }

                }

                Column {
                    id: chapter2
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "2"; flickNext: chapter0.height + chapter1.height + chapter2.height + units.gu(24)}

                    ParagraphText { text: "Throughout the Timelessness, for that was how wenamed it when Time afterwards came upon the world, the Yellow Sunand the Red Moon circled, each in its chosen path, high above theworld. Then the Astronomer began to speak of Change and thepassing of Time." }
					ParagraphText { text: "'Observe the Sun and the Moon,' he said. 'See how their paths cutacross each other as they track through the Heavens. I havemarked the junctions in our mind. Look within and you will seethat a collision must come. The Gods are set on courses that mustlead them to do battle.'" }
					ParagraphText { text: "And we others looked, and saw, then shied with horror and said,'Do not think that thought! This must not be!'" }
					ParagraphText { text: "Ah! The meddling fool! He should have known that some things arebest left unknown. But the thought had been made and could not beunmade." }
					ParagraphText { text: "And so it came to be that the Sun and the' Moon met in the skies.The Moon standing before the fiery majesty of the Sun, strivingto make the world its own, letting only its red light shine uponthe world. The Sun in its fury hurled its fires into the Heavens,dragons of flame lashing angrily around the Moon, until thatlesser god gave way and slipped aside, paled and weakened by thecontest." }
					ParagraphText { text: "They parted and the Moon seemed to regain its former strength andcold glory but at length its path drew once more close to the Sunand again they did battle in the Heavens above, and again theMoon withdrew, its light less brilliant than before. Andthroughout the Timelessness-that-was-ending, the Moon wouldreturn to do battle ever and anon, and each time it gave way itsred light growing paler and less bright." }
					ParagraphText { text: "Mayhaps, if we had conjoined our powers, we could have guidedthose heavenly bodies into new and safer courses. But we didnothing, only stood by like helpless maids, and wrang our handsin horror, while the Astronomer observed the conjunctions andmeasured the Ages. He chronicled the cycles of the Sun and calledthem years. He observed the cycles of the Moon and called themmonths. And with the fading of the Moon came that alternation oflight and dark that he called Day and Night. Thus, Time was born,and Time passed." }
					ParagraphText { text: "That harmony was no more, that once the world had enjoyed. Magikfaded in the crude vigour of the Sun's light, and thrived only atnight when the Moon still held sway. Men walked upon the earthand turned their faces against magik." }
					ParagraphText { text: "They built machines and fortresses, and through them fought formastery over the world." }
					ParagraphText { text: "We, that had been the Ten that were One and had existed only inmind and magik, were One no more. Now we were truly ten, andoftimes thereafter, as Time crept upon us, we took human form.Thus wise we went among the world and strove to restore andrebuild the magik that was fading. We breathed our powers intothe mantle of the earth, wove charms into the fibres of theplants that grew in the wilds. We entered the cities andinstalled ourselves on the Councils of men and sought to leadthem from merchandise and machinery, back to magik." }
					ParagraphText { text: "Ah, what vain effort went into our attempt to staunch the flow ofTime and magik. Yet not all of the ten mourned the passing of theTimelessness. He that had measured and named Time, that washimself then named Father of Time, looked upon the new world andwas glad, for in Time he had found Death, and in Death he hadmastery of Life." }
					ParagraphText { text: "We other nine were deeply troubled and met in council to debateamongst ourselves how best we could return our world to theTimelessness. For with the passing of time and the fading ofmagik our dominion over creation was fast slipping away." }
					ParagraphText { text: "But there was no return, for Time was, and all things must endwith the passing of Time, except Time itself." }
					ParagraphText { text: "We Nine came to know this, and sought for other ways to reclaimour mastery. Long we wrestled with the mysteries of Time andChange, then one who had steeped himself in the science ofPhysics spoke up in that council and spoke thus;" }
					ParagraphText { text: "'Fellow Lords, we treat Time as an enemy to be beaten, as theMoon treated the Sun. Can we not learn from that lesson? Inbattling against that which is the stronger, will we not merelyweaken ourselves? Look now through the eyes of Science. Time is aforce that can be measured, and if it can be measured it can beunderstood. And if understood, it can be controlled. We shouldnot seek vainly to defeat Time, but should learn to ride it andthus bend the world to our will.'" }
					ParagraphText { text: "He spoke true, of that there was no doubt. Thenceforth, we turnedour energies and our minds to the study of Time; and the fruit ofour labours was the Moondial - such as this that you see beforeyou.'" }
					ParagraphText { text: "The old man reached out to the moondial and traced the line ofshadow that fell upon its scale. Then slowly he leant back andstretched an arm heavenwards." }
					ParagraphText { text: "'Ha! There's little magik in this faintwhite Moon. But in the days of which I speak the Moon was yetred, though paler than it had been, and the magik was still therefor those that could feel it. By the light of this Moon, I cantell what the time is. But by the light of the Red Moon, I couldtell the Time what it should be." }
					ParagraphText { text: "Thus we travelled through Time; and Past, Present and Future wereas one to us. We saw what had been, what is and what will be; andif we saw ought that worked against magik, then we created whatshould have been, what ought to be and what shall be. And theempires of men began to crumble and fall, and magik came forthfrom the darkness once more." }
					ParagraphText { text: "'Twas not easy, that re-writing of History, you must understand.But we made progress - ha! - I should say we unmade Progress! Andwe called ourselves the Lords of Time and we were pleased withour work, but the Timekeeper railed against us." }
					ParagraphText { text: "He would have no part of our interventions. While we other ninehad laboured over the making of the Moondial, the Timekeeper hadcompiled a History of the World, and he foreswore any re-writingof it. When he saw that his Present was changing constantly, andrealized what we were doing, he chafed and raged and sought tostop us. But we were nine, and he was one." }
					ParagraphText { text: "We protected the secrets of the Moondial from him, and kept himfrom our councils and our private towers. Yet so engrossed werewe in our labours that we failed to keep observation upon him. Heturned from his History, that which had become an account of whatmight have been, and not of what was; then wrapped himself in ashroud of secrecy and began to investigate Time for himself." }
					ParagraphText { text: "It took him time to master Time; but he did, and he built himselfa Timepiece - or did he build it? I have met many a paradox on mytravels through time, but this was the one above all. TheTimekeeper told me of it in latter days when we had made ourpeace once more." }
					ParagraphText { text: "He discovered, as we had, that Time is a stream that windsrelentlessly through the landscape of life, carrying us on in itscurrent. 'Tis a deep, strong current. Fight it, and you may holdstill for a brief while but you can never swim upstream. Striveto get ahead, and you may gain on it for a few short momentsbefore the current drags you down. Aye, there were those of usthat tried it and near perished in the attempt. But there isanother and better way to travel through time." }
					ParagraphText { text: "There are many places in the course of Time's passage where itforms loops that bring Past, Present and Future close together.If you can but reach the bank, and step out of Time, then can youcross over to the Future or back to the Past. This is what he hadfound. But having found this, he did not set out, as we had done,to create a device that would allow him passage in alldirections. No, he could have done so, but our success inreworking History to our design was nearing completion and hefelt the need for haste." }
					ParagraphText { text: "He built only the simplest device. One that would give himtransit across to the next loop of Time. It was a bold move, asthe device lacked the means of taking him back. If his plan hadfailed, then he would have been stranded in a future that hewould have already reached by other means. That was a terribleprospect. You must understand, the Timekeeper was not an easysoul to spend time with. He could never have shared the rest ofTime with another of himself." }
					ParagraphText { text: "But his boldness was justified. He reached the future juncture,handed himself the Timepiece that he would otherwise have had tobuild, and returned to his Present. He knew, of course, that hewould have to hand the device back to his Past self when hereached that future point with it, unless he created analternative future - and his scruples as a Historian would notallow him to do that. Nevertheless, his move had won him the useof his Timepiece during the time that would otherwise have beenspent in the making of it." }
					ParagraphText { text: "Ha! A brilliant ploy, yet with a fatal flaw. He, who lacked ourexperience in these matters, did not know that any movementthrough Time sends ripples across its surface. We others detectedthem, saw that they had not been stirred by our activities andtraced them back to the Timekeeper. We could not see hisTimepiece, any more than we could see him, for it too wasenclosed in the shroud of secrecy; but we could sense hispresence - and his movements." }
					ParagraphText { text: "We followed him wherever he went, back and forth through Time.And wherever he went, one of us would be there to forestall anyaction. Yet in the end it was a close-run race, and he nearly hadthe better of us, for his Timepiece had a greater power thanthose we used. His was not a Moondial, to be used only when theMoon rose in the Heavens. He had captured Time in a machine,while we relied on the magik of the Red Moon, and the Red Moonwas fading." }
					ParagraphText { text: "But nine hounds and one stag, we wore him down, until heabandoned his attempts to pervert that course of Time that we hadset. He retired to his tower and sat in solitary contemplationfor many a long day. We watched and waited, but he made no moveagainst us. At length, we approached and entered into hiscitadel." }
					ParagraphText { text: "He had lain aside the shroud of secrecy and sat, as if waitingfor us, in his great oak chair at the head of a massive tablehewn from a single tree. His History lay open on the table beforehim, a fresh-cut quill close at hand. As we came close hegestured to us to take the chairs ranged along each side." }
					ParagraphText { text: "'Welcome, fellow Lords,' he said, 'I am honoured by yourpresence. Please be seated. There is much about which we mustspeak.'" }
					ParagraphText { text: "He seemed philosophical, to have accepted his defeat, and saidthat his interest then was only to correct the History that hehad written. He offered us a bargain, and exchange of secrets. Hewould expose to us the mysteries of his Timepiece, if we wouldbut tell him what we had done, so that he may rewrite his book." }
					ParagraphText { text: "'But let us treat with the History first,' he said. 'That was mygreat Work, and my first love and duty.'" }
					ParagraphText { text: "Ha! He was ever the sly one! And we believed him." }
					ParagraphText { text: "We went through his History with him, pointed out theinterventions we had made, the inventions we had unmade, themeetings we had arranged, the matings we had prevented - all inMagik's favour. And at the end he asked us, each in turn, to saywhat of all that we had done, we believed to be the thing ofgreatest import. And we told him, and he wrote it all down." }
					ParagraphText { text: "'Now come, we said, 'Time it is for you to show us the working ofyour Timepiece.'" }
					ParagraphText { text: "'Indeed,' he replied, 'I shall do so.'" }
					ParagraphText { text: "He stood and walked across towards the hearth. There beside itstood a device in the shape of a grandfather clock, a beautifullydecorated and innocent seeming device. 'I set the Time so,' heexplained, opening the glass face and moving the hands. He closedthe face. and spoke again. 'Then begin its motion thus.'" }
					ParagraphText { text: "Before we could stop him, he had opened the lower door and setthe pendulum swinging, and the clock disappeared. The Timekeeperturned to us and smiled, and I knew why. For when he had reachedinto the case of the clock he had dropped with a slip of paper. Isaw it clearly as it fell, and though it was for but a briefmoment, I can yet recall the words that were written upon it." }
					ParagraphText { text: "<i>Into the cauldron you must throw an olive branch, makefriendship grow.</i>" }
					ParagraphText { text: "<i>A dragon's wing, a sign of flight, An ivory tusk, a sign ofmight.</i>" }
					ParagraphText { text: "<i>Mix in the teardrop, a touch of sadness, and the evil eye, a signof badness.</i>" }
					ParagraphText { text: "<i>Add a dinosaur egg, a sign of birth, with the jester's cap, asymbol of mirth, plus the silicon chip, a vital invention, andthe golden buckle, a bone of contention.</i>" }
					ParagraphText { text: "<i>If you do all this, before time runs out, a winner you'll be -there is no doubt.</i>" }
					ParagraphText { text: "<i>But take care when you find the lords, or you'll not gain yourjust rewards, your quest will all have been in vain, and you willhave to start again.</i>" }
					ParagraphText { text: "Where has the Timepiece gone?' I asked, 'To whom did youdirect it?'" }
					ParagraphText { text: "'It has gone I know not where, nor to whom,' he replied, 'I knowonly that my fellow Lords will ever prevent me from using it, andmust hope that some adventurous human soul will take up thechallenge and restore the corruptions that you have made. LetTime take care of itself.'" }
					ParagraphText { text: "We slumped back into our chairs, angered that the Timepiece hadbeen spirited away from us, but not unduly troubled by thethought that it might fall into the hands of Man. Ha! Was thereever a human born that could match the Lords of Time?'" }

                }

                Column {
                    id: chapter3
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "Red Moon"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(32) }
                    UbuntuShape {
						width: parent.width - marginColumn * 4
						height: width * .54
						anchors.horizontalCenter: parent.horizontalCenter
						aspect: UbuntuShape.Flat
						source: Image {
							source: "../../../../graphics/tnm-lot-rm-00.png"
						}
					}

                    ParagraphText { text: "The old man had sat in silent contemplation at the ending ofthat tale. He watched the shadow creep slowly around the Moondialuntil the next hour was reached. then he began to speak oncemore." }
					ParagraphText { text: "'Time had been locked in its course, and closed to us. Andthe Red Moon that had been, was then dull and ashen white. Magikwas lost to the world, and lived on only in Baskalos." }
					ParagraphText { text: "To Baskalos we had repaired when our cloud castles fell from thesky that noontide, when their fragile foundations of magikcollapsed with the fading of the Moon. Only seven of us werethere now, for three had perished with their towers. Livingamongst men, we took human names - Cazab, Golitsin, Hagelin,Hollis, Skardon, Venona and Volkov." }
					ParagraphText { text: "We came together in Cazab's tower within the citv of Baskalos,and there we turned our magiks to the rekindling of the Red Moon.Ha! What vanity! As if we, whose powers stemmed from the light ofthe Moon, could muster sufficient magik to set that orb a-glowingonce more. Yet we tried. For nine days we rehearsed our charmsand incantations, summoning up a lightning storm the like ofwhich had never before been seen on this Earth, nor ever will beagain. On the tenth night we set a vortex of wind spinning madlyup from the tower, forcing apart the thick black clouds above sothat the Moon was revealed directly over us, full but wan. Wecalled bolts of lightning down into that vortex and stood poisedwith spears of magik ready to hurl them at the Moon, to carry thetumultuous power up to it and thrust new fire into its ashenbody. A thousand bolts of lightning were drawn from the fourcorners of the sky and coalesced into one solid pillar ofblinding, crackling blue-white power in that vortex...'" }
					ParagraphText { text: "The old man paused trembling, his aged eyes aflame with thememory of that moment. Then, abruptly, he gave a short raspingsigh and shook his head." }
					ParagraphText { text: "'...and every jot of it went straight down into Cazab'stower! The shock of it flung us into the air and left us strewnthroughout Baskalos. The tower was burst asunder, its stonesfound later up to ten leagues beyond the city walls; and of Cazabhimself, for he it was that stood at the centre of the vortex, wefound nothing but a single smoking boot." }
					ParagraphText { text: "We six that remained came together in council some months later,when our bodies and our powers had healed enough for us to move.Venona had thought much about our problem during that time, ashad we all, and it was his suggestion that we should construct analternative focus and source of magik, that we should recreatethe Red Moon but smaller, in the form of a crystal. We wereloathe to abandon our intention to rekindle the Moon, but knewthat it was not possible at that time or place. Likewise we knewthat we must have some focus if magik was not to be dispersed andlost for ever; and so Venona's idea was accepted." }
					ParagraphText { text: "In the city of Baskalos, in the castle of Xax, we caused to bebuilt a high tower. There within it we installed the Red MoonCrystal, and on Mid-Winter's night, when the new Moon rose overthe distant hills, we joined our powers to infuse the Crystalwith the cold fires of magik. And a pure crimson light shone fromit and illuminated the city and the lands of the Kingdom ofBaskalos." }
					ParagraphText { text: "So Baskalos stood as an island of light and magik when all aroundthe world fell into the darkness of mechanics. The gardens ofBaskalos sparkled with colourful arrays of fragrant flowersthrough all seasons of the year; the buildings were triumphs ofinspirational architecture; the people grew tall and healthy, andlived long, happy and fruitful lives; and the Kings of Baskaloswere ever wise and noble rulers, their armies unconquerable yetnever sent forth in cruel conquest." }
					ParagraphText { text: "Peace and prosperity, music, magik and the carefree laughter ofchildren. What else could the heart desire?'" }
					ParagraphText { text: "The old man looked across at me from under his hood, his linedface enlivened by a wry smile. He raised a single eyebrow to echohis question and I smiled and nodded in agreement." }
					ParagraphText { text: "Baskalos must have been Paradise on earth. Who could not havebeen happy there?" }
					ParagraphText { text: "'Know you, there were those of us that were bored near todistraction before the end of the first century. Baskalos was asmall kingdom, its boundaries defined by the range of the Crystalin the Tower of Xax. Those of us who eschewed domesticity and thenarrow delights of urban life were soon chafing for newchallenges and the view beyond distant horizons." }
					ParagraphText { text: "We travelled far through the realms of darkness, and the sightsthat met our eyes filled us with deep sorrow. There was so muchpain and anguish, so much empty greed and degradation of the soulin those lands of merchants and machines. We took our wisdom andour lesser magiks with us, and did what we could to bring somelight into the dark places, but to little avail." }
					ParagraphText { text: "Kings would welcome and honour us, should we but put ourselvesand our powers into their service, so that they might tightentheir grip upon rebellious subjects, or extend their sway overlesser lords. And there were those of us who would do just that,in the vain hope that thus we might influence their rule for thebetter. But if we sought to uplift their downtrodden subjects,enslaved by armed might, or by the power of money or religions,then would we be called Warlocks and Necromancers and houndedfrom the lands." }
					ParagraphText { text: "Ah, if only the Red Moon shone still upon those unhappy realms.Or if the King of Baskalos would extend his dominion. Surely thelands beyond would be better places beneath his wise and justrule. Mayhaps it would be possible to take the Red Moon Crystalon perigrination through the outerlands. How much light would ittake to penetrate the darkness? These questions ran through mymind constantly as I travelled in the world beyond Baskalos." }
					ParagraphText { text: "I returned one winter's day to the city determined to take magikto the relief of the outer darkness, and went straightway to makeentreaty with the King that he should set forth on a conquest ofmercy at the first thaw of Spring. I was stopped by Skardon, ereI reached the Palace." }
					ParagraphText { text: "'Volkov! At last!' he cried. 'Come at once for we have need ofyour wisdom in our council.'" }
					ParagraphText { text: "He explained to me breathlessly as we hurried through the snowacross the city to Skardon's tower. It seemed that he and Hollishad essayed to build a new and greater Crystal so that magikcould be spread beyond the limits of Baskalos. I was surprisedand impressed, for they had ever been the ones to stay contentwithin the city while the rest of us had been driven far afieldby our desire to bring enlightenment to the world. So Hollis andSkardon too had laboured in Magik's service, though in their ownway." }
					ParagraphText { text: "But why the haste? Does the time to illuminate this new crystalfast approach? Or has magik been focussed within the crystal andhas Hollis subourned it for his own private gain?' I questionedSkardon as we laboured through the thick drifts of snow." }
					ParagraphText { text: "'No, no!' he replied 'Tis not that. 'Tis... Why look, you can seefor yourself.'" }
					ParagraphText { text: "We had rounded a corner and stood then in sight of Skardon'stower. He pointed upwards, and I followed the line of his fingerand exclaimed in surprise. 'Why, Skardon! You have added a newpinnacle to your tower.'" }
					ParagraphText { text: "'Pinnacle! Forsooth! 'Tis no pinnacle. That which you see is thenew crystal; and look within.'" }
					ParagraphText { text: "I cast my sight aloft and looked within. 'Twas not magik that wascontained within that crystal, but Hollis himself!" }
					ParagraphText { text: "Skardon spread his hands in apology. 'I did not see that he wasstanding within the hexagon as I made the final incantation,' heexplained. The crystal formed around him even as I stood andwatched. I have gathered together our fellow magicians and we arenow meeting to decide what to do.'" }
					ParagraphText { text: "'Twas a difficult decision. Should we attempt to illuminate thecrystal with magik, even though Hollis was within? Could weindeed succeed to do so without his contributions? Or should weshatter the crystal to free him? And could we accomplish thatwithout shattering Hollis? We sat in deep thought in Skardon'sstudy, gathered round his great log fire, but could not settleupon a course of action." }
					ParagraphText { text: "At length, I suggested that we bring Hollis down to join ourdeliberations. He might have been able to signal to us his wishesif he were there amongst us. They had been unable to bring thecrystal down by physical means - it was too cold and slippery tobe held, and in any case too large to pass through the stairwell- but I was able to use my special facillities to transpose itfrom the roof down to the study." }
					ParagraphText { text: "There it stood in front of the fire, sparkling and gleaming inthe light of the flickering flames, casting shafts of multi-huedbrightness throughout the room. Hollis stood statue-stiff within,showing no sign of life, as much cut off from our deliberationsas he had been when on the tower's top. We repaired below toSkardon's hall to dine and continue our discussions, and there,over his well-laden board, we decided that the new crystal couldnot be illuminated while Hollis stood within, but that it was athing of beauty and not to be destroyed. We therefore determinedthat it should be transposed to the roof of Hollis's tower tostand forever as a tribute to his memory." }
					ParagraphText { text: "'Twas at this moment that water began to drip through the ceilingand Hollis, teeth chattering and soaked to the skin, appeared atthe door. The crystal had been formed of ice, and had melted infront of the roaring fire in Skardon's study." }
					ParagraphText { text: "This experience did little to dampen Hollis' enthusiasm for theproject, and he and Skardon began to plan a second attempt at agreater crystal. I was invited to add my skills, but havinglooked through their designs and assessed the import of theirincantations, I had little faith in their eventual success." }
					ParagraphText { text: "Instead, I turned my attention back to the King of Baskalos andsought to persuade him to extend his domains and to carry the RedMoon Crystal into the new lands to spread the light of magik. Buthe was old and set in his ways, and fearful of moving the Crystalfrom the Tower of Xax. My fellow magicians too opposed the plan,believing that the only hope for the future lay in cherishingmagik within the confines of Baskalos." }
					ParagraphText { text: "Ha! I was impatient for change and chafed beneath thisconservatism. I had done too little for too long, and knew thatthe time for action had come. If the King of Baskalos would notuse the Crystal to bring the darkness under his rule, then wouldI make it my own and set out to impose my own enlighteneddominion upon the world entire. And why not? There was no beingmore fitted than I to take such a heavy burden." }
					ParagraphText { text: "But determining to take possession of the Crystal, and actuallylaying my hands on it and removing it from the Moon Tower, werematters of two different hues. The magik inherent in the Crystalof Xax would resist any attempts to take it by means of lessermagiks, and all magiks were lesser than that of the Crystal. ThusI would be forced to resort to physical methods, and thatpresented numerous difficulties." }
					ParagraphText { text: "In the three centuries or more since the creation of the Red MoonCrystal, certain traditions and conventions had grown up aroundit, as much in reverence as in defence of its powers. Foremostamongst these was that we true Magicians should have contact withit but once a year on Mid-Winter's Night, when a ceremony washeld to reconsecrate it to the Kingdom of Baskalos. This ceremonyalso afforded us the opportunity to examine it for signs of agingor imperfection, though I am pleased to say that such was itsquality that we never found any cause for concern." }
					ParagraphText { text: "Lesser magicians, the King and his lords, and all military menwere always denied access to the Crystal, for it was held thatits power would prove too great a temptation for them. The Castleof Xax was therefore handed to the care of those two Guilds whosemembers were believed to be the most trustworthy in respect ofthe Crystal - the Blacksmiths and the Pastrycooks. An unlikelyco-operation, but one that worked well. They were all deeplypractical men, whose sole ambitions were in the perfection oftheir crafts. The Blacksmiths provided physical strength andforce of arms, should such be necessary in defence of the Castle;and the Pastrycooks contributed intelligence and sensitivity." }
					ParagraphText { text: "This Castle was situate in the midst of a small lake, and couldbe reached only by a guarded causeway that ended in a drawbridge.This latter was lowered but twice a day, to send produce to themarkets in the city, and to receive fresh supplies. Entry to theCastle was therefore difficult, but this was only the firststage. Any intruder would thence have to pass through theinhabited rooms and workplaces to reach the inner courtyard wherestood the Moon Tower. Narrow windows let onto this courtyard, butthere was only a single door and the key to that hung on the beltof the Chief Pastrycook." }
					ParagraphText { text: "These obstacles were problematic, but not insuperable. Was I not,after all, a Magician of the highest degree? Had I not studiedmen and all their crafts for millenia, and at close hand for thepast three hundred years? A simple disguise, a little subterfugeand the judicious use of some lesser magiks would take me thusfar. The true difficulty lay beyond." }
					ParagraphText { text: "That locked door did not merely keep the inhabitants of thecastle out of the courtyard; it equally kept the inhabitants ofthe courtyard out of the castle. Seven gryphons lived there, everrestless and hungry, patrolling constantly and sleeping never.They, and the four great falcons that nested above, were theincorruptible guardians of the Moon Tower. Infused with magikthemselves, and living always so close to the Crystal, they couldresist all my incantations, withstand all my potions, and sensemy nature and purposes through the deepest disguise. How then topass the gryphons?" }
					ParagraphText { text: "Though I pondered long and hard within my tower, the answercame never to my mind. And then, one autumn evening, eatingpastries by my fire, I had an inspiration." }
					ParagraphText { text: "The following morn, I went straight to the market, lighted on apastrycook that stood momentarily apart from the rest, and in atrice had magiked him to a distant city, where I knew his skillswould be in great demand; donned his shape and his memories, andtook his place. That eventide I returned to the Castle of Xaxwith his fellow cooks and took up residence there, the better tolearn its secrets." }
					ParagraphText { text: "They were a happy band of brothers, those men of Xax, delightingin their crafts and comradeship. And it was a pleasant life, oneI could have endured for many years. I had a cell close by theinner courtyard, and through its slit window I kept surveillanceupon the gryphons. They sensed my closeness, of that I am sure,and for some while the men of the castle wondered what made thebeasts so restless. But men will ever seek to explain the unknownas simply as they can, and so the cooks and smiths decided thatit was merely the onset of winter that disturbed the gryphons." }
					ParagraphText { text: "My opportunity came at last, as I should have realized it would,on Mid-Winter's Day. That night was to be held the ceremony ofreconsecration, therefore the gryphons and falcons must beremoved from the courtyard so that the magicians and the Kingcould have access to the Moon Tower. That day there was nodelivery to the market place, but the entire morning's bake ofsweetmeats and delicate pastries was laid out on great tableswithin a high chamber close by the door to the inner courtyard.When all was ready, the cooks retired to the perimeter of theantechamber beyond and watched as the Chief Pastrycook walkedresolutely through and unlocked the courtyard door." }
					ParagraphText { text: "Then he swung open the doors, and stood aside, armed only withhis strength of purpose and his rolling pin, and watched as thoseterrifying beasts swarmed in for their yearly feast. As they setupon the food, he closed the chamber doors behind them and lockedthem fast. The way through the antechamber to the courtyard andthence to the Tower lay open!" }
					ParagraphText { text: "A number of the cooks were then detailed to go out into thecourtyard and make it clean for the passage of the King thatnight. I went with them, and made myself busy while seeking foran opportunity to approach the Tower without being seen. A besombroom in my hand, I swept a circuitous path towards the Towerdoor, then, when no eyes were upon me, I slipped the catch andeased myself inside." }
					ParagraphText { text: "There were no rooms in that tower save the one at the top wherethe Crystal lay. Below that was nought but the stone stairwaythat spiralled upwards, steep and narrow. It was dark in there,with only the faintest glimmer of red light filtering down fromon high. I walked up steadily, keeping close to the tower wall,tense with anticipation at being so near to my prize." }
					ParagraphText { text: "Yet even then I had doubts. Once, twice, I stopped and almostturned back down. Not that I feared discovery, or the wrath ofmen or of my fellow Magicians; but that deep in my heart I couldnot be sure that I could resist the awesome temptations of thepower that the Crystal held. I shook off mv doubts and pressed onupwards. The light grew brighter and the thrill of magik grewever stronger as I approached the top, until I was at last there!<br>I stood on the topmost stair, almost blinded by the light of theRed Moon, now but two steps away, when I heard a sudden rush inthe air. Hagelin, dressed in blacksmith's garb, came in throughthe window and swept up the Crystal into his arms. I gasped insurprise. He turned and saw me and laughed. 'You look tired,Volkov!' he cried, 'Did no-one tell you that flying is easier?'" }
					ParagraphText { text: "With that he launched himself through the window and was gone,and the Crystal with him. I had been but two paces frompossession of it!" }
					ParagraphText { text: "Where now was that wonderful Crystal of the Red Moon?'" }
                }

                Column {
                    id: chapter4
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "The Price of Magik"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }
                    
                    UbuntuShape {
						width: parent.width - marginColumn * 4
						height: width * .55
						anchors.horizontalCenter: parent.horizontalCenter
						aspect: UbuntuShape.Flat
						source: Image {
							source: "../../../../graphics/tnm-lot-pom-00.png"
						}
					}

                    ParagraphText { text: "A small cloud drifted in front of the Moon, throwing themoon-dial into darkness. The old man gestured towards it andspoke wryly. 'See. I am lost in Time without the Moon. Wasit not ever thus!'" }
					ParagraphText { text: "His huddled figure seemed to have become even more bowed andfragile than it had been when I had first encountered him, yethis voice was still firm and strong as he started upon his thirdtale." }
					ParagraphText { text: "'Time takes its toll on all who live within it. And even wewho were there at its beginning. must reach an end. Magik toomakes its adherents pay a price." }
					ParagraphText { text: "When it became known that one of our number had stolen the RedMoon Crystal, the people of Baskalos grew suspicious of all theElder Magicians. And in the absence of the Crystal, there waslittle to hold us to that place. Therefore, our company departedin our several ways; Skardon and Hollis made off for the FarNorth to experiment further with their crystals of ice; Venonaset out for the East; and Golitsin and I turned our faces to theWest, and thence travelled singly. And Hagelin? I heard no moreof him, and must judge that he was lost when the Moon Crystal wasfound - as it was some time after." }
					ParagraphText { text: "We never again gathered in Baskalos. even after the Crystal wasrestored to the safekeeping of that city. Nor shall we all meetagain anywhere in this world." }
					ParagraphText { text: "I yet had much strength and vigour, and though distance from theMoon Crystal robbed me off my greater powers, still I possessedmy wisdom and a whole host of lesser magiks. These qualities weresufficient, in those days of ignorance and barbarism, to ensuremy leadership of men wherever I went. I amused myself for manycenturies in the pursuit of architecture, erecting greatmonuments of stone, knowing full well that lesser mortals wouldlook upon them afterwards and marvel how they came to be built." }
					ParagraphText { text: "Even now I smile to myself as I walk through the world and seethem wondering at my pyramids and temples, saying 'How could Menmake such things?' Ha! Men! They could never equal myconstructions for all their technology." }
					ParagraphText { text: "Meantime, while I made my entertainment in the realms ofdarkness, a Golden Age had been born in Baskalos. When the MoonCrystal was recovered, it was given to the safekeeping of theGuild of Scholars and Wizards, and they had decreed that the oneof their number who was most wise and least worldly should takeresponsibility as the guardian of the Crystal. The guild alwaysdid well in its choosing, and over the years a long succession ofguardians had cherished and nurtured the Crystal, so that itgained steadily in power, until, at the time of which I amspeaking, its light shone out far beyond the limits of theKingdom of Baskalos." }
					ParagraphText { text: "Then Satyr, that had been the guardian, passed away, and the timewas come for another election, and they chose from their numberthe one who was called Myglar. He had travelled far, and hadlearnt much wisdom and magik upon his travels. I had myselfinitiated him in many of those ancient mysteries that had beenlost to Baskalos, for he had sojourned with me for some time inthe outerlands of the West. On his return to the city, he hadfreely shared his new-found lore with his fellow guildsmen and bythis action had won much gratitude." }
					ParagraphText { text: "Myglar had protested against his election, saying how unworthy hewas of the honour, and how little he could be trusted, and howgreatly he feared the temptation of power. His electors hadsmiled when they heard this, and congratulated themselves thatthe choice was good, for surely only he who knew his limits andhis weaknesses could rise above them. And Myglar had smiledsecretly to himself as he bowed to their urgings and took up theguardianship of the Crystal, for he had known that hisprotestations would but make his position the stronger." }
					ParagraphText { text: "Myglar's election came as no surprise to me. Had I not shared mylife and my lodgings with him? Had I not watched as he politelydevoured my secrets, and seen the way that, with obviousself-effacement, he could thrust himself to the fore? Were nothis gifts so freely given that the receiver stood forever in hisdebt? Aye, Myglar was ever ambitious for power, though he hid itwell from mortal eyes. But then, mayhaps it were a good thingthat the guardian of the Crystal should be ambitious, for wouldhe not then be more assiduous in its care, that its magik mightgrow and his power with it?" }
					ParagraphText { text: "He must surely have served his office well at first, for when Imoved to Aranstan, beyond the mountains that stood to the west ofBaskalos, I felt the touch of the Crystal that had never reachedso far ere then. Indeed, I began to make use of that power forthe first time in many years, and set upon the greatest and mostelaborate design that I had ever attempted, a magnificent,soaring bridge of stone that would arch across a vast chasm." }
					ParagraphText { text: "That chasm was so wide and so deep that it could not be spannedwith a temporary framework of wood such as we would normally use,and without the closeness of the Crystal even my powers wouldhave been unequal to the task. But as it was, I was able tocreate a rainbow of moonlight of such strength and solidity, thatthe stone arch of the bridge could be assembled upon it." }
					ParagraphText { text: "We had almost completed the task - indeed, the keystone stoodready at one side of the chasm, waiting to be carried out to thecentre - when the rainbow trembled for one brief moment. And inthat moment all was lost. The stones of the bridge fell tumblingdown, down into the depths of that great chasm, falling for aneternity before at last they reached the river far below. So farbelow that the sounds of their impact never reached us." }
					ParagraphText { text: "I knew then that things fared ill with the Red Moon Crystal. andset forth straightway for Baskalos. It was a long journey, for Ihad been on the wrong side of the chasm when the rainbow gaveway, and, though it had re-formed I would no longer trust it tohold my weight. Thus must I walk the length of Aranstan before Icould cross the river and turn my face towards Baskalos. By then,winter had taken its grip upon the land and the mountain rangethat stood across my path was well nigh impassible." }
					ParagraphText { text: "Mayhaps I should have tried the crossing despite the deep snow. Ihad felt the flickerings and falterings of the Crystal's magikand knew that time was short, but that very failing held me back.For as the magik of the Red Moon weakened, so did mine and tohave attempted the mountain crossing then would have meant almostcertain death." }
					ParagraphText { text: "Through the long winter, the longest and hardest in all memories,I kicked my heels restlessly in the village of Langley in thefoothills of the range. At last, when spring had brought forth arush of bright flowers and the streams were in full spate withthe melting of snow on the mountains, I made ready to start thefinal stage of my journey. It was then that I felt the presenceof another Elder Magician not far off. I sent out my thoughts tohim and sensed his response." }
					ParagraphText { text: "Again I waited, fretful at the delay but eager for the companyand assistance of a fellow on a difficult and dangerous journeytowards I knew not what. On the second day I spotted Golitsinhurrying up the valley towards the inn where I had made mylodgings, and soon we embraced like long-lost brothers." }
					ParagraphText { text: "When did you feel the faltering of the Magik?' I asked, for Iknew it was that which had brought him there." }
					ParagraphText { text: "I was in battle,' he replied. 'I had gone to the assistance of aweak but goodly lord who faced a mighty foe. The enemy had fallenupon us in great numbers and the fight had gone badly against us.I had rallied our forces round me for one last valiant stand whenof a sudden I felt a fracturing in my Moonshield...'" }
					ParagraphText { text: "'And all was lost!' I broke in upon him." }
					ParagraphText { text: "'Nay.' he said with a wry smile. 'The shield disintegrated withsuch outward force that the enemy was laid flat and we won afamous victory! But the shield was no more, and I knew that Imust return yonder to Baskalos. And you,' he continued, 'whatwere you doing when the Crystal first failed?'" }
					ParagraphText { text: "'Let us say that I was playing bridge and lost a trick,' Ireplied. and he laughed for he had heard, as I knew he wouldhave, of my calamity at the chasm." }
					ParagraphText { text: "We debated much on the fate of the Crystal during out journeyover the mountain range. I held that Myglar's successor had beenbadly chosen, or perhaps the scholarship of the Guild had decayedso far that there were none fit for the stewardship of theCrystal. For Myglar must have been dead by then. He would havebeen long past the span of human years, and it was known that theCrystal took its toll of its guardians. Golitsin, who had spentmost of the previous century on military pursuits, was inclinedto the belief that Baskalos had fallen under barbarian rule, andthat the Crystal itself was. under attack." }
					ParagraphText { text: "We were both wrong, as we discovered when we entered the realm ofBaskalos. The kingdom yet enjoyed peace and prosperity, thougheven here the falterings of magik could be seen. The early cropsdid not have the lustre and fullness of the past, and I saw thefirst stirrings of diseases that, though common in theouterlands, had never troubled the people of Baskalos." }
					ParagraphText { text: "And Myglar was yet alive! We heard thus from the peasants andcould scarce believe it, yet 'twas true enough. On our second dayin Baskalos, we were met on the road by a body of Myglar's guardsand courtiers." }
					ParagraphText { text: "'O wise ones of the Elder Days!' their leader greeted us. 'MyLord Myglar bids you welcome to Baskalos in its time of need. andentreats you to allow us to escort you to his castle.'" }
					ParagraphText { text: "'Fair words, but I trust them not,' muttered Golitsin as wemounted the horses that they had brought for us. 'Myglar is yetalive. That can only mean that he has been drawing life from theCrystal itself.'" }
					ParagraphText { text: "'Aye, he was ever the smooth one,' I agreed. 'But he is cunning.He will not hope to hide his corruption from us. This is no guardof honour that surrounds us, this... Ha! Did you sense it?' Therehad been a shimmering in the veil of magik that lay overBaskalos, and I had felt a sudden chill deep within my innermostself." }
					ParagraphText { text: "Golitsin nodded, then started as the shimmering came again.Myglar was draining the Crystal's power while his vassals delayedus on the road." }
					ParagraphText { text: "'We must make haste,' said Golitsin urgently. 'But how to ridourselves of these guards?'" }
					ParagraphText { text: "'By boldness,' I replied, then cried out loud, 'Ho! I hear youmaster summoning us! Ride hard, men of Myglar.' I spurred myhorse on savagely, Golitsin at my side." }
					ParagraphText { text: "The guards knew not what to do. They could not attack us on theopen road, but must strive to keep up with us and hope toforstall us ere we reached Xax. But this they could not do.Golitsin and I had the form of men, but not the substance. Werode our steeds as light as thistledown, while the guards weighedheavy on theirs. By the time we passed through the city gates, wewere nigh on half a league ahead. The city guards too were takenunawares by our sudden rush. They called to us to stop, but wewere long gone by then. On we galloped to the castle, cross thedrawbridge and through to inner chambers." }
					ParagraphText { text: "The doors were locked that led to the courtyard wherein stood thetower of the Moon Crystal. Golitsin tried a spell of unlocking,but the door had been proofed against that. I called down athunderbolt to blast our way through, yet in vain. Myglar hadplaced a magik on that door that resisted all our efforts. Indesperation. we took the form of owls, that we might fly throughthe windows and thence to the top of the tower. 'Twas desperation,for as owls our own powers would be much reduced. Our hope was togain access to the tower room and return to human form beforeMyglar could intervene." }
					ParagraphText { text: "'Twould appear that Myglar had found some way to view the future,for certainly he seemed to anticipate our every move. As we roseinto the courtyard together, we were met by a massive blackfalcon, swooping down upon us. We dodged and dived, but thatgreat bird, for all its size, was every bit as agile as us. Weparted, and flew either side of the tower. The falcon, closer toGolitsin than to me and smelling blood, rushed after mycompanion. Behind and below I heard a shrill cry and a flurry offeathers, then great wings began to beat the air in pursuit ofme." }
					ParagraphText { text: "With moments to spare, I reached the sanctuary of the narrowwindows of the tower room, flew in and alighted in human formonce more. The Crystal was yet there on its pedestal, and for aninstant I was lost in wonderment of it. For all it was pale andwan, it yet had such beauty, such symmetry; its light, thoughsadly dimmed, remained so pure and clear. How well it hadfulfilled its task in those long centuries since the setting ofthe Red Moon!" }
					ParagraphText { text: "That moment of reverence was my undoing. Myglar hopped down fromthe windowsill and stepped between me and the Crystal." }
					ParagraphText { text: "'Meddling Magician!' he hissed. 'What ill wind brought you backto take my Crystal from me?'" }
					ParagraphText { text: "'Myglar, that Crystal belongs not to you, but to Magik itself. Noman can ever own it. Its power is too great to be borne by one. Ireasoned with him to gain time while I felt for the limits of hismagik with questing fingers of thought." }
					ParagraphText { text: "'Seventy years I have tended this Crystal,' he replied, raising acloaked arm to encompass it. 'I know it well. It is in my power.Mine alone!'" }
					ParagraphText { text: "I launched shackles and chains of moonsilver at his hands andfeet to hold him still. But alas, as they touched him, theyturned into wisps of moonlight and disappeared. Myglar laughed,and with a flick of his fingers threw up a wall of glass betweenus. I made it into a curtain, pulled it aside and set to rushupon him. He grasped the Crystal and held it aloft. poised todash it against the floor." }
					ParagraphText { text: "'Stand back!' he cried, 'Or you shall be responsible for itsdestruction!'" }
					ParagraphText { text: "Ah! The Crystal of the Red Moon! Would it be better broken intopieces than left whole in the power of that madman? I knew not,and while I hesitated, Myglar made the decision for me. Heenfolded the Crystal within his cloak and as its red lightdisappeared, so did he." }
					ParagraphText { text: "Oh, the pride and the folly of it! The Crystal would do Myglar nogood. True, it would stave off death for as long as he clung toit, but what life would he have? Such selfish ownership of suchterrible power must lead him fast to madness. He would pay theprice, the price of magik.'" }
                }

                Column {
                    id: chapter5
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "Epilogue"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }

                    ParagraphText { text: "The old man sighed heavily and was silent for some time beforespeaking again." }
					ParagraphText { text: "'The Crystal was at length rescued from Myglar's grip, andrestored to Baskalos, but magik was never the same in afteryears. The end of the Age had come. and true magik wasdisappearing from this world." }
					ParagraphText { text: "Now there is but little, and that only when the full Moon shinesbright and time can be measured on a moondial once more.'" }
					ParagraphText { text: "I gazed down at the moondial that lay between us. The settingMoon had pushed the shadow of the gnomon to the very end of thescale, and even as I looked a new shadow, cast by the first raysof the rising sun, fell starkly across the face." }
					ParagraphText { text: "Then the moondial was gone, and the old man with it." }

                }

                Column {
                    id: chapter6
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "Credits"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }

					ParagraphText { text: "© 1987 Peter McBride"; font.bold: true}
					ParagraphText { text: "<b>OCR’d in by</b> <a href='mailto:jeremyalansmith@netscapeonline.co.uk'>J.Smith</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}
					ParagraphText { text: "using <b>Textbridge,</b> and <b>HTMLised.</b>" }
					ParagraphText { text: "<b>Proofread by</b> <a href='mailto:gschmidl@gmx.at'>Gunther Schmidl</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}

				}

            } //MainColumn

        } //flickable

    } //SrollView

}
