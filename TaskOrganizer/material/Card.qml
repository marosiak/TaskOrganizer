import QtQuick 2.5
import QtGraphicalEffects 1.0


Item {
    id: item1
    width: parent.width
    height: 100
    Rectangle {
        id: rec
        width: parent.width-8
        height: parent.height-10
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        radius: 2
    }
    DropShadow {
        //anchors.fill: rec
        width: rec.width
        height: rec.height
        horizontalOffset: 0
        verticalOffset: 0
        radius: 11
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        samples: 25
        color: "#80000000"
        source: rec
    }
}
