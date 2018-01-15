import QtQuick 2.4
import Ubuntu.Components 1.3
//import Ubuntu.Components.ListItems 1.3 as ListItemm
import "../components"

Page {
    id: gPainAdrianMole
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("The Growing Pains of Adrian Mole")
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
                    source: "../../../../graphics/am-gp00.jpg"
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
                LevelText { text: i18n.tr("Welcome to the second computer game to feature the contents of my diary - is there no such thing as privacy? Such is the price of fame I suppose.") }
                LevelText { text: i18n.tr("The aim of the game is to make decisions for me through multiple choice questions. Now I am more mature, fife is even more complicated and I have even more decisions to make, so there is a lot of text in there and some very nice illustrations too. Some may think it´s a game; I prefer to think of it as a sort of quest for the Meaning of Life - not easy to find in Laurel Close, Leicester!") }
                LevelText { text: i18n.tr("So good luck being popular as well as an intellectual is not so easy. I should know, I have spent all my life trying!") }
                LevelText { text: i18n.tr("Adrian Mole") }
			
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
                LevelText { text: i18n.tr("Playing this game will take you through eighteen months in the life of Adrian Mole. When you have loaded the first part of the game, following the instructions below (under the heading Using the Program), you will see that as you progress through the days in Adrian's diary you will be asked to make choices for Adrian. Press a number from 1 to 3 to choose one of the options suggested. Pressing key number 4 will display the command and help system menu. This gives a list of the additional features in the game and full instructions on how to use them.") }
				LevelText { text: i18n.tr("Whether  you  have  read  Sue  Townsend's  best-selling  books  or  not.  you  should  have  no  trouble  guiding  Adrian  through  the  trials  and  tribulations  of  school  and  family  life!  Knowing  the  books  won't  necessarily  give  you  an  advantage: in  the  game, familiar  scenes  may  well  have  a  new  twist.  There  are  a  number  of  random  elements  included  so  each  game  may  be  different  Adrian's  view  of  the  world  is  unique  and  entertaining  and  you  help  make  decisions  about  all  aspects  of  his  life. He  is  surrounded  by  colourful  characters  and  you  will  need  to  consider  carefully  the  best  way  to  impress  them!  Your  ultimate  aim  is  to  make  Adrian  as  popular  as  possible  with  everyone  and  at  regular  points  in  the  game  your  score  will  appear  as  an  indication  of  how  well  you  are  doing. (You  could, of  course, play  it  the  other  way  and  try  to  make  Adrian  as  unpopular  as  possible!)") }
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
                LevelText { text: i18n.tr("Joan Lamb") }
                LevelText {
                    text: i18n.tr("Transport to your computer, adventure system and graphics system:")
                    color: lightColor
                }
                LevelText { text: i18n.tr("Nick Austin") }
                
            }


        }

    }
}
