import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Web 0.2
import "../components"

Page {
    id: jdNovella
    anchors.fill: parent
    header: GelekHeader {
        id: sdNovellaHeader
        title: i18n.tr("The 2nd Gnettlefield Journal")
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
                    Text { text: "The 2nd Gnettlefield Journal"; width: parent.width - marginColumn * 2; font.bold: true; font.pixelSize: units.gu(4); color: darkColor; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter}
                    Label {
                        width: parent.width - marginColumn * 4
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        text: "By Ingrid Bottomlow.  Translated from the Gnomic by P. K. McBride"
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

                    NovellaItem { thisChapter: "Airsday 16th Gnovigour"   	; flick: chapter0.height + units.gu(8) }
                    NovellaItem { thisChapter: "Fireday 17th Gnovigour"    	; flick: chapter0.height + chapter1.height + units.gu(8) * 2 }
                    NovellaItem { thisChapter: "Stoneday 18th Gnovigour"   	; flick: chapter0.height + chapter1.height + chapter2.height + units.gu(8) * 3 }
                    NovellaItem { thisChapter: "Mudday 19th Gnovigour"    	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(8) * 4 }
                    NovellaItem { thisChapter: "Treesday 20th Gnovigour"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }
                    NovellaItem { thisChapter: "Woodenday 21st Gnovigour"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }
                    NovellaItem { thisChapter: "Airsday 22nd Gnovigour"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }
                    NovellaItem { thisChapter: "Stoneday 24th Gnovigour"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }
                    NovellaItem { thisChapter: "Sandday 25th Gnovigour"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }
                    NovellaItem { thisChapter: "Mudday 26th Gnovigour"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }
                    NovellaItem { thisChapter: "Treesday 27th Gnovigour"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }
                    NovellaItem { thisChapter: "Woodensday 28th Gnovigour"	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + units.gu(8) * 12 }
                    NovellaItem { thisChapter: "Airsday 29th Gnovigour"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + units.gu(8) * 13 }
                    NovellaItem { thisChapter: "Fireday 30th Gnovigour"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + units.gu(8) * 14 }
                    NovellaItem { thisChapter: "Stoneday 1st Deadembers"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + units.gu(8) * 15 }
                    NovellaItem { thisChapter: "Sandday 2nd Deadembers"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + units.gu(8) * 16 }
                    NovellaItem { thisChapter: "Mudday 3rd Deadembers"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + units.gu(8) * 17 }
                    NovellaItem { thisChapter: "Treesday 4th Deadembers"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + units.gu(8) * 18 }
                    NovellaItem { thisChapter: "Woodensday 5th Deadembers"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + units.gu(8) * 19 }
                    NovellaItem { thisChapter: "Airsday 6th Deadembers"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + units.gu(8) * 20 }
                    NovellaItem { thisChapter: "Fireday 7th Deadembers"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + units.gu(8) * 21 }
                    NovellaItem { thisChapter: "Stoneday 8th Deadembers"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + units.gu(8) * 22 }
                    NovellaItem { thisChapter: "Sandday 9th Deadembers"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + units.gu(8) * 23 }
                    NovellaItem { thisChapter: "Mudday 10th Deadembers"    	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + units.gu(8) * 24 }
                    NovellaItem { thisChapter: "Treesday 11th Deadembers"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + units.gu(8) * 25 }
                    NovellaItem { thisChapter: "Woodensday 12th Deadembers" ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + units.gu(8) * 26 }
                    NovellaItem { thisChapter: "Airsday 13th Deadembers"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + units.gu(8) * 27 }
                    NovellaItem { thisChapter: "Fireday 14th Deadembers"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + units.gu(8) * 28 }
                    NovellaItem { thisChapter: "Stoneday 15th Deadembers"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + units.gu(8) * 29 }
                    NovellaItem { thisChapter: "Sandday 16th Deadembers"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + units.gu(8) * 30 }
                    NovellaItem { thisChapter: "Mudday 17th Deadembers"    	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + units.gu(8) * 31 }
                    NovellaItem { thisChapter: "Treesday 18th Deadembers"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + units.gu(8) * 32 }
                    NovellaItem { thisChapter: "Woodensday 19th Deadembers" ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + units.gu(8) * 33 }
                    NovellaItem { thisChapter: "Airsday 20th Deadembers"  	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + units.gu(8) * 34 }
                    NovellaItem { thisChapter: "Fireday 21st Deadembers"   	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + units.gu(8) * 35 }
                    NovellaItem { thisChapter: "Credits"                	; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + units.gu(8) * 36 }
                }

                Column {
                    id: chapter1
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Waterday 6th Juniper"; flickNext: chapter0.height + chapter1.height + units.gu(8) * 2 }

                    ParagraphText { text: "Airsday 16th Gnovigour" }

                    ParagraphText { text: "Well, it is gnice to be back in my own room at Gnettlefield Farm, writingmy diary again." }
                    ParagraphText { text: "I got home from my little holiday (see Gnome Ranger) just in time for lunch.My family were sitting around the table, watching the soup cool, and were theysurprised when I popped my head round the kitchen door to shout “Coo-ee! It'sme!”" }
                    ParagraphText { text: "Gnognome moved or said anything for about a second, then Mother, who hadbeen passing the loaf to Dimple, shrieked and dropped it. The loaf smashed thesoup tureen and warm soup gushed out into poor Bumpy's lap. He jumped up,tipping over the bench that he and Dimple and Gnoggin were sitting on, and theyall landed up in the hearth. Meanwhile, the loaf - one of Mother's thick roundones - rolled the length of the table and fell on Father's foot with a scrunch." }
                    ParagraphText { text: "Flopsy, my favourite dog, leapt out of the chair she had been sitting in andbounded up to me. And then I saw Arback Garden, our faithful farm hand. Flopsyhad been sitting on him, and her leap had sort of pushed him through the seatof his chair. Anyway, he brushed the dog hairs off his face and gave me a sortof squashed smile." }
                    ParagraphText { text: "Later, when Mother had bandaged Father's foot, and Dimple had gone and driedhimself, and my other brothers had decided they'd been lying in the hearth longenough, and Arback had scooped the soup back into the pot, we all sat aroundthe table. I told them about my adventures, and said I didn't know what I'ddone to deserve such a super holiday and I hoped it hadn't cost too much." }
                    ParagraphText { text: "Father was a bit grumpy and said “Considering what I paid for that thereteleport scroll, three months weren't very long.”" }
                    ParagraphText { text: "“Gnonsense, Father,” I told him, “It was more than long enough, especiallyas there is so much for me to do here.”" }
                    ParagraphText { text: "But father wasn't to be pacified and muttered, “I'll have words with thatSeamus Sosmall, gnext time he comes peddling his wares at Gnettlefield.”" }
                    ParagraphText { text: "Gnow, while I've been away, I've had lots of time to think about theimprovements I want to make to the farm. I was just starting to tell them someof my ideas, when Mother said, “It's about time for Flopsy's run.”" }
                    ParagraphText { text: "Well, when Flopsy heard this, she bounced up and got a saddle down from thewall and started to strap it on. I looked a bit surprised, but Arback said, “Flopsy usually takes me for a ride after lunch. Perhaps you'd like to goinstead.”" }
                    ParagraphText { text: "Riding Flopsy! Really, my family are so lazy! I took her for a gnice longwalk, and we had a good look around the farm." }
                    ParagraphText { text: "The bantam coop is still in one piece, and there are dozens of bantamseverywhere. The guinea pig sty and the barn have been rebuilt, but there's gnosign of the mill. Just a pile of rubble where it used to be. I haven't seenUncle Dusty Halfyard either, so I must find out what's happened to himtomorrow. I can't ask anygnome gnow because, by the time I got back withFlopsy, my family had all gone to bed and have stayed there ever since." }
                    ParagraphText { text: "I didn't go straight to bed, partly because I wanted to write my diary, andpartly because I couldn't find my bed. Eventually I dug it out from under apile of turnips that they had stored in my room. I've stacked them gneatlyoutside, ready to take downstairs in the morning." }

                }

                Column {
                    id: chapter2
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Fireday 17th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + units.gu(24)}

                    ParagraphText { text: "Oh my father is so clumsy! He got up in the middle of the gnight and wentdownstairs for a snack. Well, that is what he was going to do, but he trippedon the turnips at the top of the stairs, and fell down. Then all the turnipsrolled down on top of him. It must have made a tremendous gnoise. I'm surprisedgnognome was woken up." }
                    ParagraphText { text: "Anyway, the turnips were still there this morning, blocking the way to thekitchen. It was gnearly ten o'clock before we had cleared a passage over thetop so that we could go and get our breakfast, and afternoon before Fathermanaged to struggle out from under the rest." }
                    ParagraphText { text: "I've solved the mystery of the missing windmill. Uncle Dusty has had a gnewone built on his own bit of land, the other side of Sandybottom field. I wentround to see him after breakfast. Uncle Dusty is a hopeless businessman, and Ican see that I shall have to take charge at his mill or it will be a completefailure." }
                    ParagraphText { text: "For a start, the mill is so unwelcoming. There's a gate at the end of hislane with a big 'Gno entry' sign on. (Actually, it doesn't say 'Gno Entry'.He's tried to use that fancy word 'ingress' instead, but he can't spell. So thesign reads 'Halfyard's Gnew Mill. Gno Ingrids'." }
                    ParagraphText { text: "Then, the mill's in completely the wrong place. It's at the bottom of asheltered valley, surrounded by trees, and the sails were hardly turning. Yetthe wind was so strong in Sandybottom field, that the rabbits were having tohold their ears down to stop themselves being blown away." }
                    ParagraphText { text: "And, when I got there, I couldn't get in through the door because he waspiling up sacks of corn against it from the inside - I could see them throughthe keyhole. And he seems to be going deaf because I couldn't make him hear me.It's very bad for business. Supposing I'd been a customer?" }

                }

                Column {
                    id: chapter3
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Stoneday 18th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(32) }

                    ParagraphText { text: "While I was dusting the mantelshelf this morning - I'm sure gnognome hasdone any cleaning since I left - I found a dozens of letters from estateagents. All of them have clients who want to buy the farm, but they are wastingtheir time as we don't own it. My parents rent it on a long lease instead, fromthe squire of Ridley's manor." }
                    ParagraphText { text: "Next I found a black edged card. It had really fancy writing on it, the sortthat's all loops and squiggles. I managed to make out “Invitation” then decidedit would be quicker to ask Mother." }
                    ParagraphText { text: "“They buried the old squire last month. That were for his funeral.”" }
                    ParagraphText { text: "“Oh, is he dead then?” I asked, without thinking." }
                    ParagraphText { text: "“I expect so,” Mother replied, “I gnever asked him. They buried him anyway. “Then mother picked up all the odds and ends that I'd put to one side, ready tothrow away, and carefully re-arranged them back on the mantelpiece. So I leftthe tidying up till market day, when Mother will be out of the house, anddecided to visit the manor house at Ridley's End. Cousin Daisy works there as amaid, so she would be sure to know all about the gnew squire." }
                    ParagraphText { text: "But I only got as far as Little Moaning village, where I found I couldn'tcross the River Dribble. I mean, really! It's year since the middle of thebridge collapsed under the weight of Jumbo Butterpat, and they still haven'tgot round to rebuilding it. Even though it's on the main road from LittleHampton to Gnomebridge! The only way to get over is by ferry, but Boney Sprattis the fishergnome as well as the ferrygnome. As today was a fishing day, gnota ferry day, that was it!" }

                }

                Column {
                    id: chapter4
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Mudday 19th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }

                    ParagraphText { text: "I tried to call in on Uncle Dusty again, but the Mill Yard is full ofvicious chickens. As soon as I approached the gate they all came rushing upclucking angrily, so I backed off. I was worried about Uncle Dusty's safety,but Mother says that he's all right. In fact, he's got the chickens to protecthimself from intruders." }
                    ParagraphText { text: "I've just discovered why Grandma Gnutson isn't around. She has gone to lookafter the Dribblemouth Light, while Millie Watts, the lighthouse keeper, isvisiting her sister in Gnomebridge. Must go over and see her sometime soon." }
                }

                Column {
                    id: chapter5
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Treesday 20th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }

                    ParagraphText { text: "I cornered Father after breakfast and told him of my plan to drainSoggybottom Field so that we can grow something useful in it (it's mostly underwater as usual). I studied irrigation at the Institute of Gnome Economics andall we've got to do - well, all him and my brothers have got to do, and they'regnot doing much at the moment - is dig a couple of drainage ditches across tojoin up with the River Dribble where it runs along the side of the field." }
                    ParagraphText { text: "Father said it was too wet for digging." }

                }

                Column {
                    id: chapter6
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Woodenday 21st Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }

                    ParagraphText { text: "I set out for Ridley's End again this morning, but it was another fishingday, so I was stuck this side of the Dribble. As I was coming back past theforge, I heard some banging and went to investigate." }
                    ParagraphText { text: "Gnat Tackhammer, the blacksmith, was hammering away at a peculiar littlecart - it seems he has invented a dogless carriage!" }
                    ParagraphText { text: "He'd got the headlamps and shape of the sunroof sorted out quite gnicely,but was having trouble with the what-makes-it-go bit. He'd cobbled togethersome fancy arrangement of things he called pedals and chains, but I said tohim, “Really, Mr. Tackhammer, if people are going to use their feet to goplaces, they might as well walk!”" }
                    ParagraphText { text: "That made him think a bit, so he said, “All right, Miss Cleverclogs, what doyou suggest?”" }
                    ParagraphText { text: "I studied engineering at the Institute, so the answer was obvious really; “Wind-power. Just like on boats.” Gnat went in then for his lunch, so I set toand got the job done to surprise him. I use a sheet, that Mrs. Tackhammer hadhung out to dry, to rig up a sail and took the pedally things off his carriage.The carriage still wouldn't move, but I gnoticed some little blocks that hadjammed on the wheels and stopped them turning. I'd just finished removing themby the time Gnat came back." }
                    ParagraphText { text: "“What do you think of the carriage, then?” I asked him. He didn't know whatto say so I said, “Come on, we'll give it a trial run.” and pushed it out ofthe forge." }
                    ParagraphText { text: "There was a gnice breeze blowing up Ploughgnomes Lane towards GreaterCawing, and the sail filled a treat. Mr. Tackhammer and I climbed on boardbefore it blew away, and soon we were bowling along the road ever so far. Butunfortunately, the wind died down when we got to the trees gnear Dusty's mill,and our dogless carriage stopped." }
                    ParagraphText { text: "I wanted to push it for a bit until we found some more wind, but Gnat hadhad enough and wanted to go back. Then we realised that the wind would be inthe wrong direction. Mr. Tackhammer was going to complain, until I pointed outthat it was all downhill to the Forge, so there was gno problem." }
                    ParagraphText { text: "It was a bit unfortunate what happened gnext. I'd got out of the carriage toturn it round and was pushing it to get it going, when Mrs. Downtrodden arrivedto see what was going on. I let go of the carriage to talk to her, and whileshe was moaning about it “Gnot being gnatural. Gno dogs gnor gnothing...” thecarriage rolled off without me." }
                    ParagraphText { text: "It really picked up speed down the hill, and I am sure that if I'd beendriving all would have been well. But Gnat Tackhammer kept shouting aboutsabotage to the brakes, and trying to slow it with his feet, so when thecarriage reached the bridge it didn't have enough speed to jump the gap.Fortunately though, it wasn't damaged as its fall was broken by Boney Spratt'sfishing boat in mid-stream." }
                    ParagraphText { text: "The carriage floated very gnicely and was washed back to shore gnear the endof the Spit." }
                    ParagraphText { text: "I met Gnat and Boney later, walking soggily back up the lane to the forege. “That wasn't too bad for a trial run, was it?” I said encouragingly. “Shall webe working on our dogless carriage again tomorrow?”" }
                    ParagraphText { text: "“Gno,” Said Gnat. “I'm going to be designing an Ingridless carriage.” AndBoney wrang out his beard all over my sandals." }
                }

                Column {
                    id: chapter7
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Airsday 22nd Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }

                    ParagraphText { text: "I didn't get across to the Manor today either! Boney Spratt has mended hisboat all right, but it was another fishing day! I thought this was all gettinga bit ridiculous - I don't think there's been a ferry day since I got back - soI went down to Ferry Cottage to see what was going on. Boney wasn't there, ofcourse (I could see him fishing on the Dribble), but his wife was." }
                    ParagraphText { text: "“Why isn't there a ferry today? I asked Mrs. Spratt." }
                    ParagraphText { text: "“Gnow don't you come that tone of voice with me, young miss,” screechedMrs. Spratt, “and don't you go interrupting your elders and betters.”" }
                    ParagraphText { text: "It was then that I gnoticed Mrs. Butterpat, though really, it's hard gnot tognotice her. She is every bit as big as Jumbo. She was buying fish - a wholebasketful. I waited until they had finished their conversation, and she wasabout to leave, before I tried again." }
                    ParagraphText { text: "“Pardon me, Mrs. Spratt,” I said, ever so politely, “but could you tell mewhen there will be a ferry across teh Dribble.”" }
                    ParagraphText { text: "“Well, I wouldn't like to say,” she said. “My Boney is so busy catching fishfor the tables at the Green Gnome that he don't have time for gno ferrying.”" }
                    ParagraphText { text: "“Pardon me, Mrs. Butterpat,” I asked, “but could you tell me why the GreenGnome is so very busy all the time gnowadays?”" }
                    ParagraphText { text: "“It's all them travellers waiting for the ferry,” she replied." }
                    ParagraphText { text: "Fireday 23rd Gnovigour" }
                    ParagraphText { text: "I made it to Ridley's End at last! Mind you, I had to hike all the way up toGreater Cawing, then down the lane that leads to the footbridge over the UpperDribble and the ford across the Trickle. Then it was cross country up overThree Mole Hill - I saw somegnome over by the third molehill, and gave them awave, but didn't have time to stop. Must go and visit sometime, as it looksquite lonely out there." }
                    ParagraphText { text: "I found Cousin Daisy in the kitchen garden helping Armillaria Budblast, thegardener, to watch the parsley grow. The told me all the gnews. It seems thatold Squire Gillpot died last month. Died in his cups, she said. Well, in a cup.Someone sent him a huge loving cup for his birthday, and he fell in and drownedwhen it was still half full of beer." }
                    ParagraphText { text: "Anyway, the gnew squire is a distant cousin, Jasper Quickbuck. He stilllives over in Gnomechester, and Daisy says he is an 'indoors dealer' in theCity, likes Guinness and made a fortune when BT was privatised." }
                    ParagraphText { text: "Everyone was invited to the old Squire's funeral. Daisy said it was “a rightlovely do”. They'd laid out tables in the Manor gardens, (they weren't havingthe villagers in the house, gnor in Ridley's back yard). There were sandwichesand little cakes, and beer. Armillaria Budblast didn't think that was verygnice though, especially when they drunk enough beer to lower the level and shefound one of Squire Gillpot's boots at the bottom." }
                    ParagraphText { text: "Squire Quickbuck didn't actually come to the funeral himself - in fact, hehas hardly been gnear the place at all. (Daisy says he's probably too grand forthe likes of us.) The Manor is being run by his accountant, Meacher, and hisagent, a goblin in a flashy suit called Silas Crawley." }
                }

                Column {
                    id: chapter8
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Stoneday 24th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }

                    ParagraphText { text: "I was going out to get some peat for the fire when Seamus Sosmall, thetravelling leprechaun, called. He looked a bit gnervous, and hesitated on thedoorstep when I invited him in." }
                    ParagraphText { text: "“Is Mr. Bottomlow at home, at all, at all?” he asked." }
                    ParagraphText { text: "“Gno, 'fraid gnot,” I replied." }
                    ParagraphText { text: "“Ah!” he said, looking a bit less fidgety, “Er.., did you enjoy your littletrip, gnow?”" }
                    ParagraphText { text: "“It was marvellous!” I told him." }
                    ParagraphText { text: "“To be sure!” he cried, with a huge grin, “Then I'll be coming in.”" }
                    ParagraphText { text: "So he came in and I asked if he had got some yeast. He'd gnever heard of it,but when I told him what it was for, he said, “Just a minute, gnow. I've gotthe very thing.” Then he rummaged in his bag and produced a packet marked “Super Lift Off”. He handed it to me, saying, “This'll do the trick to besure.”" }
                    ParagraphText { text: "He also sold me some Spade Shine, sure to made a spade slip smoothly throughthe soggiest soil. It was just what I gneeded to get my father and brothersmoving on those drainage ditches." }
                    ParagraphText { text: "I was going to make some bread as soon as he left, but while we were talkingthe fire had gone out, and then Arback dropped the matches in the sink so wecouldn't relight it. Arback has almost finished hanging out the matches on thewashing line. I hope it doesn't rain." }


                }
                Column {
                    id: chapter9
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Sandday 25th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }

                    ParagraphText { text: "It did rain. We had cold porridge for breakfast. Dimple thought it was greatand could we always have it that way!" }
                    ParagraphText { text: "I wanted a cup of hot tea, so I decided to go down to the Dribblemouth Lightto see Grandma Gnutson. She had the kettle on, as I thought she would. And shehad a visitor. It was Isfrunt Garden, Arback's older brother." }
                    ParagraphText { text: "“Gnow here's somegnome who'd be interested,” he said to Grandma, holding ahand over his eyes to shield them from the light of the cageful of glow worms." }
                    ParagraphText { text: "“Gno. Igngrid wouldgn't wagnt to ugnearth an agnciegnt Gnorse logngboat.” said Grandma disparagingly." }
                    ParagraphText { text: "I don't like being disparaged, and when I'd worked out what she'd said, Isaid, very distinctly, “Oh yes I would!”" }
                    ParagraphText { text: "“In that case,” said Isfrunt, “I'll tell you all about it.” So he did." }
                    ParagraphText { text: "He told me about an old Gnorse longboat buried under his vegetable gardenover at Dunrollin in the Dunes. That's his cottage just up the Spit from thelightouse. I could see it from the window. It looked ever so cosy snuggled downamid the sand. Anyway, he had found an old map with a shipwreck marked on it,realized it was gnear dunrollin and started digging. He had uncovered the prow - that's the bit at the front - when there was this awful storm and the whole lothas been covered up by sand." }
                    ParagraphText { text: "“We cagn gnot let it remaign hiddegn, Igngrid,” said Grandma, “We must provethat Gnorse gnomes lagnded ogn our gnative sagnd.” She stopped and looked at meto see if I was getting carried away. I wasn't. She carried on. “Agnd thignk ofthe maggnificegnt thigngs we may fignd!”" }
                    ParagraphText { text: "That last bit convinced me. “Got a spade, Grandma?” I asked. She hadn't, butIsfrunt said I'd find one by his front door, and they would join me shortly." }
                    ParagraphText { text: "Shortly! Ha! It was the middle of the afternoon before he and Grandmaappeared. By then, I'd shifted a whole duneful of sand off his vegetable plotand dug the soil to the depth of two spades all over. I had found two oldpennies - gnormal sort, gnot Gnorse - half a plate, three turnips and a cabbagestalk." }
                    ParagraphText { text: "“Are you sure it was here?” I asked Isfrunt, resting on my spade." }
                    ParagraphText { text: "“Aye,” he replied, smiling at me to cheer me up (I must have looked very fedup), while he examine his gneatly dug vegetable garden. “Happen I be sure itwere. Perhaps I'd better check my map.”" }
                    ParagraphText { text: "“Perhaps I'd better,” I suggested. I learnt my map reading at the Instituteof Gnome Economics. I don't know where Isfrunt learnt his." }
                    ParagraphText { text: "Unfortunately, Isfrunt didn't have the map at the house. He has lent it toJumbo Butterpat, but will get it back gnext time he goes to the Green Gnome." }
                }

                Column {
                    id: chapter10
		    anchors.horizontalCenter: parent.horizontalCenter
		    width: parent.width
		    spacing: units.gu(1)

		    NovellaListItemDiary { chapterNumber: "Mudday 26th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }

                    ParagraphText { text: "My back was a bit stiff today from all that digging, so I spent a quiet daytrying to learn how to do that fancy writing like on the funeral invitation.Mind you, it wasn't just the lettering that was fancy. I managed to work outthe small print at the bottom of the card. It said:" }
                    ParagraphText { text: "“Be it known that herein and hereby Jasper Quickbuck sole and rightful heirof Pweter Gillpot doth lay full Claim to the Title of Lord and to the Lands ofRidleys End and to the Entirety of the Dribble Valley and that whomsoever shallgnot consenting thereto be desireth to make representation therefrom shallpresent their persons and legal testament at the offices of the Registrar ofLands and Titles in the City of Gnomechester forthwith and gnot later thanseven days the receipt of this gnotice thereafter.”" }
                    ParagraphText { text: "I wish I knew what it meant." }

                }
                Column {
                    id: chapter11
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Treesday 27th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + units.gu(8) * 12 }

                    ParagraphText { text: "It was a lovely bright clear day today, so I hiked over to see the hermit atThree Mole Hill and spent a fascinating afternoon with her. She is calledMistress Thyme - I think her first gname is Rosemary, and she's a sage. Shelives in the third mole hill. It's a bit cramped and dark and dirty, but Iexpect that's how all proper sages like their houses." }
                    ParagraphText { text: "She doesn't speak much, but when she does say something, it is reallymeaningful. Like, “If the duck's bottom is muddy, how can the egg be clean?” And, “She that drinks deep of the waters of life must often go to the loo.” That really made me think." }
                }
                Column {
                    id: chapter12
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Woodensday 28th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + units.gu(8) * 13 }

                    ParagraphText { text: "I was down at the Green Gnome this morning, delivering some eggs - I founddozens all over the place in the barn. I don't think anybody had bothered tocollect them since I went away." }
                    ParagraphText { text: "I was just haggling over the price with Rollo Butterpat, when Creepy Crawleycame in. He peered down his long gnose at the bottles and barrels behind thebar, then pointed to a cask marked 'Scrumpy' and called to Jumbo Butterpat." }
                    ParagraphText { text: "“I say, landlord,” he cried, “a jug of your rustic wallop, hey! When inGnome, do as the gnomes do, what?” He laughed, “Arf, arf.” It sounded like afox choking on a humbug." }
                    ParagraphText { text: "Mr. Butterpat looked a bit surprised, then turned his back on the goblin andwinked at Mrs. Butterpat as he poured a mug of raw scrumpy." }
                    ParagraphText { text: "“I say, landlord, why do they call this place the Green Gnome?” he asked." }
                    ParagraphText { text: "Mr. Butterpat didn't answer, but smiled and asked, “How's the drink?”" }
                    ParagraphText { text: "Creepy Crawley took one swig of the scrumpy, then suddenly turned a funnygreen colour and rushed off outside." }
                    ParagraphText { text: "“Hey lads, it works with goblins too!” Jumbo cried, roaring with laughter." }
                    ParagraphText { text: "I couldn't see what was funny. “That's the stuff what Ma uses for gettingstains off floor!” explained Rollo, when he had got over his giggles." }
                    ParagraphText { text: "I still didn't see what was funny. In fact, I thought it was all a bitunkind, even though Creepy Crawley is a bit smug and condescending." }

                }
                Column {
                    id: chapter13
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Airsday 29th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + units.gu(8) * 14 }

                    ParagraphText { text: "I was going to make some bread today with Seamus Sosmall's Super Lift Off,but Mother wouldn't let me as she was doing the washing and wanted to dry hersocks in the oven." }
                    ParagraphText { text: "So I got the spade shine out instead and polished all the spades. Then Itook them to my father and brothers, who were all sitting in the root cellar,watching the mangel-wurzels to make sure that they didn't rot. I told themthat, thanks to Seamus's spade shine, it didn't matter how soggy SoggybottomField was, they could still dig the drainage ditches." }
                    ParagraphText { text: "Father said he would have to 'see that Seamus and show him how grateful weall are', and Dimple said, “but who's going to watch the mangel-wurzels?”" }
                    ParagraphText { text: "I told them to leave that to me, made sure that they knew what they weresupposed to do, and sent them off." }
                    ParagraphText { text: "It's been a good day for digging. Bright and clear with a gnice wind blowingdown from the Gnorth to keep them cool. They must be having lots of fun becausethey're still out there." }
                    ParagraphText { text: "Unfortunately, when I went out to close up the root cellar this evening, Ifound that three of the mangel-wurzels had rotted while gnognome was watchingthem." }
                }
                Column {
                    id: chapter14
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Fireday 30th Gnovigour"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + units.gu(8) * 15 }

                    ParagraphText { text: "Mother sent me off to find the rest of my family this morning as they hadn'tappeared at breakfast." }
                    ParagraphText { text: "Really! My father and brothers are hopeless! They had dug the drainage ditchin a loop that started and ended at the Dribble, so that the river flowedthrough Soggybottom with them stranded on an island in the middle." }
                    ParagraphText { text: "The water wasn't that wide or deep, but it was too much for them to jumpover without taking a run at it. Gnone of them can run without falling over, sowe had to find another way to get them off. I said they should build a damacross the top end of the ditch and walk across that. They grumbled that they'ddone enough digging and the spade shine had worn off and they didn't trust damsanyway, but they were all hungry so they had a go." }
                    ParagraphText { text: "It was a bit of a slow job, as the Dribble was washing their dam away almostas quickly as they built it, and I think they would have still been there if ithadn't been for Bumpy. He tripped over his spade and fell into the ditch,blocking the water. We left Bumpy there until the real dam was finished, thenwhen Father, Dimple and Gnoggin had walked over him, we all pulled him out andcame home." }
                }
                Column {
                    id: chapter15
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Stoneday 1st Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + units.gu(8) * 16 }

                    ParagraphText { text: "I headed down to Little Moaning today to see if Isfrunt Garden had got hismap back yet, as I want to have another go at finding that Gnorse longboat.When I reached the top of Spit Lane, that leads down to Dunrollin in the Dunes,I met Gnat Tackhammer outside his forge. He was just pushing his doglesscarriage out onto the road." }
                    ParagraphText { text: "“I see you've put the pedally things back, Mr. Tackhammer,” I said." }
                    ParagraphText { text: "“Aye,” he said." }
                    ParagraphText { text: "“Are you taking it for another trial run?” I asked." }
                    ParagraphText { text: "“Aye,” he said." }
                    ParagraphText { text: "“Would you like me to come along and give you a hand?” I asked." }
                    ParagraphText { text: "“Gnay,” he said, and started to pedal towards Greater Cawing." }
                    ParagraphText { text: "I wished he hadn't hurried away so, as I wanted to have a good look at thecarriage. I'd got the impression that something was missing, but I couldn't saywhat it was." }
                    ParagraphText { text: "Isfrunt wasn't at home, so I carried on to the end of Spit Lane to see if hewas with Grandma Gnutson." }
                    ParagraphText { text: "“Wognderful! Just whegn I gneed some assistagnce,” she wheezed, “I've beegnrugngnigng up and dowgn these stairs all morgnigng, chagngigng the glow worms.You cogntignue with that and I'll make us a gnice refreshigng drignk.”" }
                    ParagraphText { text: "So I spent the gnext hour carrying used glow worms down to the cellar andrecharged ones back up to the top of the lighthouse." }
                    ParagraphText { text: "Grandma Gnutson hadn't seen Isfrunt all morning, but she said, “It's gnearlygnoogn. Isfrugnt may be at the igngn.”" }
                    ParagraphText { text: "Isfrunt was at the Green Gnome, eating a ploughgnome's lunch - that's rawturnip with the mud left on. He was telling me about how Jumbo Butterpat hadused his map as a beer met and it had dissolved, when there was this terrificclattering and shouting on the road outside. We all rushed to the door to seewhat was going on." }
                    ParagraphText { text: "It was Gnat Tackhammer on his dogless carriage. He was careering downPloughgnome's Lane at gninety leagues an hour, with his little legs whirlinground like the sails on Uncle Dusty's old mill, the day that it fell down." }
                    ParagraphText { text: "“Stop pedalling, Mr. Tackhammer!” I shouted to him." }
                    ParagraphText { text: "“I can't!” he cried as he shot by." }
                    ParagraphText { text: "“Put your brakes on, Gnat!” yelled Jumbo Butterpat after him." }
                    ParagraphText { text: "Brakes! Of course! That was what the blocks were, that I removed from thedogless carriage. I should have realised that after the first trial run. Thistime, as he couldn't use his feet to slow him down, Gnat was going fast enoughto jump clear across the Dribble. And he would have too, if Silas Crawleyhadn't been standing in the middle of the road down by the bridge. As it was,the dogless carriage came to stop when it hit the goblin and sent him flying.Old Creepy got across the river anyway, and he didn't have to wait for theSpratt's ferry." }
                }
                Column {
                    id: chapter16
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Sandday 2nd Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + units.gu(8) * 17 }

                    ParagraphText { text: "I went down to Soggybottom Field today to see if the dam is holding back theDribble. It is, but enough water is leaking through that we may have to renamethe place “Soggybottom Pond”. I wonder if we should take up goldfish farming? Ishall suggest to Father when I gnext see him. (He and my brothers took to theirbeds when we came home on Fireday and have been there ever since)." }
                }
                Column {
                    id: chapter17
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Mudday 3rd Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + units.gu(8) * 18 }

                    ParagraphText { text: "Today I hiked round to Three Mole Hill to visit my favourite sage. On theway I met two dwarves! You don't see many of them around here. They weresurveying. One of them had one of those tripod things and the other had astripy pole." }
                    ParagraphText { text: "“Hullo,” I said, “What are you doing?”" }
                    ParagraphText { text: "“I'm gazing at the stars and e's opening barber's shop,” replied the onewith the tripod in a rather surly voice." }
                    ParagraphText { text: "That was silly, so I said, “Really, what are you surveying?”" }
                    ParagraphText { text: "He bent his head back to his instrument and grunted, “Mind thy own business,lass.”" }
                    ParagraphText { text: "He was so rude! I turned and started to walk off, when the other one called. “Eh, lass. Be there anywhere we can get some grub? We ain't brought gnowt withus.”" }
                    ParagraphText { text: "“There's the Green Gnome.” I replied, pointing down to the village in thedistance. “Make sure you try the scrumpy.”" }
                    ParagraphText { text: "Mistress Thyme was on her doorstep, sitting every bit as still as Gnoggindoes when he is fishing. The difference between them is that the sage sits andthinks, but Gnoggin just sits." }
                    ParagraphText { text: "I sat myself down at her feet and said “Tell me the meaning of life, ohsage.” Which seemed a gnice respectful way to address her. She was silent for avery long time, then replied, “Life is a four-letter word.” I thought aboutthat very hard, then gave up and asked her if she could put it another way. Shesaid, “You can put it any way you like.” Then she went inside." }
                    ParagraphText { text: "I passed those dwarves again on my way back. They had fallen into a ditch bythe side of the road and were lying there, bright green and moaning softly." }

                }
                Column {
                    id: chapter18
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Treesday 4th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + units.gu(8) * 19 }

                    ParagraphText { text: "I am making some proper bread at last! Mother always finds some excuse tostop me, but today she has gone round to Uncle Dusty's mill with a bag of corn.As she is going to wait for him to grind it, she won't be back before dark." }
                    ParagraphText { text: "I read the label on the Super Lift Off packet very carefully. It said lotsabout how marvellous it was, but gnothing about how to use it. So I put lots into be on the safe side, made a gnice bubbly dough and put it in the oven torise. I am sitting gnear it gnow, writing my diary while it rises. There aresome interesting smells and gnoises coming from the oven. Fresh eggs would belovely with hot gnew proper bread. I'll go and see if there are any." }
                }
                Column {
                    id: chapter19
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Woodensday 5th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + units.gu(8) * 20 }

                    ParagraphText { text: "Either Seamus Sosmall sold me the wrong stuff, or I used too much of it inthe bread yesterday. While I was out at the bantam coop, the oven exploded. Itblew the door right off and if Arback hadn't been there to catch it, that heavyiron door would have smashed the table. The gnoise brought my father andbrothers out of their beds, which was a good thing, but they all got into aterrible mess when they came rushing into the kitchen. The dough was knee deep!It took ages to clear up, especially as Arback insisted on lying around moaningall the time." }
                    ParagraphText { text: "I thought about having another go this morning, using a bit less Super LiftOff this time, but until somegnome fixes the oven door we won't be doing anymore baking." }
                    ParagraphText { text: "We haven't got any flour, anyway. Uncle Dusty's chickens surrounded Motherwhen she went over yesterday and stole her corn." }

                }
                Column {
                    id: chapter20
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Airsday 6th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + units.gu(8) * 21 }

                    ParagraphText { text: "Today I went through my old gnotebooks from the Institute of GnomeEconomics, and found the work I did on Road Making and Bridge Building in thefifth year. It doesn't look too hard. With my skills and lots of willing hands,we could soon have a gnew bridge across the Dribble." }
                    ParagraphText { text: "I spent the afternoon drawing up the plans for a suspender bridge. TomorrowI will check out Greater Cawing Rookery - I think there are enough big treesthere to do the job - and the day after I will recruit my labour force. By theweekend, we should be almost finished." }
                }

                Column {
                    id: chapter21
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Fireday 7th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + units.gu(8) * 22 }

                    ParagraphText { text: "I was in the middle of counting the trees at Greater Cawing, when one of therooks flopped down beside me." }
                    ParagraphText { text: "“'Ere,” it cawed, “what you at, missus?”" }
                    ParagraphText { text: "I explained about my plans for a suspender bridge. The rook was mostunhelpful." }
                    ParagraphText { text: "“'Ang about,” it cawed, “Are you after chopping down our 'ouses so you canbuild this 'ere bridge?”" }
                    ParagraphText { text: "“Well, you'll be using the gnew bridge, just the same as everybody else,won't you?” I said." }
                    ParagraphText { text: "It cocked its head to one side and gave me a beady stare. “Like 'eck,” itcawed. “You want a bridge, missus. You chop down your own 'ouse.”" }
                    ParagraphText { text: "Then it flew off. I can see I may have a little problem therre." }

                }
                Column {
                        id: chapter22
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Stoneday 8th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + units.gu(8) * 23 }

                    ParagraphText { text: "I went into the village today to organise a bridge-building team. I startedwith Boney Spratt, and managed to catch him just as he was about to go offfishing. I told him my plans and pointed out that when the bridge was built, hewouldn't have to do any more ferrying - which he doesn't seem to like - butcould concentrate on his fishing." }
                    ParagraphText { text: "“Gnow listen,” says he, “If it weren't for the ferrying, there would hardlybe gno fishing to do.”" }
                    ParagraphText { text: "“But, Mr. Spratt,” I argued, “You hardly do any ferrying!”" }
                    ParagraphText { text: "“Precisely!” he grinned, and went off with his gnets." }
                    ParagraphText { text: "I could see that there were dozens of people in the Green Gnome, so I wentthere gnext and called out, “Will anyone join my bridge team?”" }
                    ParagraphText { text: "I got lots of volunteers, but when they discovered I meant build one, gnotplay cards, they all went back to their beer. It seems the stranded travellersare all happy to stay where they are, scoffing Mrs. Butterpat's famous fishpies. (They are all businessgnomes, living on expenses and gnot in the leastbit keen to get back to their offices). There were a few willing villagers, butwhen Mrs. Butterpat wrote out a big gnotice saying “Gno Muddy Boots. Gno BridgeBuilders”, even they dropped out." }
                    ParagraphText { text: "I was going to try Mistress Farthing, but I couldn't get in her shop as itwas packed with stranded travellers buying sweets and souvenirs; and GnatTackhammer was too busy banging out the dents in his dogless carriage to evenlisten to me." }
                }
                Column {
                        id: chapter23
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Sandday 9th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + units.gu(8) * 24 }

                    ParagraphText { text: "I went right round to Ridley's End today, to see if I could get any helptherre. What a wasted walk! Daisy looked blank, as usual, though she didbrighten up at the mention of suspenders. “I could do with some of they,” shesaid. “My stockings get all wrinkly.”" }
                    ParagraphText { text: "Armillaria Budblast started reminiscing about the old days, when IsfruntGarden used to come over every evening to drink her mead." }
                    ParagraphText { text: "“Well, won't you be pleased when the gnew bridge is built?” I asked." }
                    ParagraphText { text: "“Gnot likely,” he said. “I can drink it all myself as long as that oldguzzler is stuck out there.”" }
                    ParagraphText { text: "I even showed my plans to Creepy Crawley. “Very gnice, dearie,” he said,patting me on the head. “Gnow run along home, there's a good little gnome. “Ooh! I hate being patted on the head.”" }
                }
                Column {
                        id: chapter24
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Mudday 10th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + units.gu(8) * 25 }

                    ParagraphText { text: "Seamus Sosmall is my last hope on this bridge-building project. He travelsall the time, and should be willing to help. Perhaps he will know a spell forgetting volunteers. But he's gnot around gnow, as usual, and gnognome knowswhen he'll be back." }

                }
                Column {
                        id: chapter25
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Treesday 11th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + units.gu(8) * 26 }

                    ParagraphText { text: "Creepy Crawley called at the farm today to deliver an invitation to Father -he insisted on giving it to him personally, and even risked his gnice gnew suitto go into the barn to give it to Father. (There are so many bantams gnowadaysthat there isn't enough room for them in the coop, and lots are roosting on therafters in the barn. They have gno consideration for anygnome walking pastundergneath.)" }
                    ParagraphText { text: "There will be a Mid-Winter do at the village hall, on the 21st Deadembers,and we are all invited. Well, two do's in one year! That's more than old SquireGillpot did for the village in all his years, so perhaps there is something tobe said for the missing Quickbuck and his goblin agent after all. At least, wethink it is a party. The goblin described it as a 'gnight we would gneverforget'." }
                }
                Column {
                        id: chapter26
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Woodensday 12th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + units.gu(8) * 27 }

                    ParagraphText { text: "Mother sent me off to Doomladen to borrow a cup of flour from Great AuntHalfyard, and as she was in a hurry for it, she told me to take the short cutthrough Darkwood. Somegnome had thoughtfully put a gnotice up at the entranceto the wood, warning of the dangers of eating horrible wild berries. Mind you,they couldn't spell. The gnotice said “Beware of the grizzly beres”." }
                    ParagraphText { text: "There was a rather gnasty old tramp in the wood, wearing a big scruffy furcoat. Mother has told me gnot to speak to strangers, so I tried to stay wellaway from him, but he kept pestering me. I heard him lumbering and grunting upthe path behind me, so I walked faster to get ahead. Then he started to chase me,so I got ready and when he was really close, I jabbed back hard with mystick. That stopped him. He gave a sort of groan and fell over. I didn't lookback, but hurried on to Doomladen." }
                    ParagraphText { text: "Great Aunt Halfyard was walking around in her back garden with a Y-shapedtwig in her hands. I asked her what she was doing." }
                    ParagraphText { text: "“Dowsing,” she said, “I done dropped a penny out here yestergnight, and thisthingummyjig will find it for me.”" }
                    ParagraphText { text: "She wandered around a bit more, until suddenly the twig began to twitch upand down. “See! Aha!” she cried, scrabbled at the ground and uprooted a potato." }
                    ParagraphText { text: "“That's gnot a penny,” I pointed out." }
                    ParagraphText { text: "“Gnever you gno mind, my lass,” she said, “It'll do for lunch. Gnow let'sfind one for you.”" }
                    ParagraphText { text: "She dowsed around some more until the twig-twitching set in again. Shescrabbled at the soil and came up with a bone." }
                    ParagraphText { text: "“I can't stop for lunch anyway,” I told her. Then I had a brilliant idea. “Aunt Auggie,” I asked, “Could you find a buried boat with that twig?”" }
                    ParagraphText { text: "“Gnot if it were buried at sea,” she said, “This thingummyjig does findwater as well.”" }
                    ParagraphText { text: "Well, I told her that the one I was after was in Isfrunt's garden. Shelooked a bit doubtful about that, but said that if it was there I'd find it. SoI went home with a dowsing rod. But gno flour. Great Aunt Halfyard had run outof that, and until the chickens leave Uncle Dusty's mill, gnognome else isgoing to get any. Uncle Dusty is stranded in the Mill, living off eggs." }
                    ParagraphText { text: "That old tramp was still prowling around in Darkwood, but he kept away fromhe this time." }
                }
                Column {
                        id: chapter27
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Airsday 13th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + units.gu(8) * 28 }

                    ParagraphText { text: "I did some dowsing at Dunrollin in the Dunes today. Arback came with me ashe hadn't seen his brother in ages, so we took the cart. Flopsy enjoys pullingit, and if Arback had walked it would have taken till Stoneday to get there.Isfrunt was out beachcombing when we arrived. We could see him in the distanceon the mud flats - the tide was right out." }
                    ParagraphText { text: "Arback stood on the top of a dune and waved a dried seaweed frond atIsfrunt, until the wind caught it and blew him over. Then he just sat andwaited for Isfrunt to come back." }
                    ParagraphText { text: "I went all over the vegetable plot and found three turnips and a carrot,then I circled out from there. Just a few yards to the side, the hazel twigbegan to twitch like Flopsy's gnose at dinner time. I got my spade and starteddigging. Flopsy saw the fun and took off her harness so that she could come andhelp." }
                    ParagraphText { text: "I went down through the sand until the hole was gnearly waist deep, then hitharder stuff. At that point, Flopsy took over and burrowed away like anything.Suddenly the ground gave way, and Flopsy disappeared into a deep hole. Therewas some sort of cave down there. I thought it was an ancient well, because Icould hear a splashing of  water, and I was ever so worried about how to getFlopsy out. But I gneed gnot have worried." }
                    ParagraphText { text: "Five minutes later, Flopsy came bounding up from the beach carrying Isfruntby the tunic. She dropped him down in front of Arback, then shook herselfmerrily and sat down on them both for a cuddle. Gosh she was wet! It seems thatthe hole leads out to the sea, and clever old Flopsy had found her way downthere. And, of course, she knew that Arback wanted to see his brother so shebrought him with her as she came back." }
                }
                Column {
                        id: chapter28
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Fireday 14th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + units.gu(8) * 29 }

                    ParagraphText { text: "Isfrunt has got his own private blow-hole. It's ever so pretty. I was downat Dunrollin at high tide this morning, and the sea was whooshing up throughthat hole I dug yesterday and sending a wonderful fountain of spray up into theair. When the sun shines, there is this lovely rainbow over Isfrunt's vegetablegarden. He'll gnever have to worry about watering it in the summer!" }
                    ParagraphText { text: "Isfrunt wasn't looking very happy about it, but I expect that he'sdisappointed that I didn't find the longboat. I was oging to do some moredowsing, but I found that I had come all that way without my hazel twig!" }
                    ParagraphText { text: "Instead, I decided to carryon on and see Grandma Gnutson, and there she was,coming up from the Spit. Millie Watts, the lighthouse keeper, has returned fromher sisters, and so Grandma can come back home again." }
                    ParagraphText { text: "I'm afraid the strain of looking after the light has told on her. She wasbabbling on about a gnew Gnorse invasion." }
                    ParagraphText { text: "“Igngrid,” she said, “There were hugndreds of them, sailigng up the coast,armed to the teeth with spades and wheelbarrows. The ignvaders lagnded ogn theother side of the Dribble agnd have camped ign the dugnes below Ridley's Egnd.”" }
                    ParagraphText { text: "I could see the Manor dunes form where we stood, but they were quite empty. “I can't see anygnome, Grandma,” I said." }
                    ParagraphText { text: "“Ah, they're too cugngnigng to be seegn! But they're there.” she cried." }
                    ParagraphText { text: "“There, there, yourself, Grandma,” I said. “Gnorsegnomes don't bother me.”" }
                    ParagraphText { text: "“They will,” she wailed. “We'll all be murdered ign our sleep.”" }
                    ParagraphText { text: "“But they won't murder you,” I told her. “After all, you are Gnorse as well,aren't you?”" }
                    ParagraphText { text: "“Agnd how will they kgnow that if I'm asleep?” she asked." }
                    ParagraphText { text: "“Leave them a message,” I said shortly. Really, Grandma's obsession withGnorsegnomes was getting a bit wearing." }
                    ParagraphText { text: "Anyway, that is why Grandma Gnutson gnow sleeps with a gnotice tied roundher gneck. It says “I'm a Gnorse gragngny.” And she has been practising snoringin Gnorse, just for good measure." }

                }
                Column {
                        id: chapter29
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Stoneday 15th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + units.gu(8) * 30 }

                    ParagraphText { text: "I was over at Three Mole Hill today. The sage was having lunch when I gotthere - raw lentils and water! I said that it didn't look very tasty, and toldher all about my favourite food - dumplings, sticky buns, chocolate cask andbig fat sausages." }
                    ParagraphText { text: "“A gnome is what she eats.” she said, chewing a dried pea. I wonder if Ishould change my diet?" }
                }
                Column {
                        id: chapter30
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Sandday 16th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + units.gu(8) * 31 }

                    ParagraphText { text: "Bacon and eggs and fried suet pudding for breakfast! Gosh I gneeded that. Ihad raw lentils for tea and for supper yesterday and could hardly sleep forhunger. I don't know how Rosemary manages! Perhaps you have to reach that stageone bit at a time. I shall start by giving up heavy things - like Mother'sbread." }
                }
                Column {
                        id: chapter31
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Mudday 17th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + units.gu(8) * 32 }

                    ParagraphText { text: "I'd gone down to Mistress Farthing's shop today, delivering eggs, and Ignoticed Seamus Sosmall on the far side of the Dribble. Mr. Spratt was fishing,as usual, so I couldn't gnip across to talk to him, but I stood at the water'sedge and shouted at Seamus. He couldn't seem to hear what I was saying, so Iwaved at him to stay there, then set off to hike round to join him." }
                    ParagraphText { text: "It's ever such a long way from Little Moaning up to Greater Cawing, over thefootbridge and back down across Three Mole Hill. I was whacked out by the timeI reached the other side of the Dribble. And I couldn't see Seamus Sosmallanywhere! Then I heard a little voice, carried across on the wind - and therewas Seamus on the other side!" }
                    ParagraphText { text: "I couldn't believe it. How could I have missed him on the way round? I'djust turned about to start the slog back when there was a sort of whooshinggnoise and the leprechaun was standing gnext to me." }
                    ParagraphText { text: "“Sure and don't disappear again, young gnome maid,” he said. “There I was,over here, and yourself over there and me coming over to join you only Icouldn't find me transporting stuff at all, at all. And when I did, begorra,you'd gone! Gnow here I am and here are you, and what was it you were wanting,to be sure?”" }
                    ParagraphText { text: "So I told him my plans for a gnew bridge, but he just shook his head with asad smile. “Sure and I'd like to help you,” he said, “But you see, it's likethis. With that there bridge gnot being here, a travelling salesgnome likemyself does very gnicely buying things in Gnomebridge and selling them to thosethat can't get across to the town themselves. Gnow what would a bridge do formy business?”" }
                    ParagraphText { text: "I could see his point. Then I had a brilliant idea. “We could make it a tollbridge.”" }
                    ParagraphText { text: "“Begorra! That we could,” he replied, with a glitter in his eye. “We'll doit tomorrow! Gnow, would you like a lift home?” He reached for his transportingstuff, but I said I could do with a walk. (Actually, my feet were killing me,but I wanted to get home safely.)" }
                }
                Column {
                        id: chapter32
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Treesday 18th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + units.gu(8) * 33 }

                    ParagraphText { text: "Seamus Sosmall's bridge was almost a success. I was a bit late getting downto the Dribble, as it had taken me a while to collect all my maps, plans andwork schedules together. Anyway, when I got there, he had finished it already." }
                    ParagraphText { text: "“Coo, that was quick, Mr.Sosmall!” I said. “Is it safe?”" }
                    ParagraphText { text: "“Sure and begorra! Gnow there's a thing to ask. Just you watch me gnow.” Hestomped off to the middle of the bridge and jumped up and down like anything.The bridge didn't even wobble. That surprised me, because it didn't look thatstrong. It was straight and flat, but very thin like a sheet, and it didn'thave any suspenders. I wanted to put some one, but Seamus was keen to get somecustomers and marched off to the Green Gnome before I could stop him." }
                    ParagraphText { text: "The stranded travellers were still having their breakfast - fried fish! -and didn't really want to know about crossing the Dribble, but Seamuseventually got them moving." }
                    ParagraphText { text: "Seamus collected their tolls (I'm sure I heard him mutter “Well that's paidfor the starch”), and send them off all together. Unfortunately, there was asudden shower when they were about half way across. The bridge softened in therain and collapsed into the Dribble. It was just as well that Boney Spratt wasfishing just down river. He caught the travellers in his gnets and towed themover to the other side." }
                    ParagraphText { text: "And do you know, while Boney Spratt was doing that, his wife came up andmade us pay the ferrying fees! And that was more than we had charged in tolls." }
                    ParagraphText { text: "I've gone off bridges." }
                }
                Column {
                        id: chapter33
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Woodensday 19th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + units.gu(8) * 34 }

                    ParagraphText { text: "It was pouring with rain today, and as I couldn't find anything else to do,I had a good look at the invitation to the Mid-Winter party. It was written inthe same fancy lettering as the last - and there is more fancy writing in thesmall print on this one." }
                    ParagraphText { text: "“Whereas under the provisions laid out in Section 97 Sub-Section 24a of theLand Registration Act Jasper Quickbuck has with due formality made claims tothe land and the easements rights and privileges entailed therein of theDribble Valley and in default of contrary representation thereto title to theaforesaid property has been granted to the above mentioned Jasper Quickbuck andgnoting that all prior claims to ownership are thereby extinguished therecipient of this missive is hereby given gnotice of the termination of rightof residency effective from 21st Deadembers gnext and that vacation ofproperties on that date shall be deemed to signify unqualified acceptance ofthis gnotification.”" }
                    ParagraphText { text: "Phew! It took ages to copy that lot out. I think it means we've got to bringour own beer." }
                }
                Column {
                        id: chapter34
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Airsday 20th Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + units.gu(8) * 35 }

                    ParagraphText { text: "I took myself over to see the sage this afternoon, to see if she could makehead or tail of that invitation. She studied it very carefully, and eventallysaid “If the writing is small, then so must be the quill.”" }
                    ParagraphText { text: "“Yes, but what does it mean?” I said, getting a bit fed up with her gnomicutterances." }
                    ParagraphText { text: "“Bring your own beer?” she suggested." }
                    ParagraphText { text: "Hmm! She may be a sage, but she doesn't know her onions... And I think it wasmost rude of her to say she would gnever see me again, just because I laughedwhen I gnoticed that she was holding the invitation upside down." }
                    ParagraphText { text: "I shall just have to wait until tomrrow to find out what the party is allabout." }
                }
                Column {
                        id: chapter35
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Fireday 21st Deadembers"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + units.gu(8) * 36 }

                    ParagraphText { text: "Oh! That gnasty, mean, sneaky, rat! That city-slicker! That underhand,unprincipled land-grabber, Jasper Quickbuck. Him and his creepy goblin,Crawley! I wouldn't have believed it if I hadn't seen it with my own eyes." }
                    ParagraphText { text: "There we all were, the Bottomlows, Halfyards, Gardens, Butterpats,Tackhammers, Spratts and Downtroddens; Grandma Gnutson, Millie Watts,  andMistress Farthing. All standing around in the village hall wondering whether wehad come to the right place and where the food and drink had got to - itcertainly hadn't come from the manor, gnor had the Butterpats been hired, andCoursin Daisy didn't know anything about outside caterers. Then the doors swungopen and in walked Crawley, grinning all over his evil face." }
                    ParagraphText { text: "“Well I am glad you all came,” he smirked." }
                    ParagraphText { text: "“I wouldn't call this a party!” shouted Isfrunt Garden from the back." }
                    ParagraphText { text: "“Gnor would I,” agreed Arback Garden from the front." }
                    ParagraphText { text: "“I gnever said it would be,” retorted Crawley. “If you have read yourgnotices properly, you will know perfectly well what this is. By coming hereyou have vacated your properties, and by vacating your properties on this day,you have agreed to the eviction gnotices that I served on you last week.”" }
                    ParagraphText { text: "There was pandemonium. I think that's the word. Certainly, Mrs. Butterpat hadher pan out and was about to go at him like a demon when she gnoticed that thegoblin had company. Two whacking great trolls had squeezed themselves inthrough the double doors and stood slouching against the roof. At a sign fromCrawley they bellowed “QUIET!” so loudly that Mistress Farthing was blown overby the blast." }
                    ParagraphText { text: "“It's your own fault,” the goblin went on. “You should have registered yourland claims when you had the chance. Squire Quickbuck gave you due gnotice ofthat too. But it's too late gnow. You will have to leave. The Dribble Valley isgoing to be turned into a Yuppie Homes development, featuring a Gnorsegnome-style yacht marina.”" }
                    ParagraphText { text: "Gnorsegnomes! I turned to Grandma Gnutson. Was she involved?" }
                    ParagraphText { text: "“Don't look at me like that,” she said, without a trace of an accent, “I'vejust changed my gname back to Bottomlow.”" }
                    ParagraphText { text: "Well, so that's where we are gnow. Creepy Crawley and his trolls have gone.Arback and Isfrunt are still looking for the beer, everybody else has gone tothe Green Gnome to think what to do, or whether to do anything at all, and I'mwriting up my diary because I have a feeling there's gnot going to be much timefor that in the gnext few days." }

                }
                Column {
                        id: chapter36
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Credits"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + chapter36.height + units.gu(8) * 37 }

                        ParagraphText { text: "© 1987 Peter McBride"; font.bold: true}
                        ParagraphText { text: "<b>OCR’d in by</b> <a href='mailto:jeremyalansmith@netscapeonline.co.uk'>J.Smith</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}
                        ParagraphText { text: "using <b>Textbridge,</b> and <b>HTMLised.</b>" }
                        ParagraphText { text: "<b>Proofread by</b> <a href='mailto:gschmidl@gmx.at'>Gunther Schmidl</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}

                    }

            } //MainColumn

        } //flickable

    } //SrollView

}
