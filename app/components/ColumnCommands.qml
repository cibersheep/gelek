import QtQuick 2.4
import Ubuntu.Components 1.3

Column {
	visible: false
	width: parent.width
	spacing: units.gu(1)
	Text {
		text: i18n.tr("The <i>Jewels of Darkness</i> uses an advanced command language interpreter (called a 'parser') that understands both simple one or two word commands and complex multiple command sentences. This chapter is split into sections describing ways in which to communicate with the program.")
		width: parent.width
		horizontalAlignment: Text.AlignJustify
		wrapMode: Text.WrapAtWordBoundaryOrAnywhere
	}
	Label {
		text: i18n.tr("i. Movement")
		width: parent.width
		horizontalAlignment: Text.AlignJustify
		wrapMode: Text.WrapAtWordBoundaryOrAnywhere
		font.pointSize: units.gu(1.5)
		font.bold: true
	}
	Text {
		text: i18n.tr("To move around, use the following commands:")
		width: parent.width
		horizontalAlignment: Text.AlignJustify
		wrapMode: Text.WrapAtWordBoundaryOrAnywhere
	}
	Grid {
		width: parent.width
		anchors.horizontalCenter: parent.horizontalCenter
		columnSpacing: units.gu(4)
		rowSpacing: units.gu(.5)
		columns: 2
		Text {text: "Word"; font.bold: true; width: parent.width * .5}
		Text {text: "Abbrv."; font.bold: true}
		Text {text: "NORTH"}
		Text {text: "N"}
		Text {text: "NOTHEAST"}
		Text {text: "NE"}
		Text {text: "EAST"}
		Text {text: "E"}
		Text {text: "SOUTHEAST"}
		Text {text: "SE"}
		Text {text: "WEST"}
		Text {text: "W"}
		Text {text: "NORTHWEST"}
		Text {text: "NW"}
		Text {text: "UP"}
		Text {text: "U"}
		Text {text: "DOWN"}
		Text {text: "D"}
		Text {text: "INSIDE"}
		Text {text: "IN"}
		Text {text: "OUTSIDE"}
		Text {text: "OUT"}
		Text {text: "CLIMB"}
		Text {text: "-"}
		Text {text: "JUMP"}
		Text {text: "-"}
		Text {text: "CROSS"}
		Text {text: "-"}
	}
	LevelText { text: i18n.tr("The EXITS command will list any likely exits. ") }
	Label {
		text: i18n.tr("ii. Actions")
		width: parent.width
		horizontalAlignment: Text.AlignJustify
		wrapMode: Text.WrapAtWordBoundaryOrAnywhere
		font.pointSize: units.gu(1.5)
		font.bold: true
	}
	LevelText { text: i18n.tr("The majority of commands that you will use are actions, such as picking up objects, opening doors, lighting lamps, etc. Here are some examples of the most common action commands.") }
	Grid {
		width: parent.width
		anchors.horizontalCenter: parent.horizontalCenter
		columnSpacing: units.gu(4)
		rowSpacing: units.gu(1)
		columns: 2
		Text {text: "Command"; font.bold: true; width: parent.width * .4}
		Text {text: "Meaning"; font.bold: true; width: parent.width * .4}
		Text {text: "GET SWORD"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Pick up the sword from here."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "DROP AXE"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Leave the axe in this room."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "GIVE FOOD TO THE UNICORN"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Feed the unicorn with the food i'm carrying."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "FILL THE BOTTLE"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Fill bottle with a liquid."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "WEAR THE ARMOUR"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Put on the armour that i'm carrying."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "OPEN THE DOOR"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Open the door (!)"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "LIGHT LAMP"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Tums on the lamp that i'm carrying."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "EXAMINE THE GOLD"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Take a good look at the gold I just found."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "INVENTORY (INV)"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "What am I carrying?"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "SAY SESAME"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Utter the magical word."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "SCORE"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "How well am I doing?"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "QUIT"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Abandon your quest."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "AGAIN (A)"; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
		Text {text: "Repeat the last command entered."; wrapMode: Text.WrapAtWordBoundaryOrAnywhere; width: parent.width * .4}
	}
	LevelText { text: i18n.tr("You can use punctuation, or the word AND to string together multiple commands, for example...") }
	LevelText { text: i18n.tr("OPEN THE DOOR. GO SOUTH AND CLOSE THE DOOR.GO EAST AND SAY SESAME.") }
	LevelText { text: i18n.tr("The parser also understands the words ALL and EVERYTHING to mean everything moveable that it can see. This is an extremely useful time-saving feature. In most other adventures, to pick up a number of objects, you would have to do the following...") }
	Column {
		width: parent.width
		spacing: units.gu(.3)
		Text {
			text: i18n.tr("GET LAMP")
			width: parent.width
			horizontalAlignment: Text.AlignJustify
			wrapMode: Text.WrapAtWordBoundaryOrAnywhere
		}
		Text {
			text: i18n.tr("GET WAND")
			width: parent.width
			horizontalAlignment: Text.AlignJustify
			wrapMode: Text.WrapAtWordBoundaryOrAnywhere
		}
		Text {
			text: i18n.tr("GET CROWN")
			width: parent.width
			horizontalAlignment: Text.AlignJustify
			wrapMode: Text.WrapAtWordBoundaryOrAnywhere
		}
	}

	LevelText { text: i18n.tr("Without using the ALL command, the <i>Jewels of Darkness</i> would allow you to use...") }
	LevelText { text: i18n.tr("GET LAMP, WAND AND CROWN") }
	LevelText { text: i18n.tr("But this can be abbreviated even more simply to...") }
	LevelText { text: i18n.tr("GET ALL") }
	LevelText { text: i18n.tr("Another useful feature is the ability to refer to the last used item/object as IT, for example...") }
	LevelText { text: i18n.tr("EXAMINE THE PLATINUM RING AND TAKE IT") }
	LevelText { text: i18n.tr("or...") }
	LevelText { text: i18n.tr("GET THE GREEN BOTTLE AND FILL IT WITH WATER.") }
	LevelText { text: i18n.tr("Exceptions are also understood by the parser, such as...") }
	LevelText { text: i18n.tr("TAKE EVERYTHING BUT THE SAPPHIRE") }
	LevelText { text: i18n.tr("or...") }
	LevelText { text: i18n.tr("EXAMINE ALL EXCEPT THE CROSS") }
	LevelText { text: i18n.tr("Using all of these command structures allows you to type in near-English sentences of great complexity, such as...") }
	Column {
		width: parent.width
		spacing: units.gu(.3)
		LevelText { text: i18n.tr("EXAMINE ALL BUT THE CROSS, DRAGON AND LAMP AND GO EAST.") }
		LevelText { text: i18n.tr("DROP EVERYTHING BUT THE LAMP. SAY XYZZY.") }
		LevelText { text: i18n.tr("GET THE KEYS. OPEN THE DOOR AND WALK NORTH. INVENTORY.") }
	}
	Label {
		text: i18n.tr("iii. Special commands")
		width: parent.width
		horizontalAlignment: Text.AlignJustify
		wrapMode: Text.WrapAtWordBoundaryOrAnywhere
		font.pointSize: units.gu(1.5)
		font.bold: true
	}
	LevelText { text: i18n.tr("There are a few commands that are neither movement or actions. Two of these affect the way the adventure is presented to you; they are...") }
	Grid {
		width: parent.width
		anchors.horizontalCenter: parent.horizontalCenter
		columnSpacing: units.gu(4)
		rowSpacing: units.gu(1)
		columns: 2
		Text {text: "WORDS"; width: parent.width * .3}
		Text {text: "Turn off the pictures."; width: parent.width * .5}
		Text {text: "PICTURES"; width: parent.width * .3}
		Text {text: "Turn them back on again."; width: parent.width * .5}
	}

	LevelText { text: i18n.tr("A HELP feature has been included, to give you a clue at certain points within the three games. The HELP command is generally useful in the locations around the start of each adventure to get you on your way.") }
	LevelText { text: i18n.tr("The other commands are concerned with saving and restoring your game position. Full instructions will be displayed on the screen where necessary. Those marked with an asterisk may not be available on all versions.") }
	Grid {
		width: parent.width
		anchors.horizontalCenter: parent.horizontalCenter
		columnSpacing: units.gu(4)
		rowSpacing: units.gu(1)
		columns: 2
		Text {text: "SAVE"; width: parent.width * .3}
		Text {text: "Stores game position to your filing system."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
		Text {text: "RESTORE"; width: parent.width * .3}
		Text {text: "Loads a saved game position. Lenslok might be needed."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
		Text {text: "RAM SAVE*"; width: parent.width * .3}
		Text {text: "Stores game position in the device’s memory."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
		Text {text: "RAM RESTORE*"; width: parent.width * .3}
		Text {text: "Loads a RAM SAVEd position from the device's memory."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
		Text {text: "OOPS*"; width: parent.width * .3}
		Text {text: "Restore position as it was before you last moved. OOPS is a very useful command, and versions on larger machines let you use it several times in succession to go back a long way in time."; width: parent.width * .5; wrapMode: Text.WrapAtWordBoundaryOrAnywhere}
	}
	LevelText { text: i18n.tr("Naturally, you can use OOPS, RESTORE or RAM RESTORE, even when you have just been killed, so that you can return to your position before your fatal accident!") }
}
