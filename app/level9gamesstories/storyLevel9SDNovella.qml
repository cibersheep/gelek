import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Web 0.2
import "../components"

Page {
    id: sdNovella
    anchors.fill: parent
    header: GelekHeader {
        id: sdNovellaHeader
        title: i18n.tr("Eden Song")
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
                    Text { text: "Eden Song"; width: parent.width - marginColumn * 2; font.bold: true; font.pixelSize: units.gu(6); color: darkColor; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; horizontalAlignment: Text.AlignHCenter; anchors.horizontalCenter: parent.horizontalCenter}
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
                    NovellaItem { thisChapter: "Credits";    flick: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }
                }

                Column {
                    id: chapter1
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "1"; flickNext: chapter0.height + chapter1.height + units.gu(8) * 2 }

                    ParagraphText { text: "There’s a lot to be said for being small. Of course, there’s also a lot to be said against it – like the way people look at you and say “Cor, ’e’s small, inn’t ’e.” when you come into a room. But if you’re as handy with a flick-laser as Shorty Witherspoon, no-one ever says it twice – at least, not loud enough for you to hear." }
                    ParagraphText { text: "The thing about being small is, if you sit in a comer and sup your ParaVin quietly, after a while, everyone ignores you and you can hear things. So Shorty sat quietly in a corner of the Snake in the Grass and tuned into different conversations, listening for anything promising. And the Snake in the Grass was a very good place for picking up interesting conversations. It was a dingy drinking den, tucked into a low-ceilinged room in the UnderCity; frequented by arsonists, blackguards, conmen, drunks, ecologists, finks, hoods, politicians, liberals, murderers, optimists, programmers, quiz-show comperes, robocides, socialists, thieves, undesirables, vagabonds, wets, xero salesmen, yobs and zombies. This A to Z of the low-life is completed by the grasses, informers, narks and squealers, of which Shorty was a prime example." }
                    ParagraphText { text: "“… But your honour”, I says, “I haven’t got 25 credits.” “You should have thought of that before you walked on the grass”, says he. “Get yourself a job or get down to the body bank. Driftin’ snowballs, what a choice!”" }
                    ParagraphText { text: "“Well, I reckon that new eye-patch suits you a treat, Jake. Makes you look sort of piratical…”" }
                    ParagraphText { text: "Shorty lost interest. There was nothing to be gained there. He tuned in to the group behind him." }
                    ParagraphText { text: "“… Right, so you all know what you’ve got to do? Big Henry?”" }
                    ParagraphText { text: "“Gottit, Brain. Any fuzbots come snoopin’ round, I do ’em wiv me ’ammer.”" }
                    ParagraphText { text: "“And I keep the barman busy while Nick nicks the nick-nacks…”" }
                    ParagraphText { text: "“No! Nick nicks the nitenaps! Numbskull.”" }
                    ParagraphText { text: "“Sorry, Brain. I’ll keep ’im busy anyway…”" }
                    ParagraphText { text: "Shorty pricked up his ears and listened to the rest of the plan. He smiled a not very nice smile. The Enoch police would pay handsomely for this bit of information, and Shorty liked to have a bit of money in the bank, just in case. The only time he’d ever had to put a bit of himself in the body bank to pay a fine, they’d hardly given him anything. Not much call for small giblets, the doc had said. Yet when he’d raised the cash to buy a replacement set, he’d been charged a fortune. Rarity value, according to the doc. Very hard to get them in his size." }
                    ParagraphText { text: "But what was really galling – once the gall bladder was back, that is – was the feeling that he’d bought his own giblets at five times the selling price." }
                    ParagraphText { text: "He went back to work, occasionally moving to a new table to eavesdrop different conversations. He picked up Sparkles Smith’s plan to open a jewellers – with a crowbar – and a few other little tippets that might be worth the odd credit or two. Then a new group came in and settled down near him." }
                    ParagraphText { text: "“… Shame about Lefty. Did you hear?”" }
                    ParagraphText { text: "“No, what happened?”" }
                    ParagraphText { text: "“Got done for theft. 200 credits fine!”" }
                    ParagraphText { text: "“That’s a bit steep. What had he had?”" }
                    ParagraphText { text: "“He was trying to walk out of the Museum with the inflatable Kim. Don’t ask me why! Personally, I think the fuzbots had it blown up out of all proportion. Still, 200 credits…”" }
                    ParagraphText { text: "“Must have cost him an arm and a leg!”" }
                    ParagraphText { text: "“Too right. He could hardly spare them either. I mean, they didn’t call him Lefty for nothing.”" }
                    ParagraphText { text: "“He wouldn’t be too pleased about that. Got a nasty vicious temper too has old Lefty.”" }
                    ParagraphText { text: "“Oh, well, he’s ’armless for the time being. Hah, hah!”" }
                    ParagraphText { text: "“So what’s he doing with himself now?”" }
                    ParagraphText { text: "“Just bummin’ around – shh! Here he comes…" }
                    ParagraphText { text: "Lefty shuffled across the room to the Cut-Down counter and glared balefully at the barman with his remaining eye. “Jug of ParaVin and a straw.” He challenged the barman to make any comment." }
                    ParagraphText { text: "Shorty waited until he could hear the straw sucking round the bottom of the jug, then strolled over to the Cut-Down counter."}
                    ParagraphText { text: "“Another jug, Lefty?” he offered. He wanted to know why the luckless thief had been after the inflatable Kim." }
                    ParagraphText { text: "“Yeb. An’ it ain’t Lefty no more. Call me…” he paused for thought, not having decided on his new name yet. He eyed Shorty, realised they were now both the same size, and finished with an evil grin, “… call me Shorty.”" }
                    ParagraphText { text: "Shorty took that as the insult that it was and reached instinctively for his flick-laser, then stopped. The new Shorty didn’t have anything to chop off – leastwise, not that he could see. Anyway, he wanted information." }
                    ParagraphText { text: "“O.K. the two Shorties.” He forced a laugh. “Sorry to see you in reduced circumstances, as it were. What happened?”" }
                    ParagraphText { text: "Shorty (Mark 2) wasn’t giving much away, but over seven or eight jugs of ParaVin the story gradually came out. It was a story of intrigue and cunning, of secret maps and hidden places, and of wealth - fabulous quantities of wealth. It was a story to quicken the pulse of any adventurer or any other kind of criminal. By the end of the evening Shorty’s (Mark 1) head was swimming with dreams of treasure – and with eight jugs of ParaVin." }
                }

                Column {
                    id: chapter2
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "2"; flickNext: chapter0.height + chapter1.height + chapter2.height + units.gu(24)}

                    ParagraphText { text: "It was a shame that when he woke up the next day he couldn’t remember anything much after the fourth jug. He had a vague memory of being helped to escape from a fuzbot raid on the drinking den, and was fairly sure that Shorty (Mark 2) had been left behind. If the fuzbots did him for boozing, then Shorty (Mark 1) probably wouldn’t see him again. There comes a time in Enoch, when you have sold all your disposable assets, that you have to go into voluntary liquidation." }
                    ParagraphText { text: "He groaned and opened one bleary eye to see where he was. There was something beside his bed. If only the room would keep still he might be able to make out what it was. A droid, about one and a half metres high, but not a typical streamlined silver job. The feet came into focus first. They were nearly half a metre long, curled up at the end and painted shocking pink. The legs were on the short side, and bowed outwards. They, and the body and arms, were painted bright white with big purple polka dots. In Shorty’s condition, this was all rather hard to take, but the head was worse. The speech outlet had a hinged dust cover, with the opening outlined by thick red lines, curving upwards in a hideous grin. The normally discrete scent-sampler had been housed in a shining red ball, and the twin vid-cams were set in broad splashes of white. The droid’s top aerial had been housed in a conical surround - also in white with purple dots – topped with a loose Find-Me bell." }
                    ParagraphText { text: "It was supposed to look like a jolly clown. Shorty recoiled at the sight and hid his head under the pillow." }
                    ParagraphText { text: "“I’ll never drink ParaVin again!” he muttered." }
                    ParagraphText { text: "A noise like a blunt saw cutting through old plastic grated through the bedding." }
                    ParagraphText { text: "“Arf, arf, arf! Did you hear the one about the man who dreamed he ate an Andromedan Mush Mallow? And when he woke up he couldn’t find his pillow! Arf, arf, arf!”" }
                    ParagraphText { text: "Shorty reached for the poster to turn it off. He couldn’t stand early morning giggle shows. But the poster wasn’t on, and the noises continued." }
                    ParagraphText { text: "“Arf, arf, arf! And then there was the man who went to see the medibot because he couldn’t get to sleep at nights. ’Don’t worry,’ says the medibot. ’Just lie on the edge of the bed. You’ll soon drop off.’ Arf, arf, arf!”" }
                    ParagraphText { text: "Shorty lifted up the corner of the pillow and looked out. The droid was still there, an eye-straining combination of lurid colours." }
                    ParagraphText { text: "“Are you real?” Shorty asked hoarsely." }
                    ParagraphText { text: "“Every centimetre of me, as the bishop said to the actress. Arf arf, arf!” The droid bent stiffly towards Shorty. “You do not laugh or smile. Do I not make you happy, Mr Witherspoon?”" }
                    ParagraphText { text: "“Happy!” groaned Shorty. “My head feels like there’s a herd of gigaphants rampaging around in it, and my mouth tastes as if they’ve been there already. How can I be happy?” He lowered the pillow to shut out the sight of the grimmacing droid." }
                    ParagraphText { text: "“Oh, a touch of the old post-ParaVin pains! Arf arf, arf! Trust your old happibot to fix that. Do you mind if I use your kitchen, sir?”" }
                    ParagraphText { text: "Shorty didn’t mind anything as long as it was quiet. He flapped a hand weakly at the droid." }
                    ParagraphText { text: "It wasn’t quiet. It whistled loudly and out of tune all the time that it banged around the kitchen. Beneath his pillow, Shorty tried to work out what it was all about. Even the vivid image of the spotty droid was obscured by the rampaging gigaphants. The kitchen clamour ceased at last and was replaced by the flapping of large feet." }
                    ParagraphText { text: "“Arf arf arf! Here we are, Mr. Witherspoon. OZ10’s instant happiness.” It was holding out a long tube of cloudy green fluid. “Drink it up! Drink it up! You’ll be amazed what it will do.”" }
                    ParagraphText { text: "Shorty peered out at the droid and its instant solution. He didn’t think he would be amazed. In fact, he was quite sure it would make him violently ill. No way was he going to drink it." }
                    ParagraphText { text: "The droid was silent for perhaps ten seconds, then it started up again. “Arf, arf, arf! Did you hear the one about the man who went to the medibot, and said he was ill because he’d eaten seven red, three blue, two pink and four black hyper-snooker cubes? Arf,…”" }
                    ParagraphText { text: "“If I drink that, will you be quiet for a few minutes?” Shorty could stand it no longer." }
                    ParagraphText { text: "The droid was taken aback. “Yes, if you insist,” it replied after a moment’s pause." }
                    ParagraphText { text: "Shorty reached for the tube, closed his eyes and drank. The taste was indescribable, but it cleared all traces of the gigaphants instantly. He opened his eyes. The room was pertectly still and completely in focus. A gaily painted droid with a jolly face beamed down at him. Shorty was amazed. An instant cure for post-ParaVin pain - though it hadn’t cured the loss of memory." }
                    ParagraphText { text: "“Who did you say you were?”" }
                    ParagraphText { text: "“I am your happibot, Mr. Witherspoon. You hired me last night.”" }
                    ParagraphText { text: "“I did? What’s a happibot? Why do I want a happibot? What happened last night? Do you remember?”" }
                    ParagraphText { text: "“You did. I am. You did not tell me. A lot of things. I do.”" }
                    ParagraphText { text: "Shorty looked pained. He had forgotten Lesson One of Talking to a Droid. “Let’s start again. Can you tell me what happened to me last night?”" }
                    ParagraphText { text: "“Of course, Mr. Witherspoon. I have total recall.”" }
                    ParagraphText { text: "“Good, then you can tell me about it while I have breakfast.”" }
                    ParagraphText { text: "It was just as well that Shorty liked to take a long time over breakfast, for the droid did indeed have total recall - and no editing facilities. Shorty was treated to the whole works – every word, deed and (worst of all) every joke." }
                    ParagraphText { text: "Fortunately, dear reader, we do have editing facilities. Here’s the gist of it:" }
                    ParagraphText { text: "OZ10 was designed as a public relations exercise some years before, when it was felt that robothood’s image needed a little brightening. Two months later, the long-suffering populace, unable to walk down the street for fear of being accosted and told a joke, mobbed the Council Rooms and had it withdrawn from service. OZ10 had been earning his lubricants as a dishwasher and mopper-up ever since. He had recently moved to the Snake in the Grass, where he had discovered that late-night revellers – such as the two Shorties – would let him join their party and even laugh at his jokes. Shorty (Mark 1) had found him so funny (according to OZ10) that he had hired him. Shorty (Mark 1) found that rather hard to believe." }
                    ParagraphText { text: "Shorty (Mark 2) had found out – he wouldn’t say how – that the aliens lived in tunnels under the ground and that these tunnels were lined with glittening gems and gold. He believed that the original Kim Kimberley had been on good terms with the aliens, and, of course, the robots would only take orders from a Kim of some sort, so he reckoned that if he took the inflatable Kim underground with him, it would help – he wouldn’t say how. If Shorty (Mark 1) wanted to cut himself in on the deal, then he’d have to find a complete refit for Shorty (Mark 2). A return to Lefty status would not be enough." }
                    ParagraphText { text: "While they were working out how to raise 800 credits, there was a fuzbot raid on the Snake in the Grass. OZ10 had tucked Shorty (Mark 1) under his pinny and walked out with him via the back store, while Shorty (Mark 2) had hidden under the table. He would probably not have been discovered if he hadn’t suddenly remembered one of OZ10’s jokes and burst out laughing." }
                    ParagraphText { text: "The joke was <b>»CENSORED«</b>" }
                    ParagraphText { text: "The other jokes have been edited out, and you should be glad of it." }
                    ParagraphText { text: "“Did I really laugh at those jokes?” Shorty asked when OZ10 at last finished." }
                    ParagraphText { text: "“Indeed yes, Mr. Witherspoon. It was “Arf, arf, bonk” all evening.”" }
                    ParagraphText { text: "“Arf arf bonk???”" }
                    ParagraphText { text: "“You kept laughing your head off sir! Arf arf, arf!”" }
                    ParagraphText { text: "“Strong stuff that ParaVin. Glittering gems and gold, you say.”" }
                    ParagraphText { text: "“The foreshortened gentleman said so. You know, arf, arf, arf, he reminds me of the meat shop assistant who sat too close to the beef roll slicer and got behind with all his orders. Arf, arf arf!”" }
                    ParagraphText { text: "“Can we cut down on those kind of jokes?” asked Shorty, who was trying to digest his breakfast beef roll at the time." }
                    ParagraphText { text: "“Cut down. Arf arf arf! Oh, very good, sir. Arf arf,…” OZ10 caught the look in his eye and stopped guffawing. “… Erm… Yes, sir.”" }
                    ParagraphText { text: "Shorty said nothing. He was thinking about gems and gold; the inflatable Kim; and vids that he’d seen about expeditions and jungle explorations and trading with natives on Ancient Earth. “Right,” he began, after five minutes of his deepest thought, “We’ll need a team of native porters, ten bales of white cotton, three boxes of glass beads, two boxes of iron axe-heads, one crate of the finest Winchester 45’s, 30 day’s rations and a spare pair of tough-soled walking shoes. Oh, and a puncture repair outfit and a bicycle pump. Got all that?”" }
                    ParagraphText { text: "OZ10, who hadn’t seen the same vids, looked as blank as only a droid can. “What are porters, axe-heads, winchesters and a bicycle?”" }
                    ParagraphText { text: "“All right then, big nose. Have you got any better ideas as to how we get those gems?”" }
                    ParagraphText { text: "“Are you talking to me, Sir?” OZ10 asked innocently." }
                    ParagraphText { text: "“Of course I am, you red-nosed clown! Would I be talking to the cooker?”" }
                    ParagraphText { text: "“I understand, Mr. Witherspoon. What you have just called me, reminds me of the story of the master of wit and repartee. Do you know that one? It goes like this…”" }
                    ParagraphText { text: "“The gems! How do we get the gems? Oh, why do I ask you? I can see I’ll have to do all the thinking around here.” Shorty sank deep into his chair, his brow furrowed in unaccustomed exercise. After a while, OZ10 cleared his speech box tentatively." }
                    ParagraphText { text: "“Er-hum. If I might suggest, sir…’ Shorty didn’t stop him, so he carried on. “I could make a model of the inflatable Kim, as that seems to be important, and I believe it may ease our way with both the fuzbots and the aliens. We would then need to recruit a small team of specialists to help with the expedition. I would suggest that we would need an expert on the native flora and fauna and someone with experience of hazardous exploration. For preference, at least one of them should be tall and strong, as there will be much to carry, and neither you nor I, Mr. Witherspoon, are built for that kind of work. We could use the Kim to help us get the equipment that we would need for an external journey, then leave via the UnderCity route. Once into the jungle we should look for a ventilation shaft from the tunnels and " }
                    ParagraphText { text: "“Oh, shut up, smartyparts! How can I think with you rabbitting on? Make a model Kim! Ha! You couldn’t even make lunch.”" }
                    ParagraphText { text: "“I do not like to contradict you, Mr. Witherspoon, for I know it makes you unhappy, but I could make lunch.”" }
                    ParagraphText { text: "“All right, then, do it. And I’ll work out the rest of my plans.” Shorty went through to the furthest room of his habihome. He’d heard OZ10 in the kitchen once before." }
                    ParagraphText { text: "Lunch was very good. OZ10 was turning out to have some very useful talents. As it explained, it was designed to make people happy. However, Shorty was still convinced that they would have to steal the inflatable Kim, and he overrode OZ10’s protests. “I have a foolproof plan. Follow me, and try to look inconspicuous. I shall wear shades, a false beard and my big green cloak so no one will recognise me.”" }
                    ParagraphText { text: "And so, the smallest man in Enoch and the only purple-spotted droid mingled as unobtrusively as possible with the crowds of tourists at the City Museum. Shorty’s plan was to get close to the Kim, and when no-one was looking, he would stick a pin in it to deflate it and stuff it under his cloak, then walk out with the rest of the tourists. He didn’t tell OZ10 the details, because he was sure that the droid would try to pick holes in it - the plan, that is, not the inflatable Kim." }
                    ParagraphText { text: "When their bit of the queue had shuffled along next to the Kim, Shorty realised there were two minor snags. One, everyone was looking at the exhibit; and Two, his arm wasn’t long enough to reach it. He tugged at OZ10 so that he could whisper in his audio-receptor. “Tell a joke to distract everyone." }
                    ParagraphText { text: "OZ10 recalled the last time it had tried to tell a joke in public. “I fear I cannot remember any, Mr. Witherspoon.” It whispered, shaking his head so that his Find-Me bell rang. " }
                    ParagraphText { text: "“What!” shouted Shorty, then lowered his voice hurriedly. “You dingle-topped tin twerp! And stop ringing that bell. What about all those you told me this morning?” Shorty tried hard to remember one. “How about the man who had been eating hyper-snooker cubes?”" }
                    ParagraphText { text: "OZ10 tried to look thoughtful. “What was the punch-line to that? I have forgotten.”" }
                    ParagraphText { text: "“I don’t know. You never told me.” Shorty was getting desperate. The queue was gradually pushing him past the inflatable Kim - and people were starting to look at them. “Just start telling it anyway - never mind the punch-line.” He doubted that anyone would let the droid reach it anyway. " }
                    ParagraphText { text: "“Arf arf arf..” OZ10 began, very quietly. Shorty kicked it, and it started again louder. “Arf, arf, arf! Did you hear the one about…” " }
                    ParagraphText { text: "It didn’t get any further. There was a piercing scream from further back in the queue. “EEEEKK!!! The happibot’s escaped! Run for your lives!” " }
                    ParagraphText { text: "When the stampede started, Shorty was half-way across the barrier and quite off-balance. He went flying at the first shove and crashed against the Kim’s pedestal, his cloak flying around his head. He lay stunned and in darkness, awakened at last by a fuzbot’s voice. " }
                    ParagraphText { text: "“Now then, Shorty, don’t you know it’s against the law to bring dangerous droids into public places. You can pay a 20 credit fine now, or take a chance with the judge.” " }
                    ParagraphText { text: "Shorty battled his way out of his cape and looked around. The room was empty apart from himself, OZ10, the fuzbot and a scatter of lost shoes, hats and bags. (Oh, and the exhibits. The panic had been so total that no-one had thought of swiping a souvenir while they had the opportunity.) " }
                    ParagraphText { text: "He reached into his belt-bag for his credits card. The fuzbot took it and slotted it into its deductor. The flicker-crystal display registered eight credits and seventeen cents. “If you’ll just accompany me down to the body bank, Shorty.. " }
                    ParagraphText { text: "Shorty was near to despair and looked imploringly at OZ10. “Use your brain,” whispered the droid. " }
                    ParagraphText { text: "“What will I think with if I sell that, you flat-footed fool?” he ranted as the fuzbot led him away. " }
                    ParagraphText { text: "“No! Brain. Last night. Remember…” OZ10 called after him. " }
                    ParagraphText { text: "Shorty strained to work out what the droid was trying to tell him, then suddenlv it clicked. “Wait!” he said to the fuzbot. “I’d like to sell some information.” " }
                    ParagraphText { text: "Grassing on Brain’s nitenap-nicking notions was worth ten credits. The planned break-in at the jeweller’s fetched five more. The fuzbot slotted Shorty’s credits card in its rewarder, then back into its deductor before returning it to its owner. " }
                    ParagraphText { text: "“Thank you for your co-operation, Mr. Witherspoon. A pleasure to do business with you. Now, if you wouldn’t mind removing your droid, Sir, perhaps the Museum can get back to business.” " }
                    ParagraphText { text: "Back at the habihome, OZ10 cooked Shorty a slap-up supper to cheer him up, then, while he slept soundly, it made an inflatable Kim. " }
                    ParagraphText { text: "When Shorty got up, he found OZ10 in the kitchen surrounded by piles of canned and boxed food, pans, crocks, assorted tools and other useful things. The Kim was propped up in a corner. Shorty was staggered. " }
                    ParagraphText { text: "“What on Eden… Did you make that?” " }
                    ParagraphText { text: "“Yes. I always wanted to be a plastic surgeon, arf arf arf! I say, did you hear about the plastic surgeon who stood too close to a radiator? Arf, arf. He melted! Arf arf arf!” " }
                    ParagraphText { text: "But Shorty wasn’t listening. He was staring at the piles on the floor. “How do we carry all this lot?..Do we really need it all?” " }
                    ParagraphText { text: "“We will need some assistance. Yes. I say, arf arf arf! Did you hear about the enthusiastic campers..? They were always intense. Arf, arf, arf!… Intense - in tents.” " }
                    ParagraphText { text: "Shorty ignored the last bit. “We’ll need a pack-horse for this lot! Or at least, a pack-droid.” " }
                    ParagraphText { text: "“I think it will have to be a ’pacman’, Mr. Witherspoon, arf arf! Really, you do need other people, Sir, an experienced expeditioner and an expert on flora and fauna, at the very least.” " }
                    ParagraphText { text: "“So you keep saying!” Shorty didn’t want to cut anybody else in on his deal, but he was gradually realising that OZ10 had a terrible tendency to be right. Perhaps if he could find someone big and brawny, but not too bright.." }
                    ParagraphText { text: "“Coo-ce\". Someone at the door. “Coo-ce\". With a heavy finger. “Coo-ee.” Why didn’t they let go of the button. “Coo-ce.” He was going to have to get that door-caller changed. “Coo-ce.” Reached it at last." }
                    ParagraphText { text: "Shorty whipped the door open angrily. “Will you stop pressing that…” his voice trailed off as he realised he was staring at a belt-buckle. He craned his neck further and further back to see the face of the caller. It was beaming down at him with a lop-sided grin." }
                    ParagraphText { text: "“Duh, sorry to be a bovver, but I’ve just moved in next door. Could I borrow a bit of sugar. I can’t find nuffing in there.”" }
                    ParagraphText { text: "Shorty beamed back. He was just the job. “Of course, come in, come in. OZ10, we have a guest! Stop and have a drink. Tell us about yourself. I don’t suppose that by any chance you’d be free to do a little expeditioning in the next couple of weeks?”" }
                    ParagraphText { text: "“Duh, what?”" }
                    ParagraphText { text: "It turned out that Peregrine Muldoon - that was his name, but please call him Muscles - had a fortnight’s leave from his job as a bed-tester. What’s more, he had a girlfriend who he claimed was an expert on flora and fauna (once Shorty had explained what they were) and that they would both be delighted to go on an expedition with him. OZ10 was not convinced about the new recruit, and kept whispering about ’intelligence’, ’experience’ and ’what if she is as bad as him’ as if they were things that mattered. What it did not seem to realize was that Muscles was big enough to carry everything. and had never once asked ’what’s it worth?’ or other such awkward questions." }
                    ParagraphText { text: "Shorty send Muscles off to pack his smalls - or bigs in his case - and to collect his f &amp; f expert. They were to meet up at the Witherspoon habihome at sunset. Meanwhile, he set off to do some shopping and some shopping. First he had to shop a few more petty criminals to raise some credits; then he could head for the sporting goods shop to buy new boots and a couple of tents." }
                    ParagraphText { text: "Muscles found Cindy, his girlfriend, and told her about the trip. She was very excited. “Ooh! Won’t that be fun. But I haven’t got a thing to wear!”" }
                    ParagraphText { text: "“Duh, that’s all right, uh uh, huh.” Muscles grinned hugely." }
                    ParagraphText { text: "“Oooh, you are awful! Look, I must serve these customers, but we close early today and I’m sure Mrs. Ilibiscus won’t mind if I take a few days off.” Cindy clicked across the shop in her high heels then called to him. “Peregrine, why did they want me to come too?” " }
                    ParagraphText { text: "“Duh, you’re the expert on floor… flor… fur… You know all about plants and animals, don’t you.” " }
                    ParagraphText { text: "“Well, I suppose I do, don’t I.” Cindy went back to her customer. “Was it flowers you was looking for, madame, or a pet? We’ve got some pretty little birds, and all sorts of furry things…” " }
                }

                Column {
                    id: chapter3
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "3"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + units.gu(32) }

                    ParagraphText { text: "And so, in Enoch’s dusky twilight, the intrepid adventurers set forth in search of treasure, excitement and an appreciative audience. (OZ10 never lost hope, though he kept his silicon dreams to himself.)  " }
                    ParagraphText { text: "Shorty had divided up the load between them. He carried the map he had drawn on a scrap of paper, and OZ10 had a deflated Kim in a bag on its back. Muscles carried the food, tents, spare clothes and the rest of the camping and hiking equipment. Cindy had promised to carry her own make-up case as soon as her nails had dried properly." }
                    ParagraphText { text: "Shorty led them along the sneaky back-routes he knew so well, down into the UnderCity. There, they bypassed the Snake in the Grass, which was still under fuzbot surveillance, and headed into the damper and smellier parts of the cavernous complex." }
                    ParagraphText { text: "“Pooh! Do we have to come this way?” Cindy held a frilly hankie to her nose." }
                    ParagraphText { text: "“Arf, arf, arf. That reminds me. There are two men talking. The first man says ’My droid has got no scent sampler.’ The second one asks him ’How does he smell’. The first one replies, “… Awful.” Shorty interrupted. He had heard the joke before." }
                    ParagraphText { text: "“Actually, sir, it should be ’a bit oily’.” OZ10 corrected him." }
                    ParagraphText { text: "“That’s not as funny.” Shorty decided after a moment’s thought." }
                    ParagraphText { text: "“I don’t get it,” said Muscles after an even longer pause. OZ10 started to explain it to him, but was interrupted by his master. “Never mind that. Which way do we go now?” " }
                    ParagraphText { text: "“I thought you knew, Mr. Witherspoon.” " }
                    ParagraphText { text: "“No. I’ve never been past here. I thought you knew.”" }
                    ParagraphText { text: "“Oh, dear. I say, that reminds me, arf, arf ar…" }
                    ParagraphText { text: "“No! Not now, you chrome-covered comic! Find us a way out.”" }
                    ParagraphText { text: "OZ10 began to (politely) clarify Shorty’s misconceptions as to the true functions and abilities of a happibot, when Cindy suddenly pointed beyond them. “’Ere, what’s that light over there?” " }
                    ParagraphText { text: "“It is a very large droid, and probably on guard duty, miss.” replied OZ10, which had very good long-range, night vision. “If I might suggest, Mr. Witherspoon, that is probably the way we should go.” " }
                    ParagraphText { text: "“Right. Operation blow-up!” said Shorty. " }
                    ParagraphText { text: "“Coo, are we going to blow up that robot?” asked Cindy." }
                    ParagraphText { text: "“No, this.” said Shorty, beckoning to OZ10. " }
                    ParagraphText { text: "“Not your nice friend!” Cindy was horrified at the idea." }
                    ParagraphText { text: "“No, this.” OZ10 had unpacked the Kim and held it up. Cindy took one glance and fainted. While Muscles looked after her, Shorty and OZ10 argued about which of them should blow up the Kim. Shorty was not impressed by OZ10’s claim to have no breath, and, in which case, why hadn’t it thought to bring along a bicycle pump as he had suggested. In the end, after Cindy had been helped back to her feet, Muscles blew up the Kim. It took four and a half lungsfull. And then another one and a half because he didn’t get the bung in quick enough the first time. " }
                    ParagraphText { text: "They walked across to the guard, with the inflated Kim held upright between Shorty and Muscles. Muscles held its left arm, and Shorty had its right leg. Cindy followerd close behind, practicing her lines. OZ10 brought up the rear - at a discrete distance, for it didn’t have total confidence in Shorty’s plan. " }
                    ParagraphText { text: "“Halt! Who goes there?” " }
                    ParagraphText { text: "“Ooh, hello sweetie, don’t you remember me, Cind… Kim? Do you mind if we go past. We’re off for a little walk, aren’t we fellers?” " }
                    ParagraphText { text: "Shorty groaned inwardly. All she had to say was ’Let us past. I am Kim Kimberley.’ He glanced nervously up at the big robot, trying to read its expression, without catching its vid-cam. He needn’t have worried - at least, not at that point. " }
                    ParagraphText { text: "“Hello, again honey!” said the big robot warmly, remembering the last time it had met the Kim. “Hey. who’s that cute doll behind you?” " }
                    ParagraphText { text: "“Oooh! Does it mean me? Yoo-hoo!” Cindy stretched up and waved over the Kim’s shoulder at the guard. " }
                    ParagraphText { text: "It waved back stiffly. “Hi-ya, gorgeous.” " }
                    ParagraphText { text: "Shorty fought down the mounting panic, and tugged at the Kim and Muscles. “Come on,” he hissed and led his party past. The guard robot moved slightly to the side, but didn’t take its vid-cams off Cindy. " }
                    ParagraphText { text: "“You ought to be ashamed of yourself!” OZ10 told the robot as it flapped by. The other just grunted deep from within its diodes. “What a little mover!” " }
                    ParagraphText { text: "It was a few minutes later when the guard replayed the meeting and realized it had been tricked. “Come back here!” it bellowed after them, but they were well away. " }
                    ParagraphText { text: "They blundered into the external clothing and equipment stores quite by mistake, though it proved to be a very useful move. The sign on the door appeared to say ’WAY OUT’. In fact, it said ’ABOVEWAY OUTFITS’, but years of grime had obscured most of the letters. " }
                    ParagraphText { text: "The sales-droid behind the counter looked up as they entered. It was one of those highly efficient, super-charged varieties originally designed for selling second-hand space-skimmers and did an instant assessment of its customers before swinging smoothly into its spiel. “Good evening, your Kimness, gentlemen, madame… um… Mr. Coco. Aah! A little expedition into the exterior, I perceive. And I think we need just a teensy bit more equipment to be on the safe side, don’t we. Radsuits, bubble helmets, thermal underwear, nice ’n’ dry walking socks, hand lasers, force field generator, camping beds, insect nets, mini-cooker and ice-box, no-grow anti-plant aroundsheets, tents - now I can see you’ve got one or two just peeking out there, but I bet they aren’t self-erecting and guaranteed jungle-proof, are they? so there you are - tents, day-glow night-lights, portabl…” " }
                    ParagraphText { text: "OZ10 recovered from the onslaught first. It switched its speech synthesiser to treble and to voice-project mode. “Thank you, young droid. Just get everything that we need and charge it to my account. Hurry up now, we haven’t got all day.” " }
                    ParagraphText { text: "The robot instantly switched up a gear and spun round the stores, rapidly building a mountainous pile of clothing and equipment on the counter. The humans watched in stunned silence. The Kim, which had sprung a small leak, slowly hung its head as if in shame at being involved in such shenanigans. Shorty discovered that by squeezing its leg - or any other convenient part - he could force the air back up to the neck and stiffen it. He practised squeezing, then letting go a bit until he could nod its head quite realistically. " }
                    ParagraphText { text: "After 2 minutes and 14 seconds, the sales-droid returned to the counter with its last load - 5 rucksacks. 27 seconds later, all of the gear had been packed neatly into them. “There we are, your Kimness. Will there be anything else?” " }
                    ParagraphText { text: "Shorty nodded the head, as OZ10 said ’NO’ in its off-key treble. As the sales-droid tried to sort out the conflicting signals, Shorty piped up. “Excuse me, your Kimness, but I think we are still lacking a carbo-alumina combination toothbrush-holder and tin opener.” " }
                    ParagraphText { text: "“Oh, dear!” said the sales-droid. “I don’t know if I’ve got one. Please wait for a few moments.” It disappeared into the depths of the stores. " }
                    ParagraphText { text: "“You chip-brained chump!” Shorty accused OZ10.” You told it to put this lot on account. That means that this thing…” he waved a floppy Kim arm, “… is going to have to sign for it. Quick, Muscles! Grab the bags and scarper!” Shorty snatched the Kim from the giant’s grasp and ran for the door dragging the flopping model behind him. " }
                    ParagraphText { text: "“Duh, but aren’t you going to wait for the carboluma toothbrush opener?” asked Muscles. " }
                    ParagraphText { text: "“Come on, Muscles! Get him moving, Cindy!” Shorty implored. " }
                    ParagraphText { text: "It was just as well that the sales-droid was having to do a complete inventory search, for Muscles was definitely a 0 to 60 in 3 days man. Getting through the door took a while too, as the fourth and fifth rucksacks stuck out at the sides, and the second and third stuck out front and back. When he, Cindy and OZ10 eventually emerged into the corridor, Shorty had disappeared from sight, though OZ10 tracked him down by following the faint whistling of air escaping from the Kim. " }
                    ParagraphText { text: "They put as much distance as they could between themselves and the stores, before stopping at last in a distinctly damp and draughty room at the very edge of the UnderCity. A dim, misty light, and an unidentified roaring sound drifted down a passageway from the outside. " }
                    ParagraphText { text: "“Phew! Should be safe here for a while,” Shorty declared. “Muscles, unload that lot, and 07, can you rustle up some food - better make lots,” he added, with a glance at the enormous bulk of Muldoon. “Then you could sort out our haul and dump what we don’t need. Wake me up when breakfast’s ready. I’m not used to all this gallivanting around at night.” He bundled the almost flat Kim into a pillow, stretched out and fell asleep. " }
                    ParagraphText { text: "“Coo, my feet are killing me.” Cindy sat on a rucksack and kicked off her high heels. She sniffed the air distastefully. “And before you say anything, Peregrine, it’s this nasty place that pongs, not my feet!” " }
                    ParagraphText { text: "“Duh, right, Cind… Uh, just a minute I fink I got it… Ych, huh, huh, huh. How does it smell? A bit oily. Yeh, I get it. Huh, huh. That’s funny. Do you know any more jokes, Mr. OZ10?” " }
                    ParagraphText { text: "“Oh, yes indeed I do,” replied a very happy happibot. It was just as well that Shorty slept through the next half hour, especially as either Cindy or OZ10 had to explain every joke at least once. " }
                    ParagraphText { text: "After breakfast, they all tried on the rad-suits and bubble helmets that the sales-droid had selected for them - with a remarkably good sense of size, it should be added. Shorty thought that, wearing them, they could pass as robots if they happened to meet any real ones outside. Unfortunately, the sales-droid hadn’t been able to see OZ10’s feet, and had failed to realize that its hat didn’t come off. They tried cutting holes to fit around the offending protuberances, but it didn’t look right and the suit was taken off. " }
                    ParagraphText { text: "In the end, Cindy suggested that if they met any proper robots, they could pretend that they had captured the dangerous happibot and were taking it into the jungle to dispose of it. OZ10 was not very happy with that idea, on account of what would happen if the robots offered to do the job for them, but couldn’t come up with anything better. Shorty didn’t like the idea, on account of it wasn’t his, but was similarly stumped. Muscles thought it was great, on account of it was Cindy’s idea. So that was the suit problem settled. " }
                    ParagraphText { text: "OZ10 had repacked their gear, so that Muscles now only had four neat rucksacks to carry, rather than six and two loose tents, and as soon as they had got him loaded up, the party headed for the distant light. " }
                    ParagraphText { text: "“What’s that funny noise?” asked Cindy, listening to the ever-louder roaring. “Do you think it’s a wild animal?” " }
                    ParagraphText { text: "“Must breathe in through its ears, if it is,” commented Shorty, “because it never stops roaring.” " }
                    ParagraphText { text: "“Duh, Cindy, can animals breave through their ears?” " }
                    ParagraphText { text: "Cindy was still thinking about this when they turned a bend in the passageway and saw the answer. The tunnel appeared to end in a solid wall of water. " }
                    ParagraphText { text: "“Have we got to go through there?” wailed Cindy. “It’ll ruin my hair-do!” " }
                    ParagraphText { text: "“I say, arf arf arf. What is the cure for water on the brain?” OZ10 waited for an answer, received none, and carried on. “A tap on the head! Arf, arf arf!” " }
                    ParagraphText { text: "While OZ10 explained the joke to an interested, but puzzled, Muldoon, Cindy hunted in the number three rucksack for an umbrella, and Shorty went to investigate the waterfall. When he came back a few moments later, Muscles was chuckling happily, OZ10 was beginning to wonder if his efforts were really worth while, and Cindy was demanding to know who hadn’t packed her umbrella. " }
                    ParagraphText { text: "“It’s all right,” he announced. “I’ve found a stairway tucked away by the side. Daylight flooding from the top of it. Trust Shorty Witherspoon to find a nice, safe and dry way out!”  " }
                    ParagraphText { text: "Well, it was dry. Not very nice though - at least, Cindy didn’t think so. The little curved stairway had a rather low roof, and seventeen families of industrious spiders had installed wall-to-wall suspended ceilings all the way up. Shorty, of course, hadn’t noticed. Cindy did, and she complained all the way up.  " }
                    ParagraphText { text: "At least it was a safe way out - or was it? Shorty reached the top, turned right to head out and blam! He reeled back clutching his nose. OZ10 joined him at the top of the stairs and looked around.  " }
                    ParagraphText { text: "I say, Mr Witherspoon…” he began." }
                    ParagraphText { text: "“Dot anodder joke. Dot dow!” snapped Shorty, still massaging his nose.  " }
                    ParagraphText { text: "“Oh, no, sir,” OZ10 assured him. “I was just going to remark that we are inside the dome.”  " }
                    ParagraphText { text: "“I dow we’re inside de dobe, you pik-footed derd! I’ve bagged by dose trying to get out!”  " }
                    ParagraphText { text: "“No, sir,” the droid explained. “We are actually in the dome itself - between its transparent walls. I can see them quite clearly in the ultra-violet range. The door is just to your left, and there is a handle about waist-height. Perhaps shoulder-height would be a better description,” he added as Shorty fumbled at the wrong level.  " }
                    ParagraphText { text: "In the end, OZ10 opened the door for him. It lead onto a rocky ledge at the base of the dome. The humans fumbled their way through the doorway and stood together on the ledge.  " }
                    ParagraphText { text: "“Coo, On the Edge of Paradise!” said Cindy breathlessly. She had once watched a film with that title, and had often wondered what it meant. " }
                }

                Column {
                    id: chapter4
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "4"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + units.gu(8) * 5 }

                    ParagraphText { text: "Eden’s jungle - the Garden of Paradise! What a magnificent sight! In the distance, a rolling backdrop of lush dark green, with pyramids of dark earth and stone thrusting up above the treetops. Beside them, and flowing away below and to the right, the rushing waters of the river, sparkling blue and white, flecked with gold by the brilliant morning sun. Between the river and the jungle, a broad lawn of low-growing green cry, gay with flowers of every hue, and broken here and there by vine-encrusted hulks of abandoned, rusting machines, and a scatter of fresh, brown mounds. At the bottom of the slope below them, three weedibots, with no appreciation of the wonders of nature, were busy with flame-throwers." }
                    ParagraphText { text: "Shorty took one glance down, then pressed hard back against the invisible wall and closed his eyes. “It’s flaming kilometres down there! Have you seen how small those robots look?”" }
                    ParagraphText { text: "“Excuse me, Mr. Witherspoon, but I think they are small robots, and it is not actually that far,” interposed OZ10." }
                    ParagraphText { text: "“Nonsense, everyone knows those forest fighters are fifteen metres high. How am I supposed to get down this mountain?” Shorty trembled." }
                    ParagraphText { text: "“Arf arf arf. It is not getting down that is difficult.. it is the getting down in one piece! Arf arf arf!” OZ10 said, trying to jolly up his master. As that didn’t work, he tried the magic word, “Gold!”" }
                    ParagraphText { text: "“You’re right, OZ10. Come on, you lot, what are we hanging about for?” He gritted his teeth, half-closed his eyes so that he couldn’t see so well and started to shuffle down on his bottom. Cindy, whose stilletto heels had already caught on the uneven ground twice in three steps, followed in the same fashion. So did OZ10, whose shoes would not allow any other form of descent. Muscles didn’t know why everyone was sitting down on the job, but thought he had better do the same." }
                    ParagraphText { text: "Any physicist will tell you that large heavy bodies with smooth bottoms pick up momentum faster than smaller, lighter ones, on the same slope…" }
                    ParagraphText { text: "At first, Muscles fought against his gathering speed, then he started to enjoy it. It reminded him of the play-park where he had had so much fun as a child, and from which he had been banned at the age of ten after the big slide collapsed under his weight. “Weece! Mind out, ’ere I come..”" }
                    ParagraphText { text: "They didn’t mind out, and Muscles didn’t mind. He cannonned into the back of OZ10, then propelled him against Cindy, who was crushed against Shorty, who flailed his arms and legs madly, but to no avail. They hurtled down the slope - near vertical at times, but fortunately flattening out towards the bottom." }
                    ParagraphText { text: "“That reminds me, arf, arf, arf!” said OZ10 as they bounced over and onto hard rocky bumps, “There was this man who fell down stairs. ’Did you miss a step?’ asked his friend. ’No,’ he replied, ’I hit every one!’ Arf, arf arf!”" }
                    ParagraphText { text: "OZ10 needn’t have bothered. The wind of their passage whipped his words away behind him, where only Muscles could hear." }
                    ParagraphText { text: "Bounce, bump, bang. Skid, slither, smack, scrunch, crash, whumph! Or words to that effect. They had come to a stop at the bottom. Muscles was the first to speak. “Duh, that was lovely! Wasn’t it, Cindy!”" }
                    ParagraphText { text: "Cindy giggled, still a bit breathless. “Ooh, yes. But if my bottom’s all bruised, I shall be cross with you, you naughty boy… ’Ere, where’s Mr. Shorty gone?”" }
                    ParagraphText { text: "They got up to look for him, and found him instantly. “Are you alright, Mr. Shorty?” asked a worried Muscles, peeling him off the ground. Shorty was speechless with shock, squash and rage, but a rumbling began from deep inside, like a dormant volcano throbbing back into life. Fortunately for Muscles, the eruption never got beyond the first splutterings. A new problem, in the shape of flame-throwing weedibots, arrived on the scene. “Eeek!” squealed Cindy, surprised by their sudden appearance from behind a low hill." }
                    ParagraphText { text: "“Remember you are a robot, miss,” cautioned OZ10. “Mr. Witherspoon, Sir, we have company.” He directed Shorty’s attention to the new arrivals. Shorty took one look, then his anger suddenly dissolved into a broad grin as he realised that the fearsome fifteen metre high forest fighters were actually one-metre weedibots. “If there’s any trouble, Muscles, blow their flame-thrower out and toss them in the river. Or perhaps I’ll do it myself!” Robots smaller than himself were a new experience for Shorty. “No, perhaps not.” They weren’t that much smaller. “Muscles, when I say ’blow’, do it.”" }
                    ParagraphText { text: "“Do what?” said Muscles, who hadn’t been paying attention. He had almost worked out the joke about the man falling down the stairs." }
                    ParagraphText { text: "“Blow their flame-throwers out..”" }
                    ParagraphText { text: "“Like on a birthday cake, you mean?” asked Muscles." }
                    ParagraphText { text: "“You don’t have flame-throwers on birthday cakes, you great lunk. You have candles…”" }
                    ParagraphText { text: "“Dub, but they’ve got flame-frowers..”" }
                    ParagraphText { text: "Shorty rolled his eyes and threw up his hands. He gave up - there was not time to continue anyway, as the weedibots were too close. They moved with a peculiar syncopated rhythm, swaying from side to side as they swept the ground in front of them with the flame-throwers, but their feet moved up and down in double time. They were quietly chanting “Ooch, ouch, ooch, ouch!” as their feet touched the hot ground." }
                    ParagraphText { text: "“Excuse me, good droids,” called Shorty, “but why don’t you walk backwards and burn behind you?”" }
                    ParagraphText { text: "The weedibots put their circuits together as they swayed, then piped their reply in unison. “Because we have already done behind us.”" }
                    ParagraphText { text: "Shorty persisted. “Yes, but if you turned round now and went that way, that would be more efficient.”" }
                    ParagraphText { text: "Efficient! Ah, now there’s a word to make a robot happy. The three had another conference. “Yes, it would be more efficient, and out feet would not get hot. May your chips run cool and you lubricants never dry.” As they spoke their gratitude, they swept round in a wide arc - taking care not to catch each other with their flame-throwers - until they were facing the way they came." }
                    ParagraphText { text: "The adventurers watched the little droids back away. Cindy was smiling at them and waved as they disappeared round a large rock. “Oooh, aren’t they sweet! That was ever-so kind of you, Mr. Shorty, to help them out like that.”" }
                    ParagraphText { text: "“Not at all, not at all!” he replied, with an evil grin. He cupped his hand to his ear and waited for a moment. There were three little splashes and three little hisses as the weedibots backed into the river. “I thought they might do that,” he chortled. “Just leave it to Shorty to sort out these robots.”" }

                }

                Column {
                    id: chapter5
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width// - marginColumn * 6
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "5"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + units.gu(8) * 6 }

                    ParagraphText { text: "He was still chortling over his success when they ran into the forest fighters. Contrary to popular myth, these are not fifteen metres high. Measured from their scythe-edged boots to the eight-barreled laser cannon mounted on their heads, they are actually just over 23.9 metres high. They had been obscured from view by a substantial copse in the middle of the plain, and didn’t so much step out of the trees as over them." }
                    ParagraphText { text: "Cindy fainted at the sight; Shorty quailed inside his rad-suit and had lots of rather belated regrets about starting on the expedition; and Muscles, who was listening to a joke that OZ10 was trying to tell him, didn’t take any notice." }
                    ParagraphText { text: "“Are you the new weedibots?” boomed the nearest forest fighter." }
                    ParagraphText { text: "“Erm… er… hurrm… er…” Shorty tried to find a voice." }
                    ParagraphText { text: "“We have been told to watch out for three criminal fugitives accompanied by a deranged droid in camouflage colours,” the giant robot continued. “If you see them, you should destroy them instantly.”" }
                    ParagraphText { text: "It turned its close focus vid-cam on the group and began to scan them suspiciously. Shorty found his voice at last, and decided to try Cindy’s plan, seeing as how his churning brain wasn’t producing anything better. “We have caught the revolting robot, and are proceeding to the jungle to dispose of it.” As he spoke, he tugged Cindy to her feet and began to back his group up a small hillock." }
                    ParagraphText { text: "“To dispose of it in the jungle?” echoed the forest fighter. “We were told to eliminate it instantly. Stand back. I will do it now.”" }
                    ParagraphText { text: "“No, no,” said Shorty hurriedly. “These are new instructions from the top. It’s a clever plan. This happibot is going to joke the jungle to death…” Somehow - perhaps it was the way he said it, perhaps it was just the way it was - it didn’t sound that convincing, even to Shorty. They had almost reached the top of the hillock and Shorty glanced round, looking for somewhere to run to. It was not a promising sight. The jungle edge was a full kilometre distant, with a clear field of fire all the way. And if they could reach the jungle - what protection could it give from forest fighters? “Blow it!” he said." }
                    ParagraphText { text: "“Duh, I can’t see their flame-frowers, Mr. Shorty,” called Muscles." }
                    ParagraphText { text: "“Shorty!” the leading forest fighter exclaimed. “Fugitives! Exterminate, exteminate!” It raised its enormous proton-beam slicer and aimed it at the group." }
                    ParagraphText { text: "“Hit the deck!” shouted Shorty, throwing himself into a dip at the top of the hillock. The others dived down with, or on top of him - and the ground gave way. They fell clear through and landed in a confused heap some metres below. Loose soil rained down around them. A fizzing and frazzling from the top of the hole told of the beam slicer hard at work." }
                    ParagraphText { text: "“Coo, that was clever of you to find this hiding place, Mr. Shorty! And it’s so pretty too.” Cindy breathed her admiration." }
                    ParagraphText { text: "Shorty was about to take full credit for his masterly leadership when he realised what she was looking at. The walls of the tunnel into which they had fallen, were studded with gleaming, sparkling stones. “Gold and glittering gems! Diamonds!! Rubies!! Emeralds!! I’m rich! Rich!! RICH!!!!” He leapt up and ran along the tunnel, caressing the walls. He bounced with joy; tried to do a cartwheel and fell rather badly; bounced up again and ran about some more. Then, whipping out his Acturian army knife, he fumbled with the blades until he found the one for getting stones out of centaurs’ hooves, and started prising stones out of the walls." }
                    ParagraphText { text: "“Nice to see him happy.” commented OZ10, with a good feeling of job satisfaction. “I’ll say, arf, arf, arf! Did you hear about the millionaire who never took a shower? He liked to be filthy rich! Arf, arf, arf!”" }
                    ParagraphText { text: "Cindy was still explaining it to Muscles when Shorty staggered back with his arms full of stones. “Look at them! Rich!! And there’s tonnes more where these came from!” He was beside himself with glee." }
                    ParagraphText { text: "“Duh, my mum had lots of these. A sort of collection like. If we was good, she’d let us have one by our beds when we went to sleep.” Muscles picked one up and looked at it with fond memories." }
                    ParagraphText { text: "“What are you on about? These are jewels, precious stones, worth a fabulous fortune… aren’t they?” he looked to the rest of them for confirmation." }
                    ParagraphText { text: "“Well, they’re ever-so pretty,” agreed Cindy. “Funny the way they glow, though, isn’t it. I mean, they don’t glow like that in the jeweller’s shop do they?”" }
                    ParagraphText { text: "“She had a word for it. What was it? Flouride? Floorpolish? Flor..”" }
                    ParagraphText { text: "“Fluorescent?” suggested OZ10. He clicked one of his vid-cams into electron-micro-mode and examined the stone that Muscles held out. “Naturally fluorescent stone. They are not uncommon, Mr. Witherspoon. If you have not seen them before, it is probably because no-one has found any great use for them in the cities.”" }
                    ParagraphText { text: "“All right, what about this then?” Shorty searched through his pile to find a lump of gleaming yellow metal. He tossed it to OZ10. The happibot examined it briefly.  " }
                    ParagraphText { text: "“I am very sorry to cause you unhappiness, sir, but this is a compound of iron and sulphur called pyrites. On Ancient Earth it was known as… Fool’s Gold.”" }
                    ParagraphText { text: "“How can you tell? How can a happibot know all this?” Shorty wavered between anger and misery." }
                    ParagraphText { text: "“All droids have certain basic functions, Mr. Witherspoon. Analytical Chemistry is written into the general knowledge chip.” OZ10 looked sadly at its master, and tried to think of ways to cheer him up. He did not think he would tell him a joke, just at that moment." }
                    ParagraphText { text: "“Perhaps, sir, we could find profit here after all,” it said, suddenly brightening up. “We could take back stones to make into pretty bedside lights for children, in the fashion of Mother Muldoon. You could perhaps earn an honest living that way.”" }
                    ParagraphText { text: "“I don’t want to earn an honest living. I never have done, and I’m not starting now.” Shorty was adamant. “I want to be rich. And I know there’s treasure here somewhere. These things are just to throw us off the scent. Shorty-Lefty couldn’t have been wrong. We are going on!”" }
                    ParagraphText { text: "They took off their rad-suits, which were a bit hot to wear in the tunnels, then mended the leak in the Kim, and inflated it, in case they met any aliens. The next problem was to decide which way to go. Shorty wanted to head back in the direction of the city, because he thought Shorty-Lefty would probably have done his exploration closer to home; Cindy wanted to go the other way because she thought the walls looked prettier down there; Muscles had turned round three times and couldn’t work out which way was which; and OZ10 told them the story about the two students who could not decide what to do." }
                    ParagraphText { text: "“… so in the end, they agreed to toss a coin. If it landed heads up, they would go to the drinking den; if it landed tails up, they would go and find some girls; and if it landed on its edge, they would stay in and study. Art, arf, arf!”" }
                    ParagraphText { text: "“Duh, what’s a coin, Cind?” asked Muscles, but she didn’t know either." }
                    ParagraphText { text: "Shorty thought maliciously that they should toss OZ10 to decide the issue, and had asked Muscles to do it when the droid pointed out that the Kim would spin better. The Kim landed face down, so they went into the tunnel away from the city." }
                    ParagraphText { text: "“Well, wonder-droid,” asked Shorty after they had been walking for a while, “anything in your general knowledge chip about these tunnels?”" }
                    ParagraphText { text: "Very little, I am sorry to say, Mr. Witherspoon. They have almost certainly been constructed by an alien lifeform, and all alien data is on the classified chip, which is not in my bank. Should you not ask your flora and fauna expert?”" }
                    ParagraphText { text: "The f &amp; f expert was in deep discussion with the expeditioning expert about the nature of the fluorescent stones embedded in the walls." }
                    ParagraphText { text: "“Coo, there’s a pretty little red one, Peregrine. Isn’t it nice?”" }
                    ParagraphText { text: "“Duh. My mum had one just like that. I thought it was a sweetie and ate it. She wasn’t half cross with me.”" }
                    ParagraphText { text: "Shorty interrupted their mineralogical deliberations: “Cindy,” what a ridiculous name, it suddenly occurred to him. Who could expect anyone with a name like that to be an expert on anything - except perhaps nail polish! He ploughed on for lack of anything better to do. “Cindy, as our animal expert, what can you tell us about the type of creatures that built these tunnels?”" }
                    ParagraphText { text: "“Do you mean somebody built these? Coo! I hadn’t thought of that!” She looked around with renewed amazement. “Yes, I suppose you’re right.” Shorty groaned inwardly. “I’ll tell you something, Mr. Shorty,” she added, “whoever dug these was big. I mean, look where Peregrine’s head comes to.”" }
                    ParagraphText { text: "Great Starships, she was right! Shorty looked at the clear metre between Muldoon’s close-cropped bonce and the top of the tunnel. A sudden vision of terrifying two-tonne aliens, three metres tall, stopped him in his tracks. He stepped back in fear, onto OZ10’s foot. It was a mistake. OZ10 was unable to break its stride and it flipped Shorty head over heels." }
                    ParagraphText { text: "He lay where he had landed. “That’s it!” he muttered, “I’ve had it. I’ve been thrown down mountains, sat on by gigaphants in human shape, shot at by rampaging rambobots, pushed down holes, and now kicked about by my own happibot! I’ve had enough. I’m going back to a simple life of crime.”" }
                    ParagraphText { text: "“Poor Mr. Shorty, you’re just tired and hungry. That’s all. Our nice Mr. OZ10 will get us some supper then we’ll have a lovely sleep and feel ever-so much better in the morning.” Cindy fussed over him, propping him up against the Kim for a pillow. “There, I knew we’d find a use for this thing.”" }

                }

                Column {
                    id: chapter6
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "6"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + units.gu(8) * 7 }

                    ParagraphText { text: "Later, after OZ10 had fed its humans and watched them settle down to sleep, it set off to find a quiet spot for a bit of private practice. Its jokes weren’t producing the right reactions from its audience and OZ10 wondered if it was the way it was telling them. It had decided to practice telling them in different ways. Perhaps it should make more use of its speech synthesiser." }
                    ParagraphText { text: "Not so far from their camp, he came across an opening in the tunnel wall. It opened out into a wide, low-ceilinged chamber. Soft white potato-like tubers protruded from the roof close to the droid’s head. He tested the acoustics. They were good. Those potato-things could well have been installed to cut down echoes. He went into his routine." }
                    ParagraphText { text: "“Barber: I say, Sir, were you wearing a red scarf when you came in?" }
                    ParagraphText { text: "Customer: No. <br> Barber: Oh, dear!” " }
                    ParagraphText { text: "OZ10 tried it a few more times with different voices. Were some funnier than others, it asked itself, as it replayed the set using its integral tape-recorder? It was a difficult question to answer as OZ10 had no proper sense of humour - just a four-chip joke bank. Anyway, would the humans know what a barber was?" }
                    ParagraphText { text: "“First Man: I say, did your compu-watch-phone stop when you dropped it on the floor? <br> Second Man: Of course it did. Did you think it would fall straight through?”" }
                    ParagraphText { text: "“Hee-hee-hee-hee-hee! Haw-haw-haw! Hee-hee-hee-hee !”" }
                    ParagraphText { text: "Someone was laughing! Giggling like the proverbial idiot, and it was not Muscles. OZ10 flapped round to see who it was. There was a creature squatting behind the droid. It was slightly shorter than OZ10, covered in glossy fur - slightly splattered with mud - with small bright eyes, a long whiskery snout and little pointy ears. It was set back on its haunches, clutching its tail in its mouth as it tried to suppress a fit of the giggles. As it got a full frontal of the droid, it let go of the tail and collapsed on the ground, rolling around, kicking its legs in the air and roaring with laughter." }
                    ParagraphText { text: "OZ10 had never had that reaction before. It waited with a smug grin on its speech-synthesiser dust-cover until the creature had subsided. It was a long wait, as every time it began to pull itself together and mop the tears from its eyes it would catch sight of OZ10 and burst out laughing again. If OZ10 had not been such a patient droid, it might have found it all rather trying." }
                    ParagraphText { text: "At last it settled down, rummaged in its shoulder bag, found a large spotted hankie and blew its snout loudly. " }
                    ParagraphText { text: "“Oo-ar! You’re bootiful. Really bootiful. Oi ain’t larfed loike that not since Oi wur a little un. You know any more o’ they funny stories?” The creature mopped its eyes and sat waiting." }
                    ParagraphText { text: "“Oh, yes! Lots!” replied OZ10 enthusiastically. <i>\"If</i> you do not mind me saying it, sir, you have a remarkable command of English for an alien.”" }
                    ParagraphText { text: "“Now not so much o’ the alien, my old pal, my old booty. Oi do be a native o’ these parts. It’s your sorts as is the aliens. Oo-ar! As for speakin’ your lingo, we picks it up with a bit o’ the old telepathy loike. Now me, Oi loikes to tune in to folks as is listenin’ to the old radio. Oi do be an Archers fan meself. Never misses an episode. Oi ain’t be so keen on yon television, though Oi do be partial to the old cowboy ’n’ injun fillums. Allus fancied bein’ an injun meself.”" }
                    ParagraphText { text: "“That reminds me, arf, arf, arf. Did you hear the one about the new cowboy at the ranch? Arf, arf arf. The cowboy asks ’What is the name of this ranch.’ The rancher replies, ’It is the Triple-Bar Lazy G Snake River Double 00.’ The cowboy asks, ’How many head of cattle do you have?’ The rancher replies. ’Not many. Only a few survive the branding!’ Arf, arf, arf!”" }
                    ParagraphText { text: "This set the alien - sorry, native - off again. OZ10, its circuits fairly melting with the glow of success, could scarcely wait until it had simmered down before telling another. And so the night passed in electronic merriment." }
                    ParagraphText { text: "When Shorty and the others discovered them in the morning - Shorty complaining about where had that spotted skiver sneaked off to and where was his breakfast - OZ10 was bending over the creature which was murmuring weakly. “Oo-ar! You’ll ave to stop. Oi carn’t take no more!”" }
                    ParagraphText { text: "“We’ve been hunting for you everywhere, you dozey droid.” Shorty announced angrily. “Drifting snowballs! What’s that?”" }
                    ParagraphText { text: "“What have you been doing to the poor little thing?” demanded Cindy." }
                    ParagraphText { text: "“Ah, good morning, sir. Good morning, miss. Allow me to introduce him-whose-eyes-shine-like-an-alien’s-sit-upon, otherwise known as Whiskas.” He gestured to the creature that had struggled into a sitting position, and was now mopping itself with a very soggy hankie. “Whiskas, this is Mr. Shorty Witherspoon..”" }
                    ParagraphText { text: "“An’ good day to you there, Mr. Short-and Withered-Spoon. Any friend of ’im-with-the-big-mouth-what-swallowed-the-awful-joke-book is friend of moine.” Whiskas waved a paw weakly at him." }
                    ParagraphText { text: "“..Miss Cindy Longshanks..” OZ10 continued the introductions." }
                    ParagraphText { text: "“Oo-ar! Now we’ll call you ’er-whose-legs-go-right-up-to-’er-sit-upon. Oo-ar!” Whiskas pulled himself up for a closer look." }
                    ParagraphText { text: "“And I’m Muscles.” said Muscles, crawling between the two. The roof was too low for him to stand up." }
                    ParagraphText { text: "“Ar! You’ll be ’er-whose’s ’orse now, will you? ’ow come you can talk? Oo-ar! An’ who’s that quiet one you’re dragging behind you?” Whiskas pointed to the Kim. Muscles was able to understand that question. “This is the Kim,” he announced, standing the model up so that Whiskas could see it." }
                    ParagraphText { text: "“Oo-ar! ’ello there, my little booty. An’ what’s a noice gurl loike you doin’ in a place loike this?”" }
                    ParagraphText { text: "While Whiskas tried to strike up a conversation with the inflatable Kim, Shorty took the opportunity to quiz OZ10. “Is that an alien?”" }
                    ParagraphText { text: "“No, sir. He is a native, and I might add, sir, that he has a most excellent sense of humour..” OZ10 smiled benignly in Whiskas direction." }
                    ParagraphText { text: "’Er-with-the-big-whatsits-and-empty-’ead don’t talk much. Oi likes quoite females. Now tell us, what are you aliens doin’ in moy garden?”" }
                    ParagraphText { text: "“Aliens! Garden?” He looked at the tubers hanging above them and realised what they were. “Hey, I’m the boss round here.” Shorty noticed that the native had turned to OZ10 for his answer. He was not having the droid steal his show, and his confidence had recovered rapidly once he had realised that he wasn’t going to have to deal with two-tonne, three metre monsters. Besides, OZ10 would almost certainly tell the truth, and Shorty couldn’t have that. “OZ10, how about some breakfast, and perhaps our guest would join us? You loike some food, moy old booty?” he asked ingratiatingly." }
                    ParagraphText { text: "“Whoy do you talk funny, Mr. Short-and-Withered-Thing?”" }
                    ParagraphText { text: "Over breakfast, Shorty span a tale of fleeing from the oppressive robots in Enoch, and of coming to the outlands to offer their services to the natives in their fight against the invaders. Whiskas, who listened with his head as well as with his ears, didn’t believe a word of it, but was too polite to say so." }
                    ParagraphText { text: "“You mean loike in the westem fillums? Us natives bein’ the injuns, and you folks bein’ the cowboys? An’ Oi suppose they big metal things is loike the US cavalry? Oi seen all they old movies.”" }
                    ParagraphText { text: "“Er, yes..” Shorty thought it sounded right, but the only old vids he ever watched were gangster films. James Cagney and Mickey Rooney were his favourite actors." }
                    ParagraphText { text: "“Ar! Now they injuns, they’re brave, aren’t they?” <br> Shorty nodded in agreement." }
                    ParagraphText { text: "“Allus foightin’, aren’t they.” Whiskas continued. Shorty nodded, again vigorously." }
                    ParagraphText { text: "“Allus gettin’ theyselves killed, aren’t they?” The native waited for Shorty’s reaction. The little man eventually nodded doubtfully. “Ar, Oi noticed that as well. Oi think Oi’ll stick to tendin’ moy garden.”" }
                    ParagraphText { text: "Whiskas finished the last of OZ10’s waffles and licked his chops clean with a long pink tongue. “Oo-ar! That were really bootiful, Spotty. You can come an’ live in moy tunnel any toime you loike. ..an’ so can you, moy old booty” he winked at the Kim. “Don’t eat much, noither, do she?” he added. “Now, Oi gotta go an’ meet some folks. If you’d loike to come along, you’ll be welcome.”" }
                    ParagraphText { text: "As they walked along, Shorty raised the question that had been troubling him for some time. How did little Edians like Whiskas - and were all Edians little like Whiskas? - dig such high-roofed tunnels?" }
                    ParagraphText { text: "“Well now, this ’ere tunnel don’t ’ave an ’oigh roof.”" }
                    ParagraphText { text: "“Doesn’t it?” Shorty had visions of vast underground caverns." }
                    ParagraphText { text: "“..No. It’s got a low floor.”" }
                    ParagraphText { text: "“Where are all the other Edians, Mr. Whiskas?” asked Cindy." }
                    ParagraphText { text: "“They’ll be ’eadin’ for meetin’s same as we are. We allus get together of a thursday to have a few jars an’ swap a few stories. Old Spotty there, ’e did tell Oi some funny ones last noight.”" }
                    ParagraphText { text: "“But I thought it was tuesday today!” said Cindy, who had been trying to keep track of time." }
                    ParagraphText { text: "“Oh, no. It’s allus thursday down ’ere.”" }
                    ParagraphText { text: "Excuse me,” interrupted OZ10, “but my sensors are picking up robotic activity quite close by.”" }
                    ParagraphText { text: "“Nonsense!” said Shorty. They had reached a section of the tunnel which ran almost perfectly straight for as far as the eye could see in either direction. He noticed Whiskas scrabbling at the tunnel wall, digging a private escape route. “Hey! Where are you going.”" }
                    ParagraphText { text: "“Oi believes moy old mate Spotty,” came the muffled reply. Whiskas could tunnel at a remarkable rate of knots. Before you could say ’Come back here, you long-tailed coward’ he had all but disappeared, kicking the earth to close up the tunnel behind himself." }
                    ParagraphText { text: "“Duh, what’s happening, Mr. Shorty?” asked Muscles." }
                    ParagraphText { text: "“Nothing! I don’t know what all the panic is about,” replied Shorty. He soon found out." }
                    ParagraphText { text: "There was a noise of earth falling, then six fighterbots dropped one by one down a ventilation shaft/molehill about fifty metres ahead of them. They landed lightly and lined up across the tunnel, laser fingers pointing directly at the adventurers. Shorty spun round, about to run, then froze. Another six fighterbots had dropped down a shaft behind them and were lining up for action." }
                    ParagraphText { text: "“Shorty Witherspoon, you are charged with misuse of the Kim for illicit purposes to whit the theft of five rad-suits and matching bubble-helmets, three tents, four hand lasers..” began the commanderbot." }
                    ParagraphText { text: "“Quick! The weapons!” cried Shorty." }
                    ParagraphText { text: "“Oh, I am terribly sorry, Mr. Witherspoon,” said OZ10. “I did not pack them. I thought that someone might get hurt if I did.”" }
                    ParagraphText { text: "“and with the drowning of three weedibots. You are therefore fined 32500 credits. I am obliged to advise you that refusal to pay will result in your death.” the commanderbot concluded." }
                    ParagraphText { text: "“Ooooooh! No.” wimpered Shorty…" }
                    ParagraphText { text: "“Fire!” called the commanderbot - he took that for a refusal." }
                    ParagraphText { text: "“Hit the deck!” yelled Shorty. (It had worked last time, he remembered.)" }
                    ParagraphText { text: "Shorty, Cindy, OZ10 and Muscles threw themselves down, in that order - and in more or less the same place. The fighterbots fired. For a moment the air was filled with blue lightning and the electric crackle of innising air, then there were twelve almost simultaneous explosions followed by an eerie silence broken only by the whistle of a slowly deflating Kim. The fighterbots, those perfectly co-ordinated fighting machines, had lined up with millimetric accuracy and fired directly into each others lasers." }
                    ParagraphText { text: "Shorty, who could neither move, see, nor hear, was convinced that the tunnel had caved in, and that his time had come. His life flashed before him - a long history of lying, cheating and stealing. If by some miracle he came out of this alive, he would change. He wouldn’t waste the rest of his life in petty crime and petty treachery. No, he’d go in for big crimes and big treacheries - there were more credits in it. He had just decided on his first big job - robotocide, with OZ10 as the victim - when Muscles got up and let the others clamber off Shorty." }
                    ParagraphText { text: "“I say,” said OZ10, “that firing squad did not offer us a last request. They are supposed to, you know. It reminds me of the story of the man who was about to be shot, and the commander of the firing squad said..”" }
                    ParagraphText { text: "“Let me get at him!” yelled Shorty, struggling to his feet and rushing at OZ10. Muscles held him off, absent-mindedly. <br> “Duh, did he really say that, Mr. OZ10?”" }
                    ParagraphText { text: "“No, no,” replied the droid. “The commander said, ’Do you have any last request.’ And the man replied…”" }
                    ParagraphText { text: "“I’ll kill that crazy-chipped clown!” Shorty thrashed at the end of Muscles’ arm." }
                    ParagraphText { text: "“Duh, whose telling this joke, Mr. Shorty? I’m getting confused.”" }
                    ParagraphText { text: "“… the man replied,” continued OZ10, “’Yes. I would like to sing a song. Nine hundred and forty seven thousand, three hundred and sixty two green bottles, standing on a wall…’ Arf, arf, arf!”" }
                    ParagraphText { text: "“Dee-hee-hee! Haw-haw-haw! Oo-ar, that’s a good un! Ha-ha-ha! You’ll ’ave to tell that un at the meetin’, Spotty.” Whiskas had reappeared. He crawled the rest of the way out of his hidey-hole and looked around. “Oo-ar! Look-ee ’ere. All they metal men blowed up, and you lot just a-standin’ there as cool as you please, tellin’ jokes. Well, Oi do ’ave to ’and it to you gentlemen and ladies… Ol! ’ello, what ’appened to er with the big whatsits? She do be looking a bit flat.”" }
                    ParagraphText { text: "After Shorty had been calmed down - after all, he was still alive, was he not, and the high robots were all reduced to smouldering heaps of silicon and steel, were they not, and Whiskas thought he was a hero, did he not - and the Kim had been patched up, yet again, Whiskas led them off to the meeting places." }

                }

                Column {
                    id: chapter7
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "7"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + units.gu(8) * 8 }

                    ParagraphText { text: "There were several different meetings in progress in a cluster of chambers off one of the side tunnels." }
                    ParagraphText { text: "“We’ll start off in ’ere,” said Whiskas, beckoning them into one of the chambers. “It do be the Meeting for the Advancement of National Integration into the Alien Culture. MANIACs they calls theyselves. Oi thinks they be nutters. They bain’t be integrating Oi.”" }
                    ParagraphText { text: "The room bore a remarkable resemblance to the Snake in the Grass, except that the tables and stools, instead of being of angular moulded plastic, looked as if they were made from giant toadstools. Shorty automatically sat down at the nearest table. The stool and table collapsed mushily beneath him." }
                    ParagraphText { text: "Whiskas helped him up. “Oi were about to warn you about they. They bain’t be for sittin’ on. They do only be for show. Oi told you they were all nutters. This do be the most uncomfortable room under the earth.” Shorty looked around and realised that the MANIACs were all squatting a few millimetres above the stools, holding their jars just clear of the table-tops. “Oi brought you all some real aliens, like!” Whiskas announced to the MANIACs. “Do you want to be comm’ an’ lookin’ at ’em?”" }
                    ParagraphText { text: "The squatting natives moved stiffly away from their tables and straightened themselves painfully. There was a slow chorus of ’Oo-ar!’ as they caught sight of Cindy. The Kim, which hadn’t been fully inflated so that it was easier to carry, didn’t produce the same reaction. The aliens (Shorty &amp; Co.) were offered jugs of ParaVin - or at least, a fluid that they called ParaVin. Shorty took a grateful swig - then dropped the jug and ran out of the room clutching his mouth. Cindy noticed and said thank you, but she wasn’t thirsty. Muscles asked for another as he was thirsty and the first one had hardly wet the sides." }
                    ParagraphText { text: "The MANIACs were very keen to learn about life in Enoch, and listened avidly as Cindy told them about all the wonderful things they had - like nail polish in 27 different colours; and wall-to-wall carpets (the carpets are actually quite small, but they follow you from wall to wall as you move); and soap operas that you can watch at any time of the day and that reminded her, she had to get back by next friday because they were going to start another rerun of Pallace; and pre-packed meals; and shopping on saturday mornings. Muscles told them about the excitement of life as a bed-tester, and sorry, he couldn’t think of anything else. And when Shorty came back, he answered questions on the things he knew best - fuzbots, fines and body banks. By the time OZ10 had chipped in with some of his best ’life in Enoch’ jokes, the MANIACs had called an emergency general meeting and unanimously decided to change the name to the Meeting for the Advancement of National Independence in the Alien Culture. " }
                    ParagraphText { text: "Whiskas led them quickly away, the new-style MANIACs were having a mass sit-on to destroy the furniture." }
                    ParagraphText { text: "It took them past the next chamber. “Oi bain’t goin’ in there. Oi values moy ears too much,” he said. “That do be the Meeting for the Advancement of Government by Geriatric, Intransigent Egotists. They MAGGIEs don’t never stop talking. Mind, they bain’t be no-one as listens to they, not even theyselves.”" }
                    ParagraphText { text: "“This do be where Oi usually comes,” Whiskas pointed out another entrance." }
                    ParagraphText { text: "“What’s your meeting called?” asked Shorty." }
                    ParagraphText { text: "“Ah, well! We’ve been workin’ on a name these last ten years, but ’avent decided yet. Thing do be, they bain’t be anythin’ that we wants to advance, ’cept boozin’ that is, an’ if we called it the Meeting for the Advancement of Drinking, our wives would be mad if we joined it. Oi suppose we’d be MAD too, wouldn’t we! Hah, hah!”" }
                    ParagraphText { text: "They entered a large chamber packed with Edians milling around with large jugs of foaming drink clutched in their forepaws, their foam-flecked snouts alternately dipping into their jugs and quivering in the air as they roared with laughter. On a raised platform at the back of the hall, an Edian in a funny hat was telling jokes." }
                    ParagraphText { text: "“..and did you hear about the alien who wanted to take up water-skiing, but couldn’t find a sloping lake? Hey, what do aliens call great big robots with razor-sharp claws? - Sir.” " }
                    ParagraphText { text: "“Come with Oi. Oi’ll get us some drinks.” Whiskas reached into his shoulder bag and took out a handful of diamonds." }
                    ParagraphText { text: "Diamonds! Shorty couldn’t believe his eyes. “What do you use those for?” he asked, scarcely able to speak." }
                    ParagraphText { text: "“These? Oh, they do be drinkin’ tokens. They bain’t worth nothin’. When you gets a drink, you puts one o’ these in the bucket by the bar. When the bucket’s full, the meetin’s closed. Mind, we ’aven’t ’ad to close since old ’Airy thought to put an ’ole in the bottom o’ the bucket! Hah, hah! Oi don’t roightly know why we still do it. Abit, Oi do suppose." }

                }

                Column {
                    id: chapter8
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "8"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + units.gu(8) * 9 }

                    ParagraphText { text: "Shorty spent the next few hours in a happy haze. He took up a station by the bucket, and caught the diamonds as they fell through. No-one seemed to mind. No-one paid much attention to him at all, in fact. Cindy soon gathered a circle of admirers, and so did the Kim, once Muscles had reinflated her properly. Word soon spread about OZ10’s prowess and it was swept onto the stage, to the relief of the resident comic who had been telling jokes ever since the meeting opened - which was nearly seventeen thursdays ago - and had repeated himself so much that even he didn’t find his jokes funny anymore." }
                    ParagraphText { text: "When Shorty’s pockets were full - and it didn’t take long with that collection of boozers - he started to pile the diamond tokens into the rucksacks that Muscles was carrying. He could have stayed for days and collected wheelbarrow loads full of them - there were several wheelbarrows against the wall, for taking members home after meetings and no-one would have noticed, or minded, if he had borrowed one or two. OZ10 had captivated his audience. His jokes were as awful as ever, but the Edians loved awful jokes. His timing and accents were abominable, but these jokaholics lapped it all up and roared for more." }
                    ParagraphText { text: "Shorty noted all this, but the more diamonds he took, the more nervous he felt. For all his bad intentions, he was a petty crook at heart, and didn’t have the stomach for ’the big job’. (He was also a bit short on the brains, didn’t have that much gall, tended to bottom out too soon, didn’t like to elbow his way into things that were afoot, and although he had an eye for the main chance, he also had a nose for trouble and would always back out if he thought there was going to be a bust-up). So, after a while, his nerve failed him, and he decided it was time to go. Cindy, who was worried about missing the Pallace repeat, was also ready to go, and Muscles would always do what he was told. Shorty wondered how he was going to get OZ10 off the stage, when he realised that it was actually the best place for it. The droid had found its audience. It was a very happy happibot. Besides, as long as it stood there arf-arfing through its terrible stories, Shorty’s get-away was assured." }
                    ParagraphText { text: "The three humans (and the Kim) eased their way to the exit, stepping over the many Edians who were by then rolling on the floor clutching themselves weakly. At the door, Cindy turned to wave goodbye to OZ10 and to Whiskas but neither they nor anyone else noticed." }
                }
                Column {
                    id: chapter9
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width
                    spacing: units.gu(1)

                    NovellaListItem { chapterNumber: "9"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + units.gu(8) * 10 }

                    ParagraphText { text: "“Right, nearly home and dry!” Shorty announced as they walked down towards the main corridor." }
                    ParagraphText { text: "“But won’t we still be in trouble with the fuzbots when we get back to the City?” asked Cindy." }
                    ParagraphText { text: "“Don’t worry about that, my dear,” replied Shorty, in genial mood. “The first thing we do is flog this little lot at the jewellers’ then we can pay our fines out of the loose change. There’s a fortune in diamonds in that rucksack.” He decided to keep quiet about the ones in his pockets. Those were not for sharing." }
                    ParagraphText { text: "“Duh, Mr. Shorty? Which way’s the City?” Muscles had reached the main tunnel and was trying to get his bearings." }
                    ParagraphText { text: "“It’s obvious isn’t it?” asked Shorty. “Those flattened fighterbots should be in sight.”" }
                    ParagraphText { text: "“Well I can’t see no fighterbots nowhere. I don’t fink this is the same tunnel either. Look. My head reaches the top. It didn’t before, and I haven’t grown since we came down here.” Muscles was puzzled. So was Shorty. This was not the same tunnel. There must have been more than one way out of Whiskas clubroom. Curses! So where were they?" }
                    ParagraphText { text: "“Shall I toss the Kim again, Mr. Shorty?\", asked Muscles." }
                    ParagraphText { text: "“Now what good is that going to do, you great moron?” Shorty’s good humour had evaporated rapidly, and he was now back to his usual ratty self." }
                    ParagraphText { text: "“Why not give it a spin? It worked last time, didn’t it,” said Cindy. “Or do you think that we ought to go back into Mr. Whiskas meeting and try and find the right way out?”" }
                    ParagraphText { text: "“Give it a spin.” muttered Shorty. The alternative was worse. The Kim fell face down, bounced and settled on its back." }
                    ParagraphText { text: "“Face up. That means we go left, doesn’t it?” asked Cindy." }
                    ParagraphText { text: "“No, right. Don’t you remember what we agreed? Bottoms up means nothing left, so this must be right. Right?” Shorty was adamant. " }
                    ParagraphText { text: "“Got it,” said Muscles with a smile. " }
                    ParagraphText { text: "“Good, we’re agreed then. Let’s go.” Shorty started down the tunnel, but Muscles hadn’t moved. “Duh, no, no, Mr. Shorty. I just got that joke what your happibot was telling us. You know, the one about the green bottles. Huh, huh! That was funny that was. Huh, huh!”" }
                    ParagraphText { text: "“Oh come on!” Shorty fumed and marched off by himself. Behind him, Cindy was still working things out. “Bottoms up - nothing left. Nothing left means right. So bottoms up right. That means face up is left… Mr. Shorty,” she called after him. “you’re going the wrong way. Come, Peregrine.”" }
                    ParagraphText { text: "Shorty stopped and turned and watched them walking away. What was happening to HIS expedition? They should be following him! He would wait. They knew they couldn’t cope without him, or did they? There was a very purposeful swing to Cindy’s stride, and Muscles was following as if on a lead - and the two of them were getting further away every minute. " }
                    ParagraphText { text: "“Hang on,” he cried, “I’m coming!”" }
                    ParagraphText { text: "Cindy really did have very long legs - almost as long as Muldoon’s twin treetrunks, though considerably more shapely - and Shorty had very short ones. As Cindy was determined to get back in time for the first episode of Pallace, Shorty had to run to keep up. He didn’t know how many kilometres he had run before she finally succumbed to his panted pleadings and stopped for a break." }
                    ParagraphText { text: "He collapsed into a crumpled heap, and kneaded his agonised leg muscles. They were soft and quivering, but with painful knots in them, so that they felt like two socksful of lumpy custard." }
                    ParagraphText { text: "“Duh, shall we have something to eat, Cindy?” asked Muscles, who had a vague idea that some of the weight on his back was food." }
                    ParagraphText { text: "“Yes, I suppose so. But let’s be quick. It must be nearly friday already…” she said, with a worried frown." }
                    ParagraphText { text: "“But Cindy,” Shorty panted, “it’s only tuesday - wednesday at the latest…”" }
                    ParagraphText { text: "“No. Mr. Whiskas was very sure it was thursday, and so were his friends - I asked them specially.”" }
                    ParagraphText { text: "“That’s because they had their meetings on thursdays and they liked their meetings, so…" }
                    ParagraphText { text: "“There you are then. They’d make sure they got the day right wouldn’t they! Now, I’ll hear no more about it. We’ll have some food and hurry on.” Cindy began to rummage in the rucksacks. She rummaged a long while. So much so, that in the end even Shorty came over to see what she was doing. There were tins and packets of food, pots and pans, a full range of kitchen tools and cutlery, a portable two-burner md grill stove, and even an electric kettle with attached hand-dynamo in the heap beside her, but she was still murmuring “I can’t find it. It’s no good. I can’t find it anywhere.”" }
                    ParagraphText { text: "“What are you looking for?” asked Shorty." }
                    ParagraphText { text: "Cindy looked at him pityingly. “Can’t you tell? I’m trying to cook us supper, but I can’t find the plate-meals or the microwave anywhere. How did that OZ10 manage?”" }
                    ParagraphText { text: "Shorty took charge again, and burnt them soup and beans for supper. As they were hungry, they ate, even though the food tasted as bad as it smelled. And the smells were awful. They filled the tunnel and drifted into every nook and cranny - where they were picked up by ever-questing scent glands…" }
                    ParagraphText { text: "“Duh, that was horrible, Mr. Shorty,” said Muscles. Shorty had to agree." }
                    ParagraphText { text: "“Here, what’s that funny noise?” asked Cindy." }
                    ParagraphText { text: "“Duh, sorry, Cind. That’s my tummy, answered Muscles." }
                    ParagraphText { text: "“No, not that, Peregrine! There’s a sort of tapping, but ever-so regular. You know, like soldiers in a parade, but not really heavy enough for that.”" }
                    ParagraphText { text: "They listened intently. The Muldoon digestive system rumbled its protests about burnt beans and scorched soup, and as its rumblings died away they all heard the noise that Cindy had picked up. The tramping of millions of tiny feet, coming ever closer down the tunnel towards them! And now they could see them - army ants! A solid mass of them, advancing like a renegade executive carpet. And more from the opposite direction, closing in on them in a pincer movement (or rather a two million pincers movement)! Closer and closer they came, pressing on relentlessly." }
                    ParagraphText { text: "“EEK!!” screamed Cindy. Twelve million feet stamped to a well-drilled halt." }
                    ParagraphText { text: "“Streuth! How did she do that?” exclaimed Shorty." }
                    ParagraphText { text: "Sonar Control. As luck would have it, Cindy’s voice hit the perfect pitch for controlling them." }
                    ParagraphText { text: "“FLEEK!!” Cindy screamed again. Twelve million tiny feet stamped forward again in perfect unison." }
                    ParagraphText { text: "“Do it again!” cried Shorty." }
                    ParagraphText { text: "“I can’t. I’ve hurt my throat,” whispered Cindy. " }
                    ParagraphText { text: "“Duh, there’s a garden over there, Mr. Shorty.” Muscles pointed to a small opening on the opposite side - and it looked as if it was ant-free. The three dived for its cover, then turned to watch the ant attack on their camp. " }
                    ParagraphText { text: "“The rucksacks!” hissed Shorty. “You forgot the rucksacks, Muscles!” “Dud, sorry, Mr. Shorty. ’Ere, we forgot the Kim as well.”" }
                    ParagraphText { text: "The ants swept over the piles of food, their rucksacks, the cooking equipment. As they swept on, they devoured everything or reduced it to microscopic rubble. The air above them shimmered with diamond dust. " }
                    ParagraphText { text: "The two armies met at the Kim. The brilliant black blankets of barbarous battling bugs surged up over it then paused. Thousands of fierce tiny pincers poised in mid-air, then at an unseen signal, they sank simultaneously into the model. " }
                    ParagraphText { text: "It is a well-known fact that ants inject formic acid when they bite. Rather less well-known is the fact that formic acid and Propyle Reoxychloride Ethane Tetra Tricholene Yaminine pollynet (or pretty polly - the material of which the Kim was made) react explosively in air impregnated with baked bean fumes. " }
                    ParagraphText { text: "The blast threw the three adventurers back deep into the garden. Tubers and loose earth rained down on top of them. But they were the lucky ones. When they clambered free and looked out again, they saw that the tunnel had acquired a new coat of glossy black paint. Apart from that, it was completely empty. " }
                    ParagraphText { text: "“My diamonds!” cried Shorty. " }
                    ParagraphText { text: "“My make-up bag!” wailed Cindy. " }
                    ParagraphText { text: "“My chest expanders!” complained Muscles. " }
                    ParagraphText { text: "“Chest expanders!” Shorty exclaimed. " }
                    ParagraphText { text: "“Duh, yes. I like to keep fit, even when I am on ’oliday,” Muscles explained. " }
                    ParagraphText { text: "But it was no good weeping over lost diamonds, make-up bags or chest-expanders. And as the food had also disappeared, there was nothing to do but try to get out as quickly as possible. They set off again. " }
                    ParagraphText { text: "On and on they walked, down tunnels that all looked the same while the hours turned to days…" }
                    ParagraphText { text: "“We’ll never get out of here in time,” wailed Cindy. “I’ll miss my favourite programme." }
                    ParagraphText { text: "Don’t worry,” said Shorty, who had enough to cope with without her crying as well. “It’s still only thursday.”" }
                    ParagraphText { text: "I low can it be? We’ve been here for ages!” she cried." }
                    ParagraphText { text: "Shorty explained it to her. “Look. How many gardens have we passed in these tunnels? Lots, haven’t we?” she nodded dumbly. “And were any Edians working in them?” She shook her head. “No,” he went on. “That’s because it’s thursday and they are all at their meetings. So don’t worry. You’ll get back.”" }
                    ParagraphText { text: "“Duh, he’s right, Cind. We’ll be all right.” Muscles consoled her." }
                    ParagraphText { text: "They plodded on, kilometre after weary kilometre they walked until they were almost asleep on their feet. On and on they struggled." }
                    ParagraphText { text: "When at last, when the flickering flame of hope had all but died, Cindy stopped at a cross-tunnels and wrinkled her nose. “Poo! I recognize that smell, don’t you?” She sniffed daintily, turning her head to sample the air. “It’s coming from that one.” She pointed to a dank and dark passage leading off to the left." }
                    ParagraphText { text: "It was narrow and twisting, sloping steadily upwards all the time. At one point water dripped steadily from the roof, forming sludgy puddles on the floor. They were forced to bend more and more as the roof got lower - or the floor got higher, as Whiskas would have put it - until they were crawling on their hands and knees." }
                    ParagraphText { text: "“This has ruined my tights.” Cindy complained, “and I’ve broken lots of nails, and my hair is a mess! Oh why did I ever let you persuade me to do this, Peregrine Muldoon?”" }
                    ParagraphText { text: "“Duh, I’m sorry. Cind. I thought it would be fun. In fact,” he added, with a rare flash of independence, “I think it was fun. Don’t you, Mr. Shorty?”" }
                    ParagraphText { text: "Shorty, who was a bit too close to Cindy’s heelless high-heels for comfort, replied tactfully. “Well, it had its moments, though it didn’t go quite as I had planned, but I think your Cindy was wonderful. You’ve got a fine lady there, Muscles. You should <i>look</i> after her.” He waited for a reaction from Cindy, and he waited for some comments about the diamonds, but nothing came. They were both too busy trudging forwards in the small, smelly tunnel. Shorty smiled quietly to himself. He wis going to get out of this with all his diamonds after all." }
                    ParagraphText { text: "“Oh heck!” cried Cindy suddenly. “I’ve run out of tunnel.” " }
                    ParagraphText { text: "“What?”" }
                    ParagraphText { text: "“Oo, it’s all dark and nasty up here. I can’t see anything, but there’s no more tunnel. Hang on, the roof’s different. It’s all hard and flat. You know, like a concrete floor. not like a tunnel roof at all. Poo! It isn’t half smelly. I think it’s coming in through a crack here.”" }
                    ParagraphText { text: "“We must be under a floor in the UnderCity!” said Shorty happily. “We’ve made it. Can you push the top off, Cindy?”" }
                    ParagraphText { text: "She tried, but just wasn’t strong enough." }
                    ParagraphText { text: "“’Ere, let me try,” Muscles offered from his place at the rear." }
                    ParagraphText { text: "“Hold it,” said Shorty, as he felt a large hand on his leg and realised that Muscles was going to have to climb over him to get to the tunnel’s end. “Let me have a go first.”" }
                    ParagraphText { text: "Cindy squashed herself against the side of the narrow tunnel so that Shorty could struggle past. It was a tight squeeze at a couple of points as Cindy was a big girl, but Shorty made it. He got his back to the stone flag that covered the end and pushed with all his might. The stone lifted and fell backwards with a reverberating clang. They had made it! Shorty even knew where he was - about a hundred metres from the entrance to the Snake in the Grass." }

                }

                Column {
                        id: chapter10
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "10"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }

                        ParagraphText { text: "The fuzbots knew where he was as well. They must have picked up their scrabblings in the tunnels and come to investigate, for as Shorty emerged from the tunnel, a metallic hand felt his collar and an electronic voice said, “Well now, if it isn’t our old mate Shorty Witherspoon. Now then, for various assorted crimes including grand larceny, fraud impersonating the Kim, being in charge of an uncontrolled happibot, multiple roboticide, leaving Enoch without a permit, attempting to enter Enoch without a permit and being a threat to public health, you have been fined a total of 45367 credits. If you’ll just accompany us down to the body bank, the city of Enoch Health Authority will recover some of that for us.”" }
                        ParagraphText { text: "“Just a minute…” begged Shorty." }
                        ParagraphText { text: "“Are you resisting arrest?” asked the fuzbot." }
                        ParagraphText { text: "“No, no. Of course not,” said Shorty hurriedly. He’d been through that one before with the forest fighters, and was past ducking and weaving. " }
                        ParagraphText { text: "“It’s just that if we go to the body bank, you won’t get very much, will you?” " }
                        ParagraphText { text: "The fuzbots had to agree. Not only was there not much of him, what there was of him was so shopsoiled it would hardly fetch much. " }
                        ParagraphText { text: "“But if you take me to a jewellers, I can pay the fine - in full!”" }
                        ParagraphText { text: "They weren’t convinced, but as there was a jewellers on the way to the hospital, they decided there was nothing to lose. " }
                        ParagraphText { text: "“You’re not thinking of robbing it while we’re there are you?” asked one of the fuzbots. “You’d get fined for that as well.”" }
                        ParagraphText { text: "It was an interesting idea, especially as the fine for robbing the shop could be less than the value of the haul, given a good lawyer and a sympathetic judge. The profit on the deal might even be enough to pay the lawyer’s fees." }
                        ParagraphText { text: "Shorty was marched off by three very thoughtful fuzbots." }
                        ParagraphText { text: "“Have they gone, Cind?” whispered Muscles, when all was quiet again." }
                        ParagraphText { text: "Cindy emerged into the grey light of the UnderCity. It was empty and barren, the only brightness coming flom a council clock on a distant wall. She could just read the time and date through its grimy face. “Peregrine!” she cried in excitement. “It’s friday, and it’s only half past six. If we hurry, we’ll be in time for Pallace!”" }
                        ParagraphText { text: "At the jewellers, Shorty discovered a hole in his top left pocket; a hole and two small diamonds in his top right pocket; a hole in his bottom left pocket and - oh, heaven helps a poor sinner!” - a handful of diamonds in the bottom right." }
                        ParagraphText { text: "The jeweller sorted through them carefully, sniffing disdainfully - not so much at the quality of the stones, as at the pong that surrounded Shorty. He examined and weighed each stone, tapping at a calculator as each was assessed. Finally he lifted his head and reached out a hand. " }
                        ParagraphText { text: "“Credits card if you please, Sir.” The last word was squeezed out dutifully. “I am marking up 45375 credits and seventeen cents.” He processed the card and gave it back, wiping his hand on a tissue afterwards. " }
                        ParagraphText { text: "“Thank you, Mr. Witherspoon,” said a fuzbot, taking the card and slotting it into his deductor and collecting the fine of 45367 credits. “Always a pleasure to do business with you, sir. Good-day.” " }
                        ParagraphText { text: "Shorty had been rich for almost three seconds. He was now worth eight credits and seventeen cents - just as he had been a week before. Ah, but so much richer in experience! " }

                    }
                Column {
                        id: chapter11
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width
                        spacing: units.gu(1)

                        NovellaListItem { chapterNumber: "Credits"; flickNext: chapter0.height + chapter1.height + chapter2.height + chapter3.height + chapter4.height + chapter5.height + chapter6.height + chapter7.height + chapter8.height + chapter9.height + chapter10.height + units.gu(8) * 11 }

                        ParagraphText { text: "© 1987 Peter McBride"; font.bold: true}
                        ParagraphText { text: "<b>OCR’d in by</b> <a href='mailto:jeremyalansmith@netscapeonline.co.uk'>J.Smith</a>"; linkColor: darkColor; onLinkActivated: Qt.openUrlExternally(link)}
                        ParagraphText { text: "using <b>Textbridge,</b> and <b>HTMLised.</b>" }
                        ParagraphText { text: "<b>Proofread by</b> Gunther Schmidl." }

                    }

            } //MainColumn

        } //flickable

    } //SrollView

}
