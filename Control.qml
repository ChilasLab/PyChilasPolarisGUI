/****************************************************************************
This file is part of Chilas Polaris.

Chilas Polaris is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Chilas Polaris is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
****************************************************************************/

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
//import QtQuick.Extras 1.4

Window {
    id: window
    width: 720
    height: 582
    title: "Chilas POLARIS"
    //flags: Qt.Window | Qt.FramelessWindowHint
    // @disable-check M16
    onClosing: {
        //backend.rst()
        //backend.close()
    }

    Component.onCompleted: {
        x = (Screen.width - width) / 2
        y = (Screen.height - height) / 2
    }

    Rectangle {
        anchors.fill: parent
        Image {
            id: image
            source: "background.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            asynchronous: true
            smooth: true
            opacity: 0.8
        }

        TabBar {
            id: tabBar
            width: parent.width
            font.pointSize: 15
            spacing: 0
            currentIndex: stackView.currentIndex
            opacity: 0.5

            TabButton {
                id: cntrlPnl
                text: "Control Panel"
            }
        }

        SwipeView {
            id: stackView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: tabBar.bottom
            anchors.bottom: pageIndicator.top
            currentIndex: tabBar.currentIndex

            PageCntrlPnl {
                id: pageCntrlPnl
            }
        }

        PageIndicator {
            id: pageIndicator
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            count: stackView.count
            currentIndex: stackView.currentIndex
        }
    }

    Button {
        id: info
        text: "i"
        width: 40
        anchors.right: parent.right
        font.pixelSize: 15
        onClicked: popupInfo.open()
    }

    PopupInfo {
        id: popupInfo
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
