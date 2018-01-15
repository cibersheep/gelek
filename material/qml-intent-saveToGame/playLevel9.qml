import QtQuick 2.4
import Ubuntu.Components 1.3
import "components"
import RunQProcess 1.0
import Ubuntu.Components.Popups 1.3
import Qt.labs.folderlistmodel 2.1

Page {
    id: playLevel9

    property string game
    property string saved
    property string gameName:""
    property var response
    property bool bottomEdgeVisible: false
    property bool automaticResponse

    property int windRoseWidth: units.gu(4) //(parent.height - units.gu(4)) / 9

    property string lightColor: "#90435e"
    property string darkColor: "#842244"
    property string lighterColor: UbuntuColors.porcelain
    anchors.fill: parent
    header: GelekHeader {
        id: levelHeader
        title: i18n.tr("Level 9 interpreter")
    }

    Component.onCompleted: {
        launcher.launch(game)
        launcher.sendCommand('{ "type": "init", "gen": 0, "metrics": { "width":60, "height":24 },  "support": [ "graphics", "graphicswin" ] }')
    }

    Launcher {
        id:launcher
        onStdoutLevel:{
            response = ""
            var stdoutResponse = readSOL()
            response = JSON.parse(stdoutResponse)
            formatText(response)
            //console.log(response.content[0].text[1].content[0].text)
            if (automaticResponse) loadSavedGameAutomatically()
        }
    }


    Flickable {
        id: levelFlickable
        width: parent.width
        clip: true
        anchors {
            //fill: parent
            top: parent.top
            topMargin: levelHeader.height
            bottom: inputArea.top
            bottomMargin: units.gu(1)
        }
        contentHeight: txt.height + units.gu(5)

        Column{
            id: levelMainText
            anchors.fill:parent
            spacing: units.gu(2)
            anchors.margins:units.gu(2)

            //anchors.bottom: parent.bottom

            Text{
                id:txt
                width: parent.width
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                horizontalAlignment: Text.AlignJustify
            }

        }
    }
    Row {
        id: inputArea
        spacing: units.gu(1)
        width: parent.width
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            margins: units.gu(2)
        }
        TextField{
            id: command
            width: parent.width - instruction.width - units.gu(5) //Should be -units.gu(1)
            onTextChanged: if (response.input[0].type === "char") sendCommandToGtk()
            onAccepted: {
                console.log('DEBUG: ACCEPTED', command.focus);
                command.focus=false;
                command.focus=true;
                //sendCommandToGtk()
                instruction.clicked()
                //launcher.sendCommand('{ "gen": ' + response.gen + ', "id": ' + response.input[0].id + ', "type": "graphics", "rock": "98", "graphwidth": 800, "graphheight": 600}')
            }
            //focus: true
            onFocusChanged: {
                console.log('DEBUG: FOCUS CHANGED', command.focus);
                if (!command.focus && !bottomEdgeVisible) command.focus = true
            }
            //onActiveFocusChanged: if (!command.activeFocus) command.activeFocus = true
            //enabled: commonActions.visible
        }



        Button{
            id:instruction
            //text:i18n.tr("Enter")
            width: units.gu(4)
            Icon {
                width: units.gu(2)
                anchors.centerIn: parent
                color: lighterColor
                name: "keyboard-enter"
            }
            color: command.text === "" ? UbuntuColors.graphite : darkColor
            onClicked:{
                /*
                if (command.text !== "") {"window":' + response.input[0].id + ',
                    //launcher.sendCommand('{ "type":"line", "gen":' + response.gen + ', "value": "' + command.text + '" }')
                    launcher.sendCommand('{ "type": "specialresponse", "gen": ' + response.gen + ', "response": "fileref_prompt", "value": "' + command.text + '" }')
                    command.text = ""
                }
                */
                sendCommandToGtk()
                //command.focus = true

            }
        }
        Button {
            width: units.gu(4)
            color: UbuntuColors.green
            onClicked: {
                automaticResponse = true
                loadSavedGameAutomatically()


            }
        }
    }

    BottomEdge {
        id: bottomEdge
        height: units.gu(38)
        //anchors.fill: parent
        hint {
            text: i18n.tr("Actions")
            //status: "Active"
            enabled: bottomEdge.enabled
        }
        preloadContent: true


        onCollapseStarted: bottomEdgeVisible = false

        onCollapseCompleted: {
            command.focus = true
            flickText.start()
        }

        onCommitStarted: {
            //command.enabled = false
            bottomEdgeVisible = true
            command.focus = false
        }



        contentComponent: Page {
            id: commonActions
            width: bottomEdge.width
            height: bottomEdge.height

            header: PageHeader {
                id: levelBottomEdgeHeader
                title: i18n.tr("Common Actions")
                StyleHints {
                    foregroundColor: darkColor
                    backgroundColor: lighterColor
                    dividerColor: lighterColor
                }
            }

            Grid {
                id: mainGrid
                anchors.top: levelBottomEdgeHeader.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: units.gu(2)
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - units.gu(4)
                spacing: units.gu(2)


                Column {
                    width: (parent.width / 3) - units.gu(2)
                    anchors.leftMargin: units.gu(2)
                    spacing: units.gu(2)

                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Examine"
                        onClicked: {
                            command.text = "EXAMINE "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Pull"
                        onClicked: {
                            command.text = "PULL "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Push"
                        onClicked: {
                            command.text = "PUSH "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Open"
                        onClicked: {
                            command.text = "OPEN "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Close"
                        onClicked: {
                            command.text = "CLOSE "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                }

                Column {
                    width: (parent.width / 3) - units.gu(2)
                    anchors.leftMargin: units.gu(2)
                    spacing: units.gu(2)
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Get"
                        onClicked: {
                            command.text = "GET "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Drop"
                        onClicked: {
                            command.text = "DROP "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Wear"
                        onClicked: {
                            command.text = "WEAR "
                            bottomEdge.collapse()
                            command.focus = true
                            flickText.start()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Inventory"
                        onClicked: {
                            command.text = "INVENTORY"
                            instruction.clicked()
                            bottomEdge.collapse()
                            command.focus = true
                        }
                    }


                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Score"
                        onClicked: {
                            command.text = "SCORE"
                            instruction.clicked()
                            bottomEdge.collapse()
                        }
                    }
                }


                Column {
                    width: (parent.width / 3)
                    anchors.leftMargin: units.gu(2)
                    spacing: units.gu(2)

                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Save"
                        onClicked: {
                            command.text = "SAVE"
                            sendCommandToGtk()
                            bottomEdge.collapse()
                        }
                    }
                    Button {
                        width: parent.width
                        color: lightColor
                        text: "Restore"
                        onClicked: {
                            command.text = "RESTORE"
                            sendCommandToGtk()
                            bottomEdge.collapse()
                        }
                    }
                    Grid {
                        height: units.gu(12)
                        width: height
                        id: navigation
                        anchors.horizontalCenter: parent.horizontalCenter

                        columns: 3
                        //spacing: units.gu(2)
                        Icon { id: nw; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/nw.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "NW"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                        Icon { id: up; color: lightColor; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/n.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "N"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                        Icon { id: ne; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/ne.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "NE"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                        Icon { id: w; color: lightColor; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/w.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "W"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }

                        Icon { id: other; color: lightColor; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/centre.svg"}

                        Icon { id: e; color: lightColor; width:windRoseWidth; height: width; anchors.leftMargin: units.gu(2); source: "../../../graphics/bottomedge/e.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "E"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                        Icon { id: sw; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/sw.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "SW"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                        Icon { id: s; color: lightColor; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/s.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "S"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                        Icon { id: se; width: windRoseWidth; height: width; source: "../../../graphics/bottomedge/se.svg"
                            MouseArea {
                                    anchors.fill: parent;
                                    onClicked: {
                                        command.text = "SE"
                                        instruction.clicked()
                                        bottomEdge.collapse()
                                        command.focus = true
                                   }
                            }
                        }
                    }

                }
            }
        }

    }
    function formatText(json) {
        var txtHeightBefore = txt.height

        console.log("formatText")
        for (var i = 0; i <= json.content[0].text.length -1; i++) {
            var jsonContent = json.content[0].text[i].content

                if (jsonContent) {

                    for (var j = 0; j <= jsonContent.length -1; j++) {

                        jsonContent[j].text = jsonContent[j].text.replace("&","&amp;")
                        console.log(jsonContent[j].text)

                        switch (jsonContent[j].style) {
                            case "header":
                                txt.text += "<font color='#842244'><b>" + jsonContent[j].text + "</b></font><br/><br/>"
                                console.log(txt.text)
                                break
                            case "subheader":
                                txt.text += "<font color='#90435e'><b><i>" + jsonContent[j].text + "</i></b></font></h2>"
                                break
                            case "emphasized":
                                txt.text += "<i>" + jsonContent[j].text + "</i>"
                                break
                            case "input":
                                txt.text += "<i>" + jsonContent[j].text + "</i><br/>"
                                break
                            default:
                                if (jsonContent[j].text !== "> ") { //Hides the "> ". We don't need it in Gelek
                                    if (j < jsonContent.length -1) {
                                        txt.text += jsonContent[j].text
                                    }
                                    else txt.text += jsonContent[j].text  + "<br/>"
                                }
                                if (gameName === "") getNameYear(jsonContent[j].text);

                        }

                    }


                }
                else {
                    console.log("Empty line")
                    txt.text += "<br/>"
                }

        }

        if (json.specialinput && !automaticResponse) {
            if (json.specialinput.type === "fileref_prompt") {
                launcher.createSavedGamesDir()
                switch (json.specialinput.filemode) {
                    case "read":
                        PopupUtils.open(showPopUpRestore)
                        break
                    case "write":
                        PopupUtils.open(showPopUpSave)
                        break
                }
            }
        }
        //console.log("---Debug: txt.height: " + txt.height + ". txtHeightBefore: " + txtHeightBefore + ". playlevel9.height: " + playLevel9.height)
        //console.log("---     : contentHeight: " + flickable.contentHeight)
        //console.log("----    : Visible Y: " + flickable.visibleArea.yPosition)
        //if (txt.height > playLevel9.height) {flickable.contentY += (txt.height - txtHeightBefore)}
        while (!flickable.atYEnd) {flickable.contentY += units.gu(1)}


        //flickable.flick(0,-playLevel9.height -levelMainText.height)
        //flickable.contentY += levelMainText.height - playLevel9.height
    }

    function getNameYear(text) {
        var welcomePosition = text.search(/welcome to /i);
        if (welcomePosition === -1) return;
        var restOfTheString = text.slice(welcomePosition +11);

        restOfTheString = restOfTheString.replace('"','');
        restOfTheString = restOfTheString.replace(',','');
        restOfTheString = restOfTheString.replace('.','');

        var words = restOfTheString.split(" ")

        if (words[1] == "of") words[1] += words[2].replace('"','');
        if (words[0] == "Snowball") {
            var year1986 = restOfTheString.search("1986");
            if (year1986 == -1) words[1] = "1983"
            else words[1] = "1986"
        }

        console.log("----GAME: " + words[0] + words[1])
        gameName = words[0] + words[1]


    }

    function sendCommandToGtk() {
        if (command.text !== "") {
            if (response.input[0].type === "char") { //Make char input accepted from TextField
                launcher.sendCommand('{ "type":"char", "gen":' + response.gen + ', "window":' + response.input[0].id + ', "value": "' + command.text.slice(0) + '" }')
            } else {
                launcher.sendCommand('{ "type":"line", "gen":' + response.gen + ', "window":' + response.input[0].id + ', "value": "' + command.text + '" }') //Should be command.text.slice(response.input[0].maxlen)
            }

            command.text = ""
        }
        command.focus = true
    }

    function loadSavedGameAutomatically() {
        //should run after first response
        console.log("loadautomatically")
        launcher.sendCommand('{ "type":"line", "gen":1, "window":' + response.input[0].id + ', "value": "restore" }')
        var oneplusresponse = response.gen +1
        launcher.sendCommand('{ "type": "specialresponse", "gen": 2, "response": "fileref_prompt", "value": "/home/cibersheep/Level_9/SavedGames/test.glksave" }')
        automaticResponse = false
    }

    Component {
        id: showPopUpSave
        Dialog {
            id: dialogue
            title: i18n.tr("Save Game")
            text: i18n.tr("Enter a name to save the game")
            TextField {
                id: saveGameName
                onAccepted: saveButton.clicked()
            }

            Button {
                id: saveButton
                text: i18n.tr("Save")
                color: saveGameName.text ==="" || saveGameName.text === " " ? UbuntuColors.graphite : UbuntuColors.green
                onClicked: {
                    if (saveGameName.text !=="" && saveGameName.text !== " ") {
                        console.log("-------- Game name to save: " + saveGameName.text)
                        console.log("QDATE " + Qt.formatDateTime(new Date(), "dd-MM-yyyy, HH:mm:ss"))

                        launcher.sendCommand('{ "type": "specialresponse", "gen": ' + response.gen + ', "response": "fileref_prompt", "value": "/home/phablet/.cache/gelek.cibersheep/SavedGames/' + saveGameName.text + '.glksave" }')
                        launcher.addToList(saveGameName.text + '.glksave', gameName, Qt.formatDateTime(new Date(), "dd-MM-yyyy, HH:mm:ss"))
                        PopupUtils.close(dialogue)
                    }
                }
            }
            Button {
                text: i18n.tr("Cancel")
                onClicked: {
                    launcher.sendCommand('{ "type": "specialresponse", "gen": ' + response.gen + ', "response": "fileref_prompt", "value": "" }')
                    PopupUtils.close(dialogue)
                }
            }
        }
    }
    Component {
        id: showPopUpRestore
        Dialog {
            id: dialogueRestore
            title: i18n.tr("Restore Game")
            text: savedGamesModel.count === 0 ? i18n.tr("There's no saved games yet") : i18n.tr("Choose a saved game to restore")
            ScrollView {
                height: savedGamesModel.count === 0 ? units.gu(1) : units.gu(25)
                ListView {
                    id: savedGameList
                    //interactive: false
                    width: parent.width
                    clip: true


                    //height: units.gu(7) * savedGamesModel.count

                    model: savedGamesModel
                    delegate: savedGamesDelegate
                }
            }

            Component {
                id: savedGamesDelegate

                Row {
                    height: units.gu(7)
                    spacing: units.gu(2)
                    width: parent.width

                    Icon { width: units.gu(3); height: width; source: "../../../graphics/save.svg"; anchors.verticalCenter: parent.verticalCenter
                        MouseArea {anchors.fill: parent;onClicked: {
                                launcher.sendCommand('{ "type": "specialresponse", "gen": ' + response.gen + ', "response": "fileref_prompt", "value": "/home/phablet/.cache/gelek.cibersheep/SavedGames/' + fileName + '" }')
                                PopupUtils.close(dialogueRestore)
                                }
                        }
                    }
                    Text { text: fileName ; width: parent.width * .75; anchors.verticalCenter: parent.verticalCenter; clip: true
                        MouseArea {anchors.fill: parent;onClicked:  {
                                launcher.sendCommand('{ "type": "specialresponse", "gen": ' + response.gen + ', "response": "fileref_prompt", "value": "/home/phablet/.cache/gelek.cibersheep/SavedGames/' + fileName + '" }')
                                PopupUtils.close(dialogueRestore)
                                }
                        }
                    }
                }
            }

            Button {
                text: i18n.tr("Cancel")
                onClicked: {
                    launcher.sendCommand('{ "type": "specialresponse", "gen": ' + response.gen + ', "response": "fileref_prompt", "value": "" }')
                    PopupUtils.close(dialogueRestore)
                }
            }
        }

    }

    FolderListModel {
        id: savedGamesModel
        rootFolder: "/home/phablet/.cache/gelek.cibersheep/SavedGames/"
        folder: "/home/phablet/.cache/gelek.cibersheep/SavedGames/"
        nameFilters: [ "*.geleksave", "*.GELEKSAVE", "*.glksave", "*.GLKSAVE" ]
        showHidden: true
        showDirs: false
        //sortField: Name
        sortField: FolderListModel.Time
    }

    Connections {
        target: Qt.inputMethod

        /*
        onVisibleChanged: {
            Qt.inputMethod.visible ? console.log("inputMedthod.visible = " + Qt.inputMethod.visible + ". Keyboard pops up") : console.log("inputMedthod.visible = " + Qt.inputMethod.visible + ". Keyboard hides")
            if (!Qt.inputMethod.visible) {
                command.focus = true
            }
            if (!bottomEdge.visible) command.forceActiveFocus()
        }
        */
        onVisibleChanged:{
            flickText.start()
        }
    }
    Timer {
        id: flickText
        interval: 100
        onTriggered: {
            while (!flickable.atYEnd) {flickable.contentY += units.gu(1)}
            //flickable.flick(0,-playLevel9.height -levelMainText.height)
        }
    }

}
