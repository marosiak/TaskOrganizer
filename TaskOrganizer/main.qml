import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import "components"
import "material"

ApplicationWindow {
    id: window
    visible: true
    width: 642
    height: 480
    title: qsTr("Task Organizer")
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"
    Card {
        id:mainCard
        width: parent.width-1
        height: parent.height-1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            anchors.fill: parent
            property real lastMouseX: 0
            property real lastMouseY: 0
            onPressed: {
                lastMouseX = mouseX
                lastMouseY = mouseY
            }
            onMouseXChanged: window.x += (mouseX - lastMouseX)
            onMouseYChanged: window.y += (mouseY - lastMouseY)

            ColorButton {
                id: colorButton1
                x: 310
                y: 145
                width: 140
                buttonText: "Show Notification"
                onClicked: notification.show()

            }
        }
    }
    ToolBar { anchors.top: parent.top; anchors.topMargin: 4; anchors.right: parent.right; anchors.rightMargin: 4}
    Notification {id: notification}
}
