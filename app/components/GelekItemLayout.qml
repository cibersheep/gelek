import QtQuick 2.4
import Ubuntu.Components 1.3

ListItemLayout {
    title.text: root.title.text
    title.color: lightColor
    width: parent.width //- marginColumn * 2
    anchors.horizontalCenter: parent.horizontalCenter
    Icon {
        name: "next"
        SlotsLayout.position: SlotsLayout.Trailing;
        width: units.gu(2)
    }
}
