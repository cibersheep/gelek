import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: singleArchers
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("The Archers")
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
                id: emeraldCover
                width: parent.width * .7
                height: width * 1.28
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/l9str-ta.jpg"
                }
            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    id: emeraldHistoryTitle
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Introduction")
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
                LevelText { text: i18n.tr("As a trainee scriptwriter on the Archers radio programme, you must make plot decisions for four major characters: Jack Woolley, Elizabeth Archer, Eddie Grundy and Nelson Gabriel. But beware, the plot has its own momentum, and events can easily get out of hand.") }
                LevelText { text: i18n.tr("When you have loaded the first part of the game, following the instructions below (under the heading Using the Program) you will see the beginnings of a plot for the first character to be played. As you progress through the story you will be asked to make editorial decisions. Press a number from 1-3 to choose one of the options suggested. Pressing key number 4 will display the command and help system menu. This gives a list of additional features in the game and full instructions on how to use them.") }

            }

            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("The Game")
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
                LevelText { text: i18n.tr("The aim of the game is to keep up the audience figures and hope for a record number of listeners. At regular points in the game you will be shown the audience figures to indiciate how well you are doing. Memos from the Controller Radio 4 will also help alert you to possibly dubious plot lines!") }
                LevelText { text: i18n.tr("There are a number of random elements in the game and the same plot lines may not appear every time you play.") }
                LevelText { text: i18n.tr("If you are already an Archers fan, you will be familiar with the population of Ambridge. Others will find biographical details of the main characters below and overleaf.") }

            }
           Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Game Instructions")
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
                LevelLabel { text: i18n.tr("Saving the game position") }
                LevelText { text: i18n.tr("While playing the game you can save your current position (so that you can turn the computer off, yet return later to the same stage in the game). To do this, insert a spare, blank cassette in the recorder.") }
                LevelText { text: i18n.tr("Type 4 instead of 1-3 when asked to make a decision. This will display the command and help system on the screen. Type SAVE and press ENTER or ↵. Type any short word and press ENTER or SAVE.)") }
                LevelLabel { text: i18n.tr("Loading a saved game position") }
                LevelText { text: i18n.tr("To load a saved game position you must be playing the same program of the game that you were playing when you saved the game (ie. that program must be loaded).") }
                LevelText { text: i18n.tr("Type 4 instead of 1-3 when asked to make a decision to display the command and help system on the screen. Type LOAD and press ENTER or ↵. Tap on a previouly saved game from the list to load the game.") }

            }
            Row {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    width: parent.width - units.gu(2)
                    text: i18n.tr("Characters for Scriptwriters")
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

                LevelLabel { text: i18n.tr("Notes on Main Characters for Scriptwriters"); font.bold: true }
                LevelLabel { text: i18n.tr("Racheladamson") }
                LevelText { text: i18n.tr("Daughter of the vicar, Richard Adamson and his wife, Dorothy. She is considered to be fairly sensible, but possibly just beginning to blossom in terms of looks.") }

                LevelLabel { text: i18n.tr("Brian Aldridge") }
                LevelText { text: i18n.tr("Married to Jennifer. For the last year or so he has been having an afair with Caroline Bone and is considered to be a capitalist, unthinking, male chauvinist. He owns and runs Home Farm and is very rich.") }

                LevelLabel { text: i18n.tr("Marjorie Antrobus") }
                LevelText { text: i18n.tr("Still carries around with her memories of her days in the Raj--when her husband cut such a dashing figure in his khaki shorts. Mrs Antrobus is now a widow but lives happily with her Afghan hounds at Nightingale Farm. The Over Sixties are perpetually afraid that she might offer to come and speak to them again about Afghans at one of their meetings.") }

                LevelLabel { text: i18n.tr("Dan Archer") }
                LevelText { text: i18n.tr("Sadly, passed away recently.") }

                LevelLabel { text: i18n.tr("David Archer") }
                LevelText { text: i18n.tr("Brother of Elizabeth and Shula, he is very hard-working. Recently engaged to Sophie Barlow. He is kind to Elizabeth but gets fed up with her selfishness.") }

                LevelLabel { text: i18n.tr("Elizabeth Archer") }
                LevelText { text: i18n.tr("Youngest child of Phil and Jill and rather unhappy. She is madly in love with Tim Beecham, who is not interested, and has been relentlessly pursued in the past by Nigel Pargetter. She enjoys a hectic social life–going to parties, pubs and wine bars whenever the opportunity arises, although she considers Nelson's wine bar rather boring. She is also very good at spending money–and borrowing it.") }

                LevelLabel { text: i18n.tr("Jill Archer") }
                LevelText { text: i18n.tr("Elizabeth's mother. She is warm and understanding, but finds her daughter a handful.") }

                LevelLabel { text: i18n.tr("Pat Archer") }
                LevelText { text: i18n.tr("Married to Tony and lives at Bridge Farm. Became hooked on feminism several years ago and has read 'The Guardian' ever since. Attends evening classes with a certain political slant at the Tech.") }

                LevelLabel { text: i18n.tr("Peggy Archer") }
                LevelText { text: i18n.tr("Elizabeth's aunt. She was married to Jack Archer who died of an alcohol-related illness. She owns The Bull in Ambridge and keeps an eye on the Bellamy estate, as her daughter, Lilian, the owner, is away in Guernsey, and that means keeping an eye on the Grundys. In the early seventies Jack Woolley proposed to her but she turned him down. She lives in Blossom Hill Cottage with her cat, Sammy.") }

                LevelLabel { text: i18n.tr("Phil Archer") }
                LevelText { text: i18n.tr("Elizabeth's long-suffering father. He is a successful and hard-working farmer at Brookfield Farm who stands no nonsense except, perhaps, where Elizabeth is concerned.") }

                LevelLabel { text: i18n.tr("Christine Barford") }
                LevelText { text: i18n.tr("Elizabeth Archer's aunt. She works at the Riding Stables and is married to George, gamekeeper at Grey Gables.") }

                LevelLabel { text: i18n.tr("Sophie Barlow") }
                LevelText { text: i18n.tr("Red-haired, muddle-headed fiancée of David Archer. She appears to be very stupid on the surface but perceives some things that others miss. She is kind, warm and adores David but she is adamantly opposed to sex belore marriage!") }

                LevelLabel { text: i18n.tr("David Barry") }
                LevelText { text: i18n.tr("Detective-sergeant with the Borsetshire Constabulary, stationed at Borchester police station. He is going out with Kathy Holland. the teacher who lives at Penny Hassett, but is generally considered to be rather unattractive, with a tendency to wear flared trousers! He has recently failed his inspector's exams.") }

                LevelLabel { text: i18n.tr("Tim Beecham") }
                LevelText { text: i18n.tr("Sloane Ranger, but of a meaner variety than Nigel Pargetter. Elizabeth is in love with him, partly, one  suspects, because he pays her little notice.In fact he is quite nasty to her and once spray painted 'Elizabeth Archer wears thermal vests and ...' on a wall in Borchester. He has also nick-named her 'The Lizard'.") }

                LevelLabel { text: i18n.tr("Lilian Bellamy") }
                LevelText { text: i18n.tr("Younger daughter of Jack and Peggy Archer. She inherited the Bellamy estate from her husband Ralph who died of a heart attack. Her tenants include her brother, Tony Archer, and the Grundys. She lives in Guernsey with her son James.") }

                LevelLabel { text: i18n.tr("Caroline Bone") }
                LevelText { text: i18n.tr("Belongs to the ancient Bohun family of Darrington Manor. She is distantly related to the Duke of Westminster. After Cheltenham College she did a hotel management and cookery course in Lausanne. In 1980 she moved to Grey Gables as Jack Woolley's personal assistant and has since introduced nouvelle cuisine to the restaurant.") }

                LevelLabel { text: i18n.tr("Susan Carter (née Horobin)") }
                LevelText { text: i18n.tr("Married to Neil Carter, who works part-time at Brookfield, part-time on a pig unit with Bill Insley, and part-time on his battery hens. She is quiet and sensitive and quite different from the rest of the Horobin family. She once won a pig, which she called Pinky, at the Ambridge fete.") }

                LevelLabel { text: i18n.tr("Magnus Fisher") }
                LevelText { text: i18n.tr("Friend of Elizabeth Archer. Was keen on her until he found himself a fiancée.") }

                LevelLabel { text: i18n.tr("Pru Forrest") }
                LevelText { text: i18n.tr("A shy, retiring woman who spends all her time making chutney.") }

                LevelLabel { text: i18n.tr("Tom Forrest") }
                LevelText { text: i18n.tr("Married to Pru, Tom has been gamekeeper at Grey Gables time out of mind (as they say in Borsetshire). He is Elizabeth Archer's great-uncle. Once he shot and killed Bob Larkin and was acquitted on a manslaughter charge. Otherwise he has not had an eventful life.") }

                LevelLabel { text: i18n.tr("Snatch Foster") }
                LevelText { text: i18n.tr("Friend of Eddie Grundy and fellow frequenter of the Cat and Fiddle. He has a brutish nature and an unpleasant appearance.") }

                LevelLabel { text: i18n.tr("Nelson Gabriel") }
                LevelText { text: i18n.tr("Runs the wine bar in Borchester called Nelson's. He takes pains to conceal his dubious past, but in his late fifties would like to think of himsel as a suave, sophisticated swinger–au fait with everything that's tasteful and of quality, and still attractive to women. He buys and sells antiques and is not averse to making a fat profit out of his friends-but underneath it all he has a heart of gold.") }

                LevelLabel { text: i18n.tr("Walter Gabriel") }
                LevelText { text: i18n.tr("At 89 he is the oldest inhabitant of Ambridge village. He used to be a wicked rogue, but is now a lovable old man, with a twinkle in his eye, living alone in his cottage and seeking entertainment from the Over Sixties Club. His fondest wish is that Nelson should settle down and have some children.") }

                LevelLabel { text: i18n.tr("Alf Grundy") }
                LevelText { text: i18n.tr("Eddie's brother. He has been in Gloucestershire prison for many years and has a dark past concerned with scrap-metal dealing.") }

                LevelLabel { text: i18n.tr("Clarrie Grundy") }
                LevelText { text: i18n.tr("Eddie's wife, she is long-suffering and good-natured. She is a good wife and mother but no great beauty or intellectual by all accounts. She would love to have a nicer home than Grange Farm but is resigned to her lot and regards herself as unbelievably lucky to be married to a Country and Western singing star.") }

                LevelLabel { text: i18n.tr("Eddie Grundy") }
                LevelText { text: i18n.tr("Son of a poor tenant farmer, Joe Grundy, Eddie is married to Clarrie and has two young sons, William and Edward. Eddie is 35 years old and still aspires to be a famous Country and Western singer. His other hobbies include drinking at the Cat and Fiddle, keeping ferrets and making the occasional friendly pass at any female who happens to be around. ALL in all, though, he is loyal to Clarrie, and is hard-working in his attempt to make something out of the rammshackle Grange Farm.") }

                LevelLabel { text: i18n.tr("Joe Grundy") }
                LevelText { text: i18n.tr("Miserable, pessimistic and lazy, he constantly complains of Farmers' Lung when there is any work to be done.") }

                LevelLabel { text: i18n.tr("Shula Hebden (née Archer)") }
                LevelText { text: i18n.tr("Elizabeth's sister, she is married to Mark, a solicitor, and lives in a flat in Borchester. She works at an Estate Agent's and is very sensible nowadays.") }

                LevelLabel { text: i18n.tr("Higgs") }
                LevelText { text: i18n.tr("The Grey Gables handyman and gardener, he lives alone in a flat over the coach house. He is surly and unloved (except by his friend, the widow woman from Hollerton) but he is wonderful when it comes to growing Chrysanthemums, including the famous 'Woolley's Wonder' that has triumphed many times at the Borchester Show.") }

                LevelLabel { text: i18n.tr("Clive Horobin") }
                LevelText { text: i18n.tr("About 13 years of age and a member of the huge Horobin family who live at No. 6 The Green (the council estate). The Horobins are all rogues and he is no exception–he will do almost anything for an extra bit of pocket-money.") }

                LevelLabel { text: i18n.tr("Jean-Paul") }
                LevelText { text: i18n.tr("The temperamental chef at Grey Gables who is famous for his little French tartlets.") }

                LevelLabel { text: i18n.tr("Martin Lambert") }
                LevelText { text: i18n.tr("Ambridge's local vet. He used to go out with Shula Archer but she told him to keep his hands off. He has a rather flat personality.") }

                LevelLabel { text: i18n.tr("Nigel Pargetier") }
                LevelText { text: i18n.tr("Borchester's lovable Sloane Ranger. He used to go out with Shula but is now madly in love with Elizabeth Archer. He proposed to her once but she declined his hand, and has been spurning him ever since. He tries very hard to stay employed but has had a succession of unusual jobs–including a summer as 'Mr Snowy', selling ice-cream.") }

                LevelLabel { text: i18n.tr("Mrs Perkins") }
                LevelText { text: i18n.tr("Peggy Archer's mother. She lives in an old folks bungalow in Manorfield Close. She is an occupational pessimist and laves to exercise her nagging on poor Walter Gabriel who has been in amorous pursuit for some decades (these days more as a matter of form).") }

                LevelLabel { text: i18n.tr("Sid Perks") }
                LevelText { text: i18n.tr("Barman and licensee of The Bull. He is friendly and well-disposed to most--but has banned Eddie Grundy from the pub in the past.") }

                LevelLabel { text: i18n.tr("Trudy Porter") }
                LevelText { text: i18n.tr("A rather attractive waitress, long the apple of Higg's eye, who also bakes lovely pastries.") }

                LevelLabel { text: i18n.tr("Mrs Potter") }
                LevelText { text: i18n.tr("Lives in Manorfield Close, in one of the old people's bungalows. Despite the fact that she has to struggle around on her walking frame, she is a keen attender of the Ambridge Over Sixties Club.") }

                LevelLabel { text: i18n.tr("Roger") }
                LevelText { text: i18n.tr("Was Pat Archer's friend/lover–we were never quite sure how much they became involved. He is a lecturer at Borchester Tech.") }

                LevelLabel { text: i18n.tr("Jolene Rogers") }
                LevelText { text: i18n.tr("Otherwise known as the 'Lily of Layton Cross'. She used to sing with Eddie Grundy in his Country and Western numbers, but was always very fond of Wayne Tucson (sometimes friend, sometimes rival of Eddie's) whom she has married. She now lives on a modern estate with their baby daughter, Fallon.") }

                LevelLabel { text: i18n.tr("Rosie") }
                LevelText { text: i18n.tr("Clarrie Grundy's sister. She lives in Great Yarmouth and is married to Dennis. They have two children.") }

                LevelLabel { text: i18n.tr("Shane") }
                LevelText { text: i18n.tr("Barman and cook at Nelson's wine bar. He is glad to be gay but in rural Borsetshire this is probably very difficult.") }

                LevelLabel { text: i18n.tr("Dolly Treadgold") }
                LevelText { text: i18n.tr("Once engaged to Eddie Grundy but he broke it off. She is not the most sophisticated of women.") }

                LevelLabel { text: i18n.tr("Vera") }
                LevelText { text: i18n.tr("Joe Grundy's lady friend, a Methodist from Edgeley. Joe never quite hits it off completely with her.") }

                LevelLabel { text: i18n.tr("Martha Woooforo") }
                LevelText { text: i18n.tr("Runs the village shop for Jack Woolley and spends her time gossiping and tinkling around the country lanes on her bicycle. Her husband, Joby, a woodman, died in 1983.") }

                LevelLabel { text: i18n.tr("Hazel Woolley") }
                LevelText { text: i18n.tr("Jack Woolley's obnoxious, adopted daughter who, to Jack's disappointment, hardly ever comes to visit him. ") }

                LevelLabel { text: i18n.tr("Jack Woolley") }
                LevelText { text: i18n.tr("Bought Grey Gables Country Club in 1962. A selffmade man from Stirchley, Birmingham. he has one adopted daughter, Hazel, who 'works in films' in London and does not love him as she ought. Fortunately he has a faithful, if fat, Staffordshire bull terrier called Captain. Grey Gables is now a fine country house hotel, and the estate includes a shoot, a country park and a golf course. Jack also owns the village shop and the Borchester Echo.") }

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

                Text {
                    text: i18n.tr("Game Design:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Pete Austin") }
                Text {
                    text: i18n.tr("Programmed by:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Pete Austin") }
                Text {
                    text: i18n.tr("Pictures:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Joan Lamb") }
                Text {
                    text: i18n.tr("Transport to your computer, adventure system and graphics system:")
                    color: lightColor
                    width: parent.width
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                }
                LevelText { text: i18n.tr("Mice & Nick Austin") }



            }
        }

    }
}
