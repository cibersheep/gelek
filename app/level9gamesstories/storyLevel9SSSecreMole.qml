import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: sDiaryAdrianMole
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("The Secret Diary of Adrian Mole")
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
                id: siliconCover
                width: parent.width * .7
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                aspect: UbuntuShape.Flat
                source: Image {
                    source: "../../../../graphics/am-sd00.jpg"
                }
            }
            
            StorySection {
                sectionTitle: "Introduction"
                sectionOpen: introductionText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: introductionText.visible = !introductionText.visible
                }
            }
            Column {
                id: introductionText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("I learned today that I am to be the subject of a computer game. The object of the game is to make me popular with everyone, which sounds dead brilliant. Apparently they've written an enormous programme containing 200 kilos of text, which Brainbox Henderson says is a lot. Now everyone else can have a go at coping with all the problems that beset me over an entire year of my life. It's an illustrated text game, which means you have artistic pictures to look at while you ponder about what to do next. So have a go, and see what it's like being a budding intellectual and poet who has to cope with my family, friends and the dog. Then you'll know what I have to put up with. Ha! Ha! Ha!") }
			
            }


            StorySection {
                sectionTitle: "The Game"
                sectionOpen: gameText.visible
                MouseArea {
                    anchors.fill: parent
                    onClicked: gameText.visible = !gameText.visible
                }
            }
            Column {
                id: gameText
                visible: false
                width: parent.width
                spacing: units.gu(1)
                LevelText { text: i18n.tr("Adrian is a worrier. The problems of existence hit him hard. Spots, bits of him that won't keep still, the cracks in his parents' marriage, all prey heavily on his mind. There are some consolations. A fourteen-year-old feminist, an eighty-nine-year old chain smoker and his spoilt best friend all help to lift the gloomy introspection of Mole's moods. Mole believes he is an intellectual. He is dogged by ill-health as well as by an infuriatingly ever-present pet dog, and by a catalogue of misfortunes familiar to anyone over the age of thirteen.") }
				LevelText { text: i18n.tr("The aim of the game is to make Adrian as popular as possible with everyone — family, friends, and the dog! At regular points in the game your score will appear on the screen to indicate how well you are doing. (You can aim to make Adrian as unpopular as possible and see how low a score you can achieve!)") }
				LevelText { text: i18n.tr("The results of your actions may not be immediately obvious. It won't necessarrry pay to overdo things: for example, being too neat and tidy might arouse his mother's guilt feelings.") }
				LevelText { text: i18n.tr("There are a number of random elements in the game and your course through the troubled path of adolescence may vary every time you play.") }
				LevelText { text: i18n.tr("If you have already read Sue Townsend's books The Secret Diary of Adrian Mole Aged 13 3/4 and The Growing Pains of Adrian Mole, you will find some characters you have met before and a number of familiar scenes. But, if you haven't yet read the books, you'll still be able to play the game  and knowing the books won't necessarily give you an advantage: in the game, familiar scenes may well have a new twist.") }
            }

            StorySection {
                sectionTitle: "Using the Program"
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
                LevelText { text: i18n.tr("The game consists of a number of separate programs. For some computer versions the whole game is recorded twice, once on each side of the cassette. For other computer versions the first half of the game is recorded on side 1 of the cassette and the second half on side 2. Details are given on the cassette label. Each program covers a few months of Adrian's life. When playing the game, press SHIFT (or RETURN on an Atari) to continue when the game pauses.") }
                LevelLabel { text: i18n.tr("Saving the game position")}
                LevelText { text: i18n.tr("While playing the game you can save your current position (so that you can turn the computer off, yet return later to the same stage in the game). To do this, insert a spare, blank cassette in the recorder.")}
                LevelText { text: i18n.tr("Type 4 instead of 1-3 when asked to make a decision on behalf of Adrian Mole. This will display the command and help system on the screen. Press the RECORD buttons on the recorder, type SAVE and press ENTER or RETURN. (If the program asks for a 'file name', type any short word and press ENTER or RETURN.) If the tape doesn't move press ENTER or RETURN again. When a message appears on the screen to tell you the save is completed, stop the recorder.") }
                LevelLabel { text: i18n.tr("Loading a saved game position")}
                LevelText { text: i18n.tr("To load a saved game position you must be playing the same program of the game that you were playing when you saved the game. (ie. that program must be loaded). Remove the game cassette from the recorder and replace it with the one used to save the position earlier.") }
                LevelText { text: i18n.tr("Type 4 instead of 1-3 when asked to make a decision for Adrian to display the command and help system on the screen. Type LOAD and press ENTER or RETURN. (If the program asks for a 'file name', type whatever name you used to save the position and press ENTER or RETURN.) Rewind the cassette on which the position was saved and press the PLAY button on the recorder. Press ENTER or RETURN.")}
                LevelText { text: i18n.tr("When a message appears on the screen to tell you the load is completed, stop the recorder. The saved game position will reappear on the screen.")}
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
                    text: i18n.tr("Game Design:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Programmed by:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Pete Austin") }
                LevelText {
                    text: i18n.tr("Pictures:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("James Horsier") }
                LevelText {
                    text: i18n.tr("Transport to your computer, adventure system and graphics system:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Mike & Nick Austin") }
                
            }


        }

    }
}
