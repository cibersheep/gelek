/*
 * Copyright (C) 2016 Stefano Verzegnassi
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License 3 as published by
 * the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see http://www.gnu.org/licenses/.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Content 1.3
import RunQProcess 1.0

Page {
    id: picker
	property var activeTransfer

	property var url
	property var handler
	property var contentType
	
    signal cancel()
    signal imported(string fileUrl)

    header: PageHeader {
        title: i18n.tr("Choose")
    }

    Launcher {
        id: launch
    }

    ContentPeerPicker {
        anchors { fill: parent; topMargin: picker.header.height }
        visible: parent.visible
        showTitle: false
        contentType: picker.contentType //ContentType.Pictures
        handler: picker.handler //ContentHandler.Source

        onPeerSelected: {
            peer.selectionType = ContentTransfer.Multiple
            picker.activeTransfer = peer.request()
            picker.activeTransfer.stateChanged.connect(function() {
				if (picker.activeTransfer.state === ContentTransfer.InProgress) {
					console.log("In progress");
					picker.activeTransfer.items = picker.activeTransfer.items[0].url = url;
					picker.activeTransfer.state = ContentTransfer.Charged;
				}
                if (picker.activeTransfer.state === ContentTransfer.Charged) {
					console.log("Charged");
                    picker.imported(picker.activeTransfer.items[0].url)
					console.log(picker.activeTransfer.items[0].url)
                    picker.activeTransfer = null
                    pageStack.pop()
                    var gameName = level9Game.split("/")
                    console.log("gameName: " + gameName[gameName.length -1] + "level9Game" + level9Game.slice(7))
                    level9Game = level9Game.slice(7) //Takes out file://
                    launch.storeGameFile(level9Game, gameName[gameName.length -1])

                    mainPageStack.push(Qt.resolvedUrl("playLevel9.qml"),{"game": level9Game}) //This shouldn't load the game file from ContenthubIncoming/#
                    //To do: Decide if this should only import a game and update the list in main.qml
                }
            })
        }
       

        onCancelPressed: {
            pageStack.pop();
        }
    }

    ContentTransferHint {
        id: transferHint
        anchors.fill: parent
        activeTransfer: picker.activeTransfer
    }
    Component {
        id: resultComponent
        ContentItem {}
	}
}
