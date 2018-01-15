import QtQuick 2.4
import Ubuntu.Components 1.3

ListItem {
    property string chapterNumber
    property int flickNext

	width: parent.width// - marginColumn * 4
	anchors.horizontalCenter: parent.horizontalCenter
	divider.visible: false
	clip: true
	highlightColor: "transparent"

	trailingActions: ListItemActions {
							actions: [
								Action {
									iconName: "up"
									text: i18n.tr("Index")
									onTriggered: novellaFlickable.contentY = 0
								},
								Action {
									iconName: "next"
									text: i18n.tr("Next Chapter")
									onTriggered: novellaFlickable.contentY = flickNext
								}
							]
						}
	Row {
		height: units.gu(8)
		spacing: units.gu(2)
		anchors.horizontalCenter: parent.horizontalCenter

		Text { text: chapterNumber;  font.bold: true; font.pixelSize: units.gu(4); color: darkColor; anchors.verticalCenter: parent.verticalCenter; clip: true}
	}
	//MouseArea {anchors.fill: parent; onClicked: { novellaFlickable.contentY = flickNext }}
}
