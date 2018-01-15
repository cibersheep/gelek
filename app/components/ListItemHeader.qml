/*
 * uNav http://launchpad.net/unav
 * Copyright (C) 2016 Nekhelesh Ramananthan https://launchpad.net/~nik90
 *
 * uNav is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * uNav is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3

ListItem {
    id: headerListItem

    property string title

    height: units.gu(8)
    Label {
        anchors { bottom: parent.bottom; left: parent.left; leftMargin: units.gu(2); bottomMargin: units.gu(2); }
        text: title
        font.bold: true
        color: darkColor
    }
    divider.visible: false
}
