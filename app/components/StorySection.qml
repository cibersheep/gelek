import QtQuick 2.4
import Ubuntu.Components 1.3

Item {
    property string sectionTitle
    property bool sectionOpen

	width: parent.width
	height: rowImpl.height

	Row {
		id: rowImpl
		width: parent.width
		anchors.horizontalCenter: parent.horizontalCenter
		Label {
			width: parent.width - units.gu(2)
			text: i18n.tr(sectionTitle)
			font.bold: true
			font.pixelSize: units.gu(2)
			color: darkColor
		}
		Icon {
			width: units.gu(2)
			height: width
            name: sectionOpen ? "down" : "next"
			anchors.verticalCenter: parent.verticalCenter

		}
	}

}
