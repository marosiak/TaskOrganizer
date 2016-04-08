import QtQuick 2.0

Item {
    id: item1
    width: 100
    height: 28
    Image {
        id: f
        anchors.right: parent.right
        anchors.rightMargin: 7
        width: parent.height-9
        height: parent.height-9
        anchors.top: parent.top
        anchors.topMargin: 7
        source: "../icons/Close.png"
        MouseArea {
            x: 0
            y: -1
            width: parent.width
            height: item1.height-6
            onClicked: Qt.quit()
        }
    }
    Image {
        anchors.right: f.left
        anchors.bottom: f.bottom
        width: 18
        height: 3
        anchors.rightMargin: 7
        //anchors.verticalCenter: parent.verticalCenter
        source: "../icons/Minimize.png"
        MouseArea {
            x: 0
            y: -19
            width: parent.width
            height: item1.height-6
            onClicked: window.showMinimized()
        }
    }
}
