import QtQuick 2.4
import Ubuntu.Components 1.3
import "components"

Page {
    id: historyLevel9
    anchors.fill: parent
    header: GelekHeader {
        id: levelHistoryHeader
        title: i18n.tr("Level 9 Game Stories")
        flickable: levelFlickable
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
            //topMargin: levelHistoryHeader.height
            bottomMargin: units.gu(8)
        }
        
        //contentHeight: levelHistoryColumn.height + units.gu(1)



    ListModel {
           id: gameStoriesModel

           Component.onCompleted: initialize()

           function initialize() {
               gameStoriesModel.append({ category: "Single Stories", name: "Emerald Isle", link: "storyLevel9SSEmerald.qml" })
               gameStoriesModel.append({ category: "Single Stories", name: "The Archers", link: "storyLevel9SSArchers.qml" })
               gameStoriesModel.append({ category: "Single Stories", name: "Lancelot", link: "storyLevel9SSLancelot.qml" })
               gameStoriesModel.append({ category: "Single Stories", name: "Scapeghost", link: "storyLevel9SSScapeGhost.qml" })

               gameStoriesModel.append({ category: "Adrian Mole", name: "The Secret Diary of Adrian Mole, Aged 13¾", link: "storyLevel9SSSecreMole.qml" })
               gameStoriesModel.append({ category: "Adrian Mole", name: "The Growing Pains of Adrian Mole", link: "storyLevel9SSGrowingPainMole.qml" })

               gameStoriesModel.append({ category: "Jewels of Darkness", name: "Colossal Adventure", link: "storyLevel9JDColossal.qml" })
               gameStoriesModel.append({ category: "Jewels of Darkness", name: "Adventure Quest", link: "storyLevel9JDAdventure.qml" })
               gameStoriesModel.append({ category: "Jewels of Darkness", name: "Dungeon Adventure", link: "storyLevel9JDDungeon.qml" })
               gameStoriesModel.append({ category: "Jewels of Darkness", name: "The Darkness Rises (novella)", link: "storyLevel9JDNovella.qml" })

               gameStoriesModel.append({ category: "Silicon Dreams", name: "Snowball", link: "storyLevel9SDSnowball.qml" })
               gameStoriesModel.append({ category: "Silicon Dreams", name: "Return to Eden", link: "storyLevel9SDReturnEden.qml" })
               gameStoriesModel.append({ category: "Silicon Dreams", name: "The Worm in Paradise", link: "storyLevel9SDWormParadise.qml" })
               gameStoriesModel.append({ category: "Silicon Dreams", name: "Eden Song (novella)", link: "storyLevel9SDNovella.qml" })

               gameStoriesModel.append({ category: "Gnome Ranger", name: "Gnome Ranger", link: "storyLevel9GRGnome.qml" })
               gameStoriesModel.append({ category: "Gnome Ranger", name: "Gnome Ranger: The Gnettlefield Journal", link: "storyLevel9GRNovella.qml" })
               gameStoriesModel.append({ category: "Gnome Ranger", name: "Ingrid's Back: Gnome Ranger 2", link: "storyLevel9GRIngrid.qml" })
               gameStoriesModel.append({ category: "Gnome Ranger", name: "Ingrid's Back: The 2nd Gnettlefield Journal", link: "storyLevel9IBNovella.qml" })

               gameStoriesModel.append({ category: "Time and Magik", name: "Lords of Time", link: "storyLevel9TMLordsTime.qml" })
               gameStoriesModel.append({ category: "Time and Magik", name: "Red Moon", link: "storyLevel9TMRedMoon.qml" })
               gameStoriesModel.append({ category: "Time and Magik", name: "The Price of Magik", link: "storyLevel9TMPrice.qml" })
               gameStoriesModel.append({ category: "Time and Magik", name: "Time & Magik Novella", link: "storyLevel9TMNovella.qml" })

            }
       }
       ListView {
               id: gameStoriesView

               model: gameStoriesModel
               anchors.fill: parent
               section.property: "category"
               section.criteria: ViewSection.FullString
               section.delegate: ListItemHeader {
                   title: section
               }

               header: Item {
                   width: parent.width
                   height: iconTop.height + units.gu(11)
                   UbuntuShape {
                       id: iconTop
                       width: units.gu(17)
                       height: width
                       anchors{
                           horizontalCenter: parent.horizontalCenter
                           top: parent.top
                           topMargin: units.gu(8)
                       }
                       aspect: UbuntuShape.Flat
                       source: Image {
                           source: "../../../graphics/l9storieshints.png"
                       }
                   }
               }

               delegate: ListItem {
                   height: storiesDelegateLayout.height
                   divider.visible: false
                   ListItemLayout {
                       id: storiesDelegateLayout
                       title.text: model.name
                       ProgressionSlot { name: "next"}
                   }
                   onClicked: mainPageStack.push(Qt.resolvedUrl("level9gamesstories/" + model.link))
               }
           }
    }
}
