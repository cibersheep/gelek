import QtQuick 2.4
import Ubuntu.Components 1.3



Item {
    property string thisChapter
    property int flick

	width: parent.width - marginColumn * 6
	height: units.gu(2)
	anchors.horizontalCenter: parent.horizontalCenter
	Row {
		width: parent.width
		height: parent.height
		spacing: units.gu(2)
		anchors.horizontalCenter: parent.horizontalCenter

        Text { text: thisChapter; width: parent.width - units.gu(4); font.pixelSize: units.gu(2); anchors.verticalCenter: parent.verticalCenter}
		Icon { width: units.gu(2); height: width; name: "next"; anchors.verticalCenter: parent.verticalCenter}
	}
	MouseArea {anchors.fill: parent; onClicked: { novellaFlickable.contentY = flick} }
}
