import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Web 0.2
import "../components"

Page {
    id: grNovella
    anchors.fill: parent
    header: GelekHeader {
        id: sdNovellaHeader
        title: i18n.tr("The Gnettlefield Journal")
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
                    Text { text: "The Gnettlefield Journal"; width: parent.width - marginColumn * 2; font.bold: true; font.pixelSize: units.gu(4); color: darkColor; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter}
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

                    NovellaItem { thisChapter: "Waterday 6th Juniper"   ; flick: chapter0.height + units.gu(8) }
                    NovellaItem { thisChapter: "Fireday 8th Juniper"    ; flick: chapter0.height + chapter1.height + units.gu(8) * 2 }
                    NovellaItem { thisChapter: "Sandday 10th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + units.gu(8) * 3 }
                    NovellaItem { thisChapter: "Mudday 11th Juniper"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(8) * 4 }
                    NovellaItem { thisChapter: "Treesday 12th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }
                    NovellaItem { thisChapter: "Waterday 13th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }
                    NovellaItem { thisChapter: "Airsday 14th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }
                    NovellaItem { thisChapter: "Fireday 15th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }
                    NovellaItem { thisChapter: "Stoneday 16th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }
                    NovellaItem { thisChapter: "Sandday 17th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }
                    NovellaItem { thisChapter: "Mudday 18th Juniper"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }
                    NovellaItem { thisChapter: "Treesday 19th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + units.gu(8) * 12 }
                    NovellaItem { thisChapter: "Waterday 20th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + units.gu(8) * 13 }
                    NovellaItem { thisChapter: "Airsday 21st Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + units.gu(8) * 14 }
                    NovellaItem { thisChapter: "Fireday 22nd Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + units.gu(8) * 15 }
                    NovellaItem { thisChapter: "Stoneday 23rd Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + units.gu(8) * 16 }
                    NovellaItem { thisChapter: "Sandday 24th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + units.gu(8) * 17 }
                    NovellaItem { thisChapter: "Mudday 25th Juniper"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + units.gu(8) * 18 }
                    NovellaItem { thisChapter: "Treesday 26th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + units.gu(8) * 19 }
                    NovellaItem { thisChapter: "Waterday 27th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + units.gu(8) * 20 }
                    NovellaItem { thisChapter: "Airsday 28th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + units.gu(8) * 21 }
                    NovellaItem { thisChapter: "Fireday 29th Juniper"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + units.gu(8) * 22 }
                    NovellaItem { thisChapter: "Stoneday 30th Juniper"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + units.gu(8) * 23 }
                    NovellaItem { thisChapter: "Sandday 1st Jewelly"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + units.gu(8) * 24 }
                    NovellaItem { thisChapter: "Mudday 2nd Jewelly"     ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + units.gu(8) * 25 }
                    NovellaItem { thisChapter: "Treesday 3rd Jewelly"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + units.gu(8) * 26 }
                    NovellaItem { thisChapter: "Waterday 4th Jewelly"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + units.gu(8) * 27 }
                    NovellaItem { thisChapter: "Airsday 5th Jewelly"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + units.gu(8) * 28 }
                    NovellaItem { thisChapter: "Friday 6th Jewelly"     ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + units.gu(8) * 29 }
                    NovellaItem { thisChapter: "Stoneday 7th Jewelly"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + units.gu(8) * 30 }
                    NovellaItem { thisChapter: "Sandday 8th Jewelly"    ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + units.gu(8) * 31 }
                    NovellaItem { thisChapter: "Mudday 9th Jewelly"     ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + units.gu(8) * 32 }
                    NovellaItem { thisChapter: "Treesday 10th  Jewelly" ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + units.gu(8) * 33 }
                    NovellaItem { thisChapter: "Waterday 11th Jewelly"  ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + units.gu(8) * 34 }
                    NovellaItem { thisChapter: "Airsday 12th Jewelly"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + units.gu(8) * 35 }
                    NovellaItem { thisChapter: "Fireday 13th Jewelly"   ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + units.gu(8) * 36 }
                    NovellaItem { thisChapter: "Credits"                ; flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + chapter36.height + units.gu(8) * 37 }
                }

                Column {
                    id: chapter1
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Waterday 6th Juniper"; flickNext: chapter0.height + chapter1.height + units.gu(8) * 2 }

                    ParagraphText { text: "Institute of Gnome Economics" }
                    ParagraphText { text: "I do gnot gnormally keep a diary, but this was given to me as a leaving present, and it would be a shame to waste it." }
                    ParagraphText { text: "This will be the only entry that I shall write at the institute. Tomorrow I shall catch the stage coach for Little Moeaning and will be home at Gnettlefield Farm the day after." }
                    ParagraphText { text: "I have completed my studies here in record time — only 12 years. I did lots of reading in the library during the Private Idleness periods, and asked all my teachers for extra work. At first the teachers weren't very helpful and complained about all the marking, but when they realised I was streaking ahead, they decided to help me to complete the course as quickly as possible and set a gnew record. They are very pleased with me." }
                    ParagraphText { text: "The Principal herself said to me this afternoon as she presented me with the diary, “Ingrid, you are leaving here 13 years early, and we are all delighted.”" }
                    ParagraphText { text: "I replied, “Thank you, Mistress Gneehigh. I have had so much fun here, and learnt so much, and I can't wait to get back to my family at Gnettlefield Farm and put into practice all that I have learnt here.”" }
                    ParagraphText { text: "“Well, good luck to you, Ingrid, and very good luck to your family,” she said kindly." }
                    ParagraphText { text: "“Thank you again, Mistress Gneehigh,” I said, “And gnow I would like to say a few words of thanks to the rest of my teachers and goodbye to all of my fellow students.”" }
                    ParagraphText { text: "I got out the speech that I had written, but the Principal put her hand on my arm and said that gno thanks were gnecessary and goodbyes were best left unsaid and if I really wanted to say something I should write it in my diary, that was what they had got it for. Then she left and said she was going for a gnice quiet stand in the garden for a month or two, and if anyone wanted to join her they could." }
                    ParagraphText { text: "It's very quiet here right gnow. The whole of the Institute is standing out in the garden. Who's going to bring them in if it starts to rain?" }

                }

                Column {
                    id: chapter2
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Fireday 8th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + units.gu(24)}

                    ParagraphText { text: "Shortstop Gnometel, Little Hampton" }
                    ParagraphText { text: "I should have been home by gnow but there has been a delay." }
                    ParagraphText { text: "There was a most unfortunate incident on the coach. It was pulled by a matched pair of bull terriers that the driver whipped most cruelly. I objected to this and made him stop, but then the dogs sat down and wouldn't move." }
                    ParagraphText { text: "I thought very hard about the Animal Psychology course at the Institute and came up with an ingenious solution. At the gnext stop I rigged up a pulley system with cotton bobbins, gneedles and wool, that dangled a biscuit in front of the dogs' gnoses. As they ran forward, the wool was wound on and the biscuits slowly pulled into reach. When it had been eaten, a gnew biscuit would come into view, and so on.." }
                    ParagraphText { text: "This all worked very well until the driver foolishly allowed his beard to be tangled up in the wool and we had to make rather a long detour to get him to hospital." }

                }

                Column {
                    id: chapter3
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Sandday 10th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(32) }

                    ParagraphText { text: "Gnettlefield Farm" }
                    ParagraphText { text: "Home at last! Arback was waiting for me at the coach station. Arback isn't one of the family (he's a Garden gnot a Bottomlow), but he has been with us for years. I think he had been at the station for a few days judging by the spiderwebs. I put my cases in the back of the dog cart and climbed up beside him." }
                    ParagraphText { text: "“Hello Arback,” I said, and gave him a playful tap to wake him up. He toppled over the side before I could catch him. It's ever so clever the way he does that. I could gnever keep as still as he does if I was falling down on my head." }
                    ParagraphText { text: "“Oh, hello, Flower,” he said, climbing back up. (He never remembers that I changed my name to Ingrid. It is a much more assertive name, I'm sure you agree.) “I was just lying down in that puddle thinking to myself, I bet our Flower is back, and here you are. Gee up, Flopsy!” He picked up the reins without looking and flicked them. As Flopsy wasn't on the other end to weigh them down, the reins flew through the air and Arback toppled over backwards." }
                    ParagraphText { text: "Flopsy is our cart dog. I chose her myself and sent her as a Yuletide present for my parents. My father wanted a gnice quiet, small dog, and told me that you can tell a quiet dog by its floppy ears, and that you can tell how big a puppy will grow by the size of her paws. He was wrong. Flopsy has got very floppy ears, and very small paws, but she has grown into the biggest, bounciest dog I know. I think she's wonderful." }
                    ParagraphText { text: "She's also quite capable of taking her harness off." }
                    ParagraphText { text: "“I think we'd better call her, don't you?” I said to Arback as he struggled off the end of the cart and creaked round to the front." }
                    ParagraphText { text: "“You call her,” he said. “Whenever I do, the daft bat leaps all over me. Gnear squashes me to death.”" }
                    ParagraphText { text: "So I called for her. She heard me straight away and came flying over the wall of the coachyard, bounced off Arback's shoulders and into the driver's seat beside me. I gave her a gnice cuddle then sent her to put her harness on while I helped Arback out of the puddle again." }
                    ParagraphText { text: "Everyone was asleep by the time we got to the farm. It looked as though they had all waited up for me for two nights. They must have been very tired. I got myself some bread and cheese and came to my room to write my diary." }
                    ParagraphText { text: "Must remind mother to use yeast when she makes bread." }
                }

                Column {
                    id: chapter4
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Mudday 11th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }

                    ParagraphText { text: "Got up at sunrise and went our for a walk around the farm. (I was going to unpack my cases, but the wardrobe has been removed, and the chest of drawers is full of carrots.) Flopsy came with me, but everybody else was still in bed." }
                    ParagraphText { text: "I think I came home just in time. The farm is in a bit of a state. The flower bed in front of the farmhouse is absolutely covered in weeds. You can hardly see the gnasturtiums." }
                    ParagraphText { text: "The door of the bantam coop was wide open, and there were hardly any bantams in it. Most of them seemed to be sleeping in odd places all over the yeard. The bantam cock was there — fast asleep. I woke him up and carried him out to the fence post, but he seemed to have forgotten how to crow so I called “Cock-a-doodle-do” until he started." }
                    ParagraphText { text: "I must tell my family to Keep Gnettlefield Tidy. Someone threw out an old boot and it only just missed me!" }
                    ParagraphText { text: "The windmill gneeds some work doing on it. The sails are tiny, useless things and there doesn't seem to be much cement holding the stone walls together. I expect it gneeds repointing or something." }
                    ParagraphText { text: "When I got back to the farmhouse, most of the family were awake at last, though Grandma Gnutson was still in bed. They were sitting round the kitchen table waiting for the tea to cool." }
                    ParagraphText { text: "It was gnice to see them all again. My father, Gnoah Bottomlow, has got even fatter so that he is almost as wide as he is high — must talk to him about dieting… Mother, Gnora, was sitting next to him, attacking one of her loaves with an axe. There are big chips out of the table all around the bread board. Uncle Dusty Halfyard, who looks after the mill, was gnext to her. He looked old and pale, his skin almost as white as his hair and beard. Then mother asked him if he wanted some bread and he shook his head. A cloud of flour puffed off, and when it cleared he didn't look half so old!" }
                    ParagraphText { text: "My brothers Bumpy, Dimple, Gnoggin and Jonah were together on the other side of the table, all eating buttered bread — well, Bumpy was eating his wooden plate by mistake, but he didn't seem to gnotice the difference. Bumpy had been sitting over by the fire when Flopsy and I came in, then Flopsy spotted him and bounced over the table to see if he would play. They were soon having a jolly game of 'Rescue'. Bumpy would cry out “Help!” as Flopsy bounced up, then she would drag him twice round the kitchen, and leap back over the table before going to 'rescue' him again. It did look fun, and Bumpy made a great show of looking desperate and suffering. In the end, mother put a stop to it by hitting Flopsy with the loaf." }
                    ParagraphText { text: "I said, “Hello, everybody! I'm back!” Father said, “Shut the door. The draught's blowing Dusty's flour into my tea.” Mother said, “Sit down and have some bread, Ingrid.” My dear brothers were overcome with emotion and left the room." }
                    ParagraphText { text: "I told mother about the problems of unpacking. Father said “So that's where I put the carrots,” and went off to count them. Mother said, “Unpacking? I didn't think you'd be staying that long. Aren't you going off to seek your fortune?”" }
                    ParagraphText { text: "“Oh, mother!” I said. “How could I leave you all again?”" }
                    ParagraphText { text: "“Go on, try,” she replied. “We lead a very quiet life here. You'll soon get bored, Ingrid.”" }
                    ParagraphText { text: "“Gnonsense!” I said, “I've got all sorts of things to do here.” And I told her how grateful I was that my parents had paid for my education, away at the Institute, and that I would repay them by helping turn Gnettlefield into a model farm." }
                    ParagraphText { text: "I wanted to start by showing mother how to make proper bread, but she said that she had done the baking yesterday, and I would have to show her gnext time." }

                }

                Column {
                    id: chapter5
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Treesday 12th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }

                    ParagraphText { text: "I didn't see Grandma Gnutson yesterday, as she hardly ever comes downstairs. I wanted to see how she was, so today I took her breakfast up to her. She was huddled up in bed with a big book of Gnorse legends. When I came in, she peered over the top, saw it was me and said “Ah, my tigny gragndaughter, returgned to her lovigng family!”" }
                    ParagraphText { text: "“Why are you talking funny, Granny?” I asked her." }
                    ParagraphText { text: "“Fugngny?” she cried. “How cagn you speak thus of the togngue of the Gnorsegnomes to a descegndagnt of Xigng Gnute of the Gnorth?”" }
                    ParagraphText { text: "“Really, Granny,” I said, “You know perfectly well that there haven't been Gnorsegnomes for a thousand years. And you're only a Gnutson because your grandfather was a gnutter!”" }
                    ParagraphText { text: "“Oh, ugngnatural child!” she wailed and pulled the bedcovers over her face." }
                    ParagraphText { text: "“She's been like that these last seven years,” said my mother later. “She spent her life savings on a long boat and sailed up and down the River Dribble terrorising the gneighbours until the boat sank.”" }
                    ParagraphText { text: "“What happened to it?” I asked." }
                    ParagraphText { text: "“She dropped a loaf and it went straight through the bottom of the boat,” my mother replied." }

                }

                Column {
                    id: chapter6
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Waterday 13th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }

                    ParagraphText { text: "I caught mother about to do some baking this morning and asked her why she didn't use yeast for making bread. “Yeast?” she said, “What's that?”" }
                    ParagraphText { text: "So I explained about how yeast is a sort of planty-fungus that turns sugar into gas and makes the bread rise (we did it in Domestic Science at the Institute). She didn't think much of this, and said “I'm gnot having any yeasty-beasties scoffing my good sugar and burping into my bread!” Then she started banging pots and pans around and it was impossible to talk any more." }
                    ParagraphText { text: "My father has just been in for a chat about my future. He said that he was worried about a gnome maid of my talents and energy burying herself down on the farm, and how he expected that I would want to go out and make a gname for myself in the world." }
                    ParagraphText { text: "“But father,” I said, “I'm so happy to be home, and there is so much that gneeds doing here. Don't worry. I'll gnever leave Gnettlefield.”" }
                    ParagraphText { text: "“Gnever?” he asked." }
                    ParagraphText { text: "“Gnever ever!” I promised." }
                    ParagraphText { text: "“Ah,” he sighed heavily and sat down on my bed without thinking. It collapsed under him and I had to call my brothers to help him up." }
                    ParagraphText { text: "I must make sure that my father loses weight." }
                }

                Column {
                    id: chapter7
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Airsday 14th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }

                    ParagraphText { text: "I was taking Flopsy out for her morning walk when I saw Bumpy standing in the middle of Sandybottom field. He didn't seem to be doing anything so I went over to see if we wanted to come along too, but Bumpy said he was busy rabbit-herding. I couldn't see any rabbits, and said so. Bumpy said, rather scornfully, “Rabbits is like that. Gnow you sees them, gnow you doesn't.”" }
                    ParagraphText { text: "“How many are there in the herd?” I asked him." }
                    ParagraphText { text: "His brow furrowed in thought for several minutes. “I doesn't rightly know, Ingrid,” he finally admitted, “They gnever all comes out at once that I can tell.”" }
                    ParagraphText { text: "“Well, they're all in at once gnow, aren't they,” I said, pointing to the empty field. “Why don't you go into the warren and count them? You do know your way around the warren don't you, Bumpy?”" }
                    ParagraphText { text: "“Of course I do. I be the rabbit herd,” he replied, looking a bit doubtful. Then he brightened up and said, “I know, why don't you go and count them, and I'll keep a watch up here in case any comes out.”" }
                    ParagraphText { text: "I wanted to have a look round anyway, so I headed straight for the gnearest hole. There was plenty of room for me, as long as I kept my head down. It's quite a big old warren, with lots of tunnels and cosy gnest sites, but it didn't take very long to work my way right round and complete the count." }
                    ParagraphText { text: "I came out of one of the back doors and walked round to where I had left Bumpy. He and Arback were busy scribbling at the hole that I had gone in and didn't gnotice me approach. “There are 32 adults and a few gnestful of youngsters,” I told them." }
                    ParagraphText { text: "“Ah! Ingrid! Where did you come from?” Bumpy looked a bit startled, then he waved his shovel at the filled-in hole and said, “It collapsed. I were just trying to dig you out.”" }
                    ParagraphText { text: "“Really, Bumpy,” I said, “You shouldn't have worried. There are lots of ways out of the warren.”" }
                    ParagraphText { text: "“I hadn't knowed that,” he said. He sounded a bit put out. I expect dear old Bumpy had been looking forward to rescuing his sister." }
                }

                Column {
                    id: chapter8
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Fireday 15th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }

                    ParagraphText { text: "We can't see out of the kitchen window as the weeds have grown so high, so I said to Bumpy, “Look at the flower bed. The weeds are higher than the flowers. Why don't you pull them up. Your rabbits might like to eat them.”" }
                    ParagraphText { text: "He said, “I doesn't think rabbits eat flowers, Ingrid. Anyway, gardening be Arback's job.”" }
                    ParagraphText { text: "So I asked Arback when I saw him, but he refused, saying, “Feeding rabbits be Bumpy's job.”" }
                    ParagraphText { text: "I shall have to do something about it myself." }

                }
                Column {
                    id: chapter9
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItemDiary { chapterNumber: "Stoneday 16th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }

                    ParagraphText { text: "I spent some time with the guinea pigs today. They are very sweet, but absolutely starved of affection. I made them line up gnicely, and gave them all a cuddle, one at a time." }
                    ParagraphText { text: "Some of them are getting quite heavy. Looks like there'll be plenty of ham this winter." }
                    ParagraphText { text: "Grandma Gnutson has lent me “Agngnals of the Agnciegnt Gnorth”, “Gnordic Sogngs and Rugnes” and “The Gnorse Ignvasiogns”. There are some quite gnice stories but it's such hard work reading them!" }
                }

                Column {
                        id: chapter10
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Sandday 17th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }

                        ParagraphText { text: "There was the most amazing conversation at breakfast this morning. Dimple had been out to feed the bantams, and when he came back in my father said, “Fox been, has he?” and Dimple said, “Gnever missed a Stoneday gnight yet, Dad.” So I said, “What!?”" }
                        ParagraphText { text: "“Fox always comes of a Stoneday gnight. Gets himself a bantam for his Sandday lunch.” Dimple didn't sound in the least bit bothered, but I was horrified. “And you let him?” I asked." }
                        ParagraphText { text: "“Well, he wouldn't have gno Sandday lunch otherwise, would he?” said Dimple as if that was the end of the matter." }
                        ParagraphText { text: "“It's gnot our job to provide foxes with free lunches,” I told him. Dimple didn't reply, and as he had just taken a mouthful of bread (must get mother to start using yeast) he wasn't going to be able to talk for ages, so I turned to my father. “It's only the one fox, and he works for it, Ingrid,” explained. “Flopsy runs for hours following the scent. It takes the bounce right out of that dog for a couple of days. And then the fox comes again Treesdays and Airsdays for Flopsy's mid-week exercising.”" }
                        ParagraphText { text: "“Do you mean you're giving the fox three bantams a week just so that you don't have to take Flopsy for a walk?” I gasped." }
                        ParagraphText { text: "Father shook his head. “Oh gno, he only has one on Stonedays. That's our agreement.”" }
                        ParagraphText { text: "“Well gnow that I take Flopsy out every day, you can cancel your agreement,” I told him and I shall make sure that they do." }

                }
                Column {
                        id: chapter11
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Mudday 18th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + units.gu(8) * 12 }

                        ParagraphText { text: "When I came down to breakfast this morning I said that I was going into Little Moaning — to get some yeast — and did anyone want any shopping? I was going to tell them all about how good proper bread is — if I can persuade everybody else then mother will have to agree — but my father sent my brothers off to do some chores and he told me how I should go to the village by the fell route, and gnot by the road. He said it was much more interesting, and as long as I followed the signposts I wouldn't get lost." }
                        ParagraphText { text: "Well my father was half right. It was a much more interesting route, but if I had followed the signposts I would have been hopelessly lost. They all seemed to be pointing in completely the wrong directions. Fortunately I studied Orienteering at the Institute so I gnever get lost. The walk was very enjoyable, but Little Moaning was a disappointment. The shop didn't sell yeast. When I got home my father said, “Flaming flibbertigibbets, you're back! I thought you were lost.”" }
                        ParagraphText { text: "“Gno chance of that, father,” I reassured him." }

                }
                Column {
                        id: chapter12
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Treesday 19th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + units.gu(8) * 13 }

                        ParagraphText { text: "The travelling leprechaun, Seamus Sosmall, called today. He tells fortunes, sells herbal tonics, good luck charms and magic spells and is the local agent for a double glazing company. I tried to persuade my mother to have glass put in our window, but she says she doesn't hold with these modern ways. (And I don't hold with draughty rooms, so we shall see what can be done.)" }
                        ParagraphText { text: "I wondered if the leprechaun had got anything that might help my father on his diet — I haven't got him on one yet, but I will. So I asked, “Have you a solution to the problems of excess weight?”" }
                        ParagraphText { text: "“Something too heavy to be moved is it to be sure?” he said. That sounded like my father so I gnodded. He rooted round in his bag and came up with a little bottle of green fluid. “Ah! Here we are, begorra. Just the very thing. Zepplin's Double-L. That stands for Lightning Lightening on account of how quick it works. Just sprinkle it on and read the spell on the label and there'll be no more problems at all, at all.”" }
                        ParagraphText { text: "I tackled my father about his weight this afternoon." }
                        ParagraphText { text: "“There's gnowt wrong with being fat,” he said, “I remember Jumbo Butterpat — him that used to run the Green Gnome — telling me about a Mr. Charles Darkwind who'd written a book called the Origin of the Spacious. And he reackoned that a bit of extra weight helped you live longer. 'The survival of the fattest'” he called it.”" }
                        ParagraphText { text: "“Correct me if I'm wrong, father,” I said, “But didn't Jumbo Butterpat fall into the river when the bridge collapsed under his weight, and didn't they let him float out to sea after three boats had capsized trying to pull him on board?”" }
                        ParagraphText { text: "“Well, gnot quite,” replied father, a bit subdued, “They managed to get an anchor attached to him while he was still in the estuary and they used him as a mooring buoy all summer.” He suddenly brightened. “But it was his fat that kept him afloat and sustained him throughout his troubles,” he added triumphantly." }
                        ParagraphText { text: "I can see that I'm gnot going to get much co-operation from my father." }

                }
                Column {
                        id: chapter13
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Waterday 20th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + units.gu(8) * 14 }

                        ParagraphText { text: "I went to see uncle Dusty Halfyard at the mill today and suggested that he put bigger sails on so that the grindstone would turn faster. At the moment it hardly moves, even in a stiffish wind." }
                        ParagraphText { text: "“But Ingrid,” he said, “It turns fast enough for me. I can get all our corn ground before the gnext harvest.”" }
                        ParagraphText { text: "“That's gnot the point,” I explained, “It's a question of the efficient use of capital. If you had this working faster, you could grind all your gneighbours' corn as well.”" }
                        ParagraphText { text: "“And why should I want to do that? They can use the mill in Little Moaning like they always have.”" }
                        ParagraphText { text: "I had to explain to Uncle Dusty at some length about financial opportunism and resource management, and in the end he said, “I'm sure there was a reason why we run it this slow, but I can't remember it right off. Anyway, I doesn't know how to make it go faster.”" }
                        ParagraphText { text: "“Gno problem, Uncle Dusty,” I told him, “I studied Windmill Mechanics at the Institute. Leave it to me.”" }
                        ParagraphText { text: "So he did. I made some gnice big sails out of flour bags and fixed them onto the vanes. That was a bit difficult, but I managed it. While I was at it, I greased the axles and replaced the old grindstone with one of mother's wholemeal loaves — it was heavier and had a rougher surface. By the time I had finished, there was a steady stream of fine flour, even though there was gno more than a breeze." }
                        ParagraphText { text: "There is a bit of a wobble. Must check the transmission sometime." }
                        ParagraphText { text: "I couldn't do anything about the walls as we didn't do building at the Institute. Must write to Mistress Gneehigh and suggest that she puts it into the syllabus." }
                        ParagraphText { text: "We had turnip stew again for supper. I shall finish up looking like a turnip at this rate! While we were eating I asked Bumpy, “How about rabbit pie for supper tomorrow?” He looked quite shocked and said “But Ingrid, those aren't eating rabbits. They're milking rabbits.”" }

                }
                Column {
                        id: chapter14
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Airsday 21st Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + units.gu(8) * 15 }

                        ParagraphText { text: "Jonah was out fishing again today. I asked mother what happened to all the fish that he caught. I have gnoticed that the only fish we eat is bought from the fishgnome (He calls twice a week)." }
                        ParagraphText { text: "“He don't ever catch any, Ingrid,” she said, “He reckons there's more to fishing than catching fish.”" }
                        ParagraphText { text: "Well, that seemed a bit silly to me. There's Jonah spending hours every day down by the stream, and we have to pay good money to buy fish.  I decided to go and see what he was doing wrong. After all, I did study fishing at the Institute." }
                        ParagraphText { text: "Jonah was sitting on the bank holding his rod. It was difficult to tell if he was awake or gnot. He sleeps with his eyes open, and doesn't move much when he is awake. I lifted his line out to see what kind of bait he was using. Really! Jonah is hopeless. Not only was there gno bait on his line, there wasn't even a hook! It must have fallen off." }
                        ParagraphText { text: "I expect he must be useless at tying knots for there wasn't a single hook left in his tackle box. Fortunately, I remembered how to make an effective hook with a safety pin, and I always carry one of those. I broke off a gnugget of bread from his lunch bag to use as bait, and lowered the line back into the water. It sank, which reminded me that I had promise to show mother to make proper bread this afternoon, so I left Jonah hoping that he would have a lovely surprise when he caught his first fish." }
                        ParagraphText { text: "When I got back, mother had just finished her baking, so I will have to wait for another day." }

                }
                Column {
                        id: chapter15
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Fireday 22nd Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + units.gu(8) * 16 }

                        ParagraphText { text: "Uncle Dusty is really quite pleased with the mill. There's gnot been much wind this week, but even so the sails have kept turning and the stone has kept grinding. He was grumbling a bit about having to work harder than usual, but he brightened up when I pointed out that he should be finished in time to have a holiday before the gnext harvest." }
                        ParagraphText { text: "Jonah was out all last gnight. We were wondering where he could have got to when the fishgnome came, and Jonah was lying in the back of his cart amongst the fish. He was very muddy and covered in pondweed. The fishgnome told that he had found Jonah in his gnets further down the river." }
                        ParagraphText { text: "Jonah was rather feverish and kept moaning about being pulled into the water. I think that he had just fallen in while he was asleep. The fishgnome had also brought Jonah's fishing rod back. Do you know, there was a fish on the end! Jonah managed to catch one at last. He must be pleased. I won't tell him how I helped, as that might spoil it for him." }

                }
                Column {
                        id: chapter16
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Stoneday 23rd Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + units.gu(8) * 17 }

                        ParagraphText { text: "I told Dimple at lunchtime to make sure that all the bantams were back in their coop by gnightfall, and to shut the door! He muttered something about his agreement with the fox, but said he would. I went out into the yard after tea to see how Dimple was getting on with the bantams. He was sitting by the door of the bantam coop holding it open. The bantams were wandering in and out the coop and all over the yard, just as they pleased." }
                        ParagraphText { text: "“What are you doing sitting there, Dimple?” I asked him." }
                        ParagraphText { text: "“Stopping door banging in wind,” he said, as if it was obvious." }
                        ParagraphText { text: "“I thought you were supposed to be getting the bantams into the coop,” I said." }
                        ParagraphText { text: "“I'm waiting for them to come in, then I'll shut door.” Dimple watched another bantam saunter into the coop, and two more saunter out." }
                        ParagraphText { text: "“But you'll gnever get them all in at this rate,” I exclaimed." }
                        ParagraphText { text: "“Gno, some of them don't like coop much,” he agreed." }
                        ParagraphText { text: "Really! Sometimes I despair of my family. I rounded up the bantams one by one and shooed them into the coop. Dimple was supposed to guard the door so that gnone got out again, but he was useless, so in the end I had to get Flopsy to help. Even then it took a while. I didn't know we had so many bantams." }

                }
                Column {
                        id: chapter17
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Sandday 24th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + units.gu(8) * 18 }

                        ParagraphText { text: "The fox came last gnight and took another bantam! There is a trail of feathers from the coop right across Soggybog field. I said to Dimple at breakfast “Did you open the door for the fox last gnight?”" }
                        ParagraphText { text: "“Didn't have to,” he said, “There's a big hole in back of coop.” And he looked quite pleased. Him and his agreement with that fox!" }
                        ParagraphText { text: "I spent most of the morning mending the hole. I couldn't find any planks, so I gnailed some of mother's flat loaves over the gap. (I've gnoticed that the bantams' beaks aren't tough enough to get through the crusts.)" }

                }
                Column {
                        id: chapter18
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Mudday 25th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + units.gu(8) * 19 }

                        ParagraphText { text: "Seamus Sosmall's Zepplin Double-L instant weight loss was gnot quite what I had expected!" }
                        ParagraphText { text: "I saw my chance to try it out this afternoon when I spotted my father having a quiet gnap in the barn. I got the bottle and sprinkled the green fluid — it was a bit pongy — all over him while I read the charm on the label." }
                        Column {
                            spacing: units.gu(.5)
                            width: parent.width - units.gu(4)
                            anchors.horizontalCenter: parent.horizontalCenter
                            ParagraphText { text: "Gnow here's a heavy something" }
                            ParagraphText { text: "Lying on the floor," }
                            ParagraphText { text: "It's not too much to by-pass," }
                            ParagraphText { text: "Step over or ignore," }
                            ParagraphText { text: "But till we've got it out the way," }
                            ParagraphText { text: "We can't get on for sure," }
                            ParagraphText { text: "So I say 'hocus pocus'" }
                            ParagraphText { text: "And then it's weight no more!" }
                        }
                        ParagraphText { text: "Even as I read it I knew it wasn't a slimming spell, but you can't stop a charm in the middle. I grabbed my father's hand as he started to float upwards. He opened a bleary eye and looked at me." }
                        ParagraphText { text: "“Hello, Ingrid,” he said, “What are you doing here?”" }
                        ParagraphText { text: "“Father, you know I wanted you to lose some weight….” I began." }
                        ParagraphText { text: "“Oh, aye?” he said warily and shook my hand free so that he could scratch himself." }
                        ParagraphText { text: "“Well, you have done,” I told him as he drifted off towards the roof. (It was a good job he'd been gnapping in the barn, and gnot in the haystack or we might have lost him forever!)" }
                        ParagraphText { text: "I was going to help him to get down, but he was in such a funny mood about it — as if it was my fault that Seamus Sosmall's spell didn't work properly — that I left him there to cool off." }
                        ParagraphText { text: "After tea I got the long ladder out and took him a couple of mother's cobs to put in his tunic pockets. That gave him enough weight to bring him down to earth, but whenever he tried to walk he turned head over heels. So I gnailed one of mother's loaves to each of his boots and that cured that problem. He wasn't very grateful though. " }

                }
                Column {
                        id: chapter19
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Treesday 26th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + units.gu(8) * 20 }

                        ParagraphText { text: "I saw Gnoggin leaning over the side of the guinea pig sty this morning, scrattling around with a stick. I asked him what he was doing." }
                        ParagraphText { text: "“Cleaning sty,” he replied. “Do it once every year..”" }
                        ParagraphText { text: "“Whether it gneeds it or gnot?” I finished." }
                        ParagraphText { text: "He carried on scrattling feebly, trying to work the old bedding towards the gate and gnot getting very far." }
                        ParagraphText { text: "“Gnoggin,” I said, “Wouldn't it be easier to get in there wtih a shovel?”" }
                        ParagraphText { text: "He looked shocked. “I aren't getting in there with those beasts!” he said emphatically. “They be right savage!”" }
                        ParagraphText { text: "“Gnonsense!” I said and to show him, I got a shovel and went into the sty. The guinea pigs came snuffling and shoving up to me. I gave them each a quick hug, then tapped them out of the way with the shovel. Then I shovelled out about as much muck as Gnoggin would have managed in a week, before coming back out." }
                        ParagraphText { text: "“Gnothing in it, you see?” I said, handing Gnoggin the shovel and pushing him through the gate into the sty. I was going to stay and watch but I suddenly remembered that I had left mother's socks drying by the fire so I had to rush off to check that they hadn't burned." }
                        ParagraphText { text: "The socks were on fire when I got back, but I soon put them out. Then my mother came in and started to complain, and it wasn't until she shut up that we heard Gnoggin's cries for help. Really! He is hopeless. He just didn't realise that all the guinea pigs wanted was to sit on him for a cuddle — although I suppose that ten is a bit of a lapful — and it was only because he started shouting and fussing that they stampeded. He should be back on his feet in a couple of days." }
                        ParagraphText { text: "Bumpy is still trying to discover how to milk the rabbits. I said that he should ask them." }

                }
                Column {
                        id: chapter20
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Waterday 27th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + units.gu(8) * 21 }

                        ParagraphText { text: "There was a good wind today, so I was about to get on with the washing when uncle Dusty came in complaining that the mill was grinding too fast for him, and he couldn't find any flour bags, and there's gnowhere to put all the flour that is pouring out of the grindstone. (In fact, it was pouring out of the gaps in the mill's walls and blowing about all over the yard). So I had to spend the rest of the day making gnew bags out of old sheets." }
                        ParagraphText { text: "I have just remembered that I gnever got round to checking the transmission. Must do that soon, as the mill is definitely wobbling a bit." }
                        ParagraphText { text: "Uncle Dusty is still trying to remember why he used to run the mill slowly." }

                }

                Column {
                        id: chapter21
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Airsday 28th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + units.gu(8) * 22 }

                        ParagraphText { text: "Bumpy says that he asked the rabbits and has found out he was wrong. They are not milking rabbits. They are wool rabbits. Now he is trying to find out how to shear them." }
                        ParagraphText { text: "Grandma Gnutson cornered me when I took her supper up. She said “Have you egnjoyed those books I legnt you, Ingrid?”" }
                        ParagraphText { text: "“They are very interesting, Grandma,” I replied tactfully, as I haven't actually got very fast with them." }
                        ParagraphText { text: "“Ignterestigng!” she snorted. “Dogn't they make you wagnt to sail the oceagns ign a logng boat, ravagigng and pillagigng?” she asked." }
                        ParagraphText { text: "“Gnot really,” I admitted." }
                        ParagraphText { text: "“Oh ugnadvegnturous child! You're as bad as these other gnigngnies!” she wailed and disappeared under the bedcovers again." }
                        ParagraphText { text: "I shall mend her longship to cheer her up." }


                }
                Column {
                        id: chapter22
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Fireday 29th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + units.gu(8) * 23 }

                        ParagraphText { text: "When I got up today, I found that everyone else — apart from Gnogging — was already at breakfast. That was odd, but I didn't have time to think about it because just then the postgnome brought a letter. Dimple took it and read it, then he said, “Gnoggin has been kidnapped!”" }
                        ParagraphText { text: "“Who on earth would kidnap Gnoggin?” I asked. He isn't worth anything." }
                        ParagraphText { text: "“Some gnasty elves have grabbed him and carried him off to furthest Gnomechester.” Dimple explained. “They're holding him for ransom and we can't afford to pay it. One of us will have to go and rescue him.”" }
                        ParagraphText { text: "“There's only one of us could manage that,” said my father, and they all looked at me." }
                        ParagraphText { text: "“Take Flopsy to guard you, and you can do it, Ingrid.” my mother added, encouragingly." }
                        ParagraphText { text: "Well, I was just about to rush off and pack my bags when I suddenly saw that it was a joke. (I should have realised sooner. I know perfectly well that Dimple can't read). Oh I did laugh! Gnobody else laughed much, but I expect they had all had their giggle when they organised the 'ransom gnote'." }

                }
                Column {
                        id: chapter23
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Stoneday 30th Juniper"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + units.gu(8) * 24 }

                        ParagraphText { text: "I got up bright and early to start on Grandma Gnutson's longship. It was hidden in a patch of gnettles and had a great hole in the bottom, but I plugged this with an old boot from the bantam coop. (I did Maintenance at the Institute). Grandma will be pleased!" }
                        ParagraphText { text: "Flopsy and I shut up the bantams after tea. It is much quicker, gnow that I have closed the hole at the back. (I realised that last week they kept wandering out again and that the only reason we ever got them all in was that they eventually got tired of being chased around and decided to stay put.)" }
                        ParagraphText { text: "I counted them carefully — 23 plus the cockerel." }
                        ParagraphText { text: "Bumpy has been missing since Fireday morning. We think he is probably somewhere in the rabbit warren." }

                }
                Column {
                        id: chapter24
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Sandday 1st Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + units.gu(8) * 25 }

                        ParagraphText { text: "Grandma is missing too, but we've still got 23 bantams! (And the cockerel.) Dimple is worried what the fox will think about it. Just in case he thinks we've got the day wrong, I shall make sure that the bantams are safely shut up enery gnight from gnow on." }
                        ParagraphText { text: "Father took his boots off to paddle in the duck pond this morning, then fed his ballast loaves to the ducks without thinking. He drifted away of course — which serves him right — but what was worse was that three of the ducks sank. Two of them managed to get out by walking across the bottom, but there's been gno sign of the third." }
                        ParagraphText { text: "A rook from the Greater Cawing rookery gave father a tow back this evening, and we have got him safely tied down for the gnight." }

                }
                Column {
                        id: chapter25
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Mudday 2nd Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + units.gu(8) * 26 }

                        ParagraphText { text: "I was woken up in the middle of the night by a gnoise out in the yard. I looked out and saw a fox throwing pebbles at Dimple's shutters — his room is gnext to mine. He (the fox, that is, not Dimple. He slept through all of this.) looked rather cross and gnot a little hungry, but when he saw me he skulked off quickly." }
                        ParagraphText { text: "I checked the bantams this morning. They were all there, and mother's loaves were still in place over the hole though I could see a few faint toothmarks in them. This reminded me about the baking, but by the time I got back mother had finished, so I'll have to try another day." }
                        ParagraphText { text: "Bumpy came back this evening, accompanied by a rabbit. I saw them coming into the farmyard and said “Why did you bring the rabbit back, Bumpy?”" }
                        ParagraphText { text: "He muttered, rather shame-facedly, “I didn't. It brought me back.” Then he turned to the rabbit and said, “Thank you. I think I can make it from here.”" }
                        ParagraphText { text: "The rabbit looked doubtful, but started to leave." }
                        ParagraphText { text: "“Wait!” I called after it. “Come back again whenever you like and help yourself to these.” And I pointed to the sow-thistles and chickweed that are flourishing in our flower-bed. The rabbit nodded its thanks and hopped off." }
                        ParagraphText { text: "Bumpy wouldn't say much about where he'd been all weekend, but I gathered that when he was herding on Fireday, one of the younger rabbits had picked up his sandwiches and run off into the warren with them. He had gone in after them and had been there ever since. In the end, they must have got fed up with him wandering about the place and decided to bring him home." }
                        ParagraphText { text: "I asked him if he had found out how to shear rabbits while he was there. He said “I think I were wrong about them being wool rabbits.”" }
                        ParagraphText { text: "“Perhaps they are gnome-herding rabbits!” I laughed, but Bumpy didn't see the joke." }

                }
                Column {
                        id: chapter26
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Treesday 3rd Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + units.gu(8) * 27 }

                        ParagraphText { text: "Arback Garden's brother Isfrunt came to visit today, and he brought Grandma Gnutson back with him! He found her washed up beside the estuary. Grandma said she was “sailigng alogng the Dribble, when I gnoticed agn agnciegnt book in the hold. Gnaturally, I threw the gnasty thigng over the gugngnels. Then water begagn rugngnigng ign agnd by figne logngship sagnk.” She stopped and glared at me." }
                        ParagraphText { text: "Honestly! Anyone would think it was my fault." }
                        ParagraphText { text: "Isfrunt is quite a bit younger than Arback — I don't think he's turned 200 yet. While he was waiting for Arback to come up from Soggybog field where he was selecting frogs to train up for the annual Leaping Race in Little Moaning, Isfrunt started to play with Flopsy. Well, I suppose it was really the other way round, but to stop Flopsy from bouncing all over him, Isfrunt threw a stick for her to fetch." }
                        ParagraphText { text: "He did this a couple of times, and the Flopsy did something which made me realise just how clever she is. Instead of running after the stick and bringing it back to Isfrunt, she picked up Isfrunt and carried him over to the stick. That way she had got Isfrunt and the stick back together again, but it had only taken one journey." }
                        ParagraphText { text: "I was impressed. Isfrunt wasn't. He went and shut himself in the farmhouse." }

                }
                Column {
                        id: chapter27
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Waterday 4th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + units.gu(8) * 28 }

                        ParagraphText { text: "I have had father on a bread diet for the last three days, and it seems to be working. He doesn't float gnow when we let go of him." }
                        ParagraphText { text: "I finally persuaded Arback to weed the flower bed this evening — I've been asking him for weeks and he has kept finding excuses. He went out grumbling, and promptly tripped over a rabbit. I'm sure he did it on purpose. Just then Bumpy came back from Sandybottom field. He looked very worried and said that the field was empty, which was odd for this time of day, and that his rabbits had gone missing." }
                        ParagraphText { text: "Arback must have heard because he stuck his head out from amongst the weeds and said, “Gnot missing, Master Bumpy. Just moved. And if I were you I wouldn't step backwards.”" }
                        ParagraphText { text: "“Why gnot?” asked Bumpy, stepping backwards and falling over." }
                        ParagraphText { text: "“Because there's a rabbit behind you,” replied Arback. “Oh, you gnoticed,” he added. There were rabbits all over the place, and all heading for the flower bed. By the time they left you could actually see a few of the flowers! The weeding is getting done after all, thanks to me and the rabbits." }

                }
                Column {
                        id: chapter28
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Airsday 5th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + units.gu(8) * 29 }

                        ParagraphText { text: "There was a bit of excitement this evening. I had been sent down to Little Moaning to see if I could find anyone who wanted to buy bantam eggs. Gnow that they are spending so much more time in their coop, we are finding more eggs while they are still fresh. And there will be even more in future seeing as the fox has been sorted out." }
                        ParagraphText { text: "As I was walking down Ploughgnome Lane, a gang of ruffians wearing cloaks and hoods leapt out on me, tied me up and put me in a bag. I was so surprised, I didn't have time to do anything about it. Then one of them said “Ah ha, me hearty. We be the press gang and you just joined the Gnavy.” There was something very familiar about that voice, but I can't quite work out what it was." }
                        ParagraphText { text: "Well, I wouldn't have minded joining the gnavy, but I like to do things my own way. I managed to reach the little pair of scissors I always carry, and I cut through the ropes. I could hear the two that were carrying me starting to puff and pant as they reached the steep bit in Ploughgnome Lane, so I waited until they put me down for a breather. Then I leapt out of the bag and laid into them. (We did Self-Defense at the Institute.) That surprised them! They ran off down the hill but I managed to trip up one of them as they went past. He was ever so fat — about as big as my father — and he rolled down the hill, knocking over the others and sending them flying." }
                        ParagraphText { text: "When I got back from Little Moeaning later (the Green Gnome has now put in a regular order for two dozen eggs, and the shop says they will stock then) I found my father and brothers being patched up by my mother. They were all battered and bruised. Apparently father had fallen out of the hayloft and landed on them all. Really, they are a clumsy lot!" }

                }
                Column {
                        id: chapter29
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Friday 6th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + units.gu(8) * 30 }

                        ParagraphText { text: "Dimple is even more battered gnow! This afternoon he had met the fox who had a go at him for breaking their agreement. Actually Dimple got off very lightly as the fox had broken all his teeth trying to bite through mother's loaves to get at the bantams, otherwise our Dimple might have been bitten. As it was he was only gummed. Dimple was going to complain, but I pointed out that if he had taken Flopsy for walks himself, rather than employing the fox, he would gnever have got into this mess. He had to agree." }
                        ParagraphText { text: "The rabbits have eaten all the weeds in the flowerbed, which is super. Unfortunately, they have also eaten the gnasturtiums — but we couldn't see them anyway so that doesn't really count — and my father's prize marrow. Well, I didn't know that it was in the middle of the flowerbed, and from what my father was saying, it was so big that we would gnever have managed to get it down to Little Moaning for the Annual Show. (It's tomorrow and there's a Fair!)" }

                }
                Column {
                        id: chapter30
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Stoneday 7th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + units.gu(8) * 31 }

                        ParagraphText { text: "The fair was lots of fun! There was one of the gnew-fangled hot air balloons. The man lit a fire underneath it and the balloon floated up right over our heads — there was a rope to stop it floating right away. He was charging people to have rides in it. Father asked me if I wanted a ride. I said, “Really father, I think it is a waste of money. I shall be content just to watch.”" }
                        ParagraphText { text: "But Bumpy decided he was going to have a ride, so he bought a ticket — then changed his mind! I thought was an even worse waste of money, so I took his place. (Nobody else would.) They pulled the balloon down so that I could get in the basket, then let it float up again. That was fine, but father and Bumpy couldn't leave well enough alone and started fiddling with the ropes trying to improve the knots and both ropes came completely loose." }
                        ParagraphText { text: "It was rather gnice having a proper balloon ride. You can see for far enough up there." }
                        ParagraphText { text: "After a while I realised that the wind was carrying me out over the sea, so I made a loop in the end of a rope, caught a passing seagull in it and got him to tow me back towards the farm." }
                        ParagraphText { text: "It was getting dark, and the balloon was losing height steadily by the time we were over Little Moaning, and I knew I would have to reduce weight if I wanted to reach the farm. (We did the principles of ballooning in Elemental Science at the Institute.) So I untied the bags of sand that were around in the basket, and I dropped them off somewhere over Ploughgnome's Lane." }
                        ParagraphText { text: "That gave me enough height to clear the hawthorn trees before the house." }
                        ParagraphText { text: "The balloon snagged on the barn and tipped me out into the hay before ripping off the roof and coming to rest in Soggybog field. I was just brushing the hay off me when father, Dimple, Jonah and Gnoggin came in front the end of Ploughgnome's Lane, carrying Bumpy between them. Drunk, I expect!" }
                }
                Column {
                        id: chapter31
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Sandday 8th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + units.gu(8) * 32 }

                        ParagraphText { text: "Uncle Dusty has been complaining again. He said “I be sure it's hard on the mill, they sails going so fast.”" }
                        ParagraphText { text: "“Don't you mean that it's hard on the miller, Uncle Dusty?” I said with a laugh. He actually has to work a bit gnow, rather than fiddle around like he used to. But he had to admit that he has almost finished the year's grinding — months ahead of schedule. The wind seems to be picking up, and I can hear the mill creaking from my room. Must check the transmission tomorrow!" }

                }
                Column {
                        id: chapter32
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Mudday 9th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + units.gu(8) * 33 }

                        ParagraphText { text: "Uncle Dusty groud the last of the corn this morning! This was just as well, as the mill collapsed this afternoon. It was a shame that Uncle Dusty was in it at the time. Still, he's gnot hurt much and he can talk. I heard him say “Tell Ingrid that I have remembered why I used to run the mill so slowly.”" }
                        ParagraphText { text: "We'll dig him out tomorrow if it doesn't rain." }
                }
                Column {
                        id: chapter33
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Treesday 10th  Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + units.gu(8) * 34 }

                        ParagraphText { text: "It rained all day. As everyone was stuck inside the farmhouse — except for Uncle Dusty who is still stuck inside the mill — I organised a game of Gnomopoly and I won. Actually, most of the time there was only me and Flopsy playing, and I had to take her goes for her. Everyone else had gone bankrupt and dropped out before we'd hardly started." }
                }
                Column {
                        id: chapter34
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Waterday 11th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + units.gu(8) * 35 }

                        ParagraphText { text: "After lunch my mother said to me, “Ingrid, you have been here gnearly a month, and you still haven't visited Great Aunt Halfwayd over at Doomladen.”" }
                        ParagraphText { text: "“But mother, what about the wool…” Jonah began." }
                        ParagraphText { text: "“Yes, of course! I had forgotten the wool,” mother interrupted him. “We have some wool to send her, don't we? And won't it be a lovely walk through Darkwood for Ingrid?”" }
                        ParagraphText { text: "Everybody agreed it was a lovely walk, but unfortunately they were all too busy to come along this afternoon." }
                        ParagraphText { text: "Actually, it wasn't a very gnice walk at all through Darkwood, though it might have been on a sunny day. As it was, with it being a damp dismal day, Darkwood was almost pitch black and I could hardly see anything. About halfway through, Flopsy came bounding up and wanted to start playing (she must have run after me from the house), but I biffed her off me as she was all wet, and send her back home." }
                        ParagraphText { text: "Great Aunt Halfyard was very pleased to see me, though she couldn't understand why I had brought her three balls of wool. She seemed surprised when I told her I had come through Darkwood. “But my dear, didn't they tell you about the great wicked wolf that roams in the woods, eating travellers?”" }
                        ParagraphText { text: "“Gno,” I said. “I expect it has gone. Didn't eat me, did it?” I came back through Darkwood, and Flopsy came bounding up again determined to have a good old rough and tumble. Well, with all that walking to do, I didn't feel like playing, so I gave her one of my fancy judo throws and she took the hint. Silly old Flopsy!" }
                }
                Column {
                        id: chapter35
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Airsday 12th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + units.gu(8) * 36 }

                        ParagraphText { text: "We were half-way through digging Uncle Dusty out of the mill when the travelling leprechaun, Seamus Sosmall, appeared in the yeard. “Sure and begorra!” he exclaimed, looking at the ruined mill, the roofless barn, broken pig sty, the stripped earth of the flower bed, and at my poor family. Jonah's gnose still red from that gnasty cold he caught along with his fish, Gnoggin's bruises only just starting to fade, Bumpy's head in bandages (something fell on him on the way home from the Fair — he wasn't drunk after all), Dimple still gnursing the black eye that the fox gave him, and of course, Uncle Dusty's legs sticking out from the pile of rubble." }
                        ParagraphText { text: "“There's been a hurricane! But I didn't see the signs of it in Gnomebridge,” said Mr. Sosmall." }
                        ParagraphText { text: "“Violet's gnot been there,” said father. How typical of him to think of me in the midst of our troubles. I smiled at him and said, “You can show me on the map later, father.”" }
                        ParagraphText { text: "“Sure and it seems to me you could do with getting yourselves some good luck,” said Seamus." }
                        ParagraphText { text: "“Gno. What we gneed to do, is to get rid of our bad luck,” answered my father. “Perhaps you can help.”" }
                        ParagraphText { text: "Father led Seamus Sosmall off to the farmhouse and left us to carry on digging out Uncle Dusty. We all worked quite hard, and had cleared down to the head and shoulders when it was time to stop for lunch. The leprechaun was leaving as we went in." }
                        ParagraphText { text: "“Sure and don't worry yourself, Mr. Bottomlow, sir,” he said, “Everything will work out just fine. But remember, gno peeking!” He stood aside to let me past and said, “Goodbye, Mistress Ingrid, it was interesting knowing you.”" }
                        ParagraphText { text: "“Aren't you coming back then, Mr. Sosmall?” I asked, but he just waved." }
                        ParagraphText { text: "We finished digging Uncle Dusty out this evening. Apart from being rather bad-tempered and a bit squashed, he was perfectly all right. Do you know, he'd eaten half the grindstone while he had been stuck there!" }

                }
                Column {
                        id: chapter36
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItemDiary { chapterNumber: "Fireday 13th Jewelly"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + chapter11.height + chapter12.height + chapter13.height + chapter14.height + chapter15.height + chapter16.height + chapter17.height + chapter18.height + chapter19.height + chapter20.height + chapter21.height + chapter22.height + chapter23.height + chapter24.height + chapter25.height + chapter26.height + chapter27.height + chapter28.height + chapter29.height + chapter30.height + chapter31.height + chapter32.height + chapter33.height + chapter34.height + chapter35.height + chapter36.height + units.gu(8) * 37 }

                        ParagraphText { text: "I have been thinking about the problem that we had with the windmill, and I have had a brilliant idea. I explained it all to my family when I came in for my mid-morning break and they were sitting round the table having breakfast." }
                        ParagraphText { text: "“We are going to build Uncle Dusty a watermill!” I announced, “and before you tell me there's gno water, I've already thought of that. We'll dig a canal from the Dribble through to the bottom corner of the yard — we'll have the mill pond there with ducks on…”" }
                        ParagraphText { text: "“Just a minute,” my mother interrupted me, “That'll mean that the canal goes through the farmhouse.”" }
                        ParagraphText { text: "“And across Sandybottom field. My rabbits' holes will be flooded!” protested Bumpy." }
                        ParagraphText { text: "“It'll ruin the fishing on the Dribble,” complained Jonah." }
                        ParagraphText { text: "“The logng boats will get stragnded in the mill pognd,” wheezed Grandma Gnutson." }
                        ParagraphText { text: "“The flour would go all soggy in a watermill,” said Uncle Dusty." }
                        ParagraphText { text: "“Stop!” shouted my father. “I've already asked Dodger and Bodger the builders to come and rebuild the windmill. But anyway, aren't you all forgetting that we have got our Ingrid a present as a reward for all that she has gone for us?”" }
                        ParagraphText { text: "Everybody relaxed and looked at me and smiled. They are a lovely family, really! Father went to the cupboard and came back with a gift-wrapped scroll for me. I wonder where he got it from." }
                        ParagraphText { text: "“Can I open it?” I was so excited." }
                        ParagraphText { text: "“Gnot here!” said my father quickly. “This is something specially for you. Open it in your room later.”" }
                        ParagraphText { text: "Later… Well, so here I am and here's the scroll. I wonder what it could be? A treasure map? My Certificate from the Institute of Gnome Economics with illuminated lettering? A health and wealth spell from Seamus Sosmall? An early birthday scroll? A trick scroll full of itching powder?" }
                        ParagraphText { text: "Oh well, only one way to find out. Knowing how my family feel about me, I'm sure it will be a wonderful surprise!" }
                }
                Column {
                        id: chapter37
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
