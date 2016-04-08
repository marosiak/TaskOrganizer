import QtQuick 2.5
import QtGraphicalEffects 1.0

Item {
    id: item
    width: 50
    height: 50
    signal clicked
    property color buttonColor: "#2196F3"
    FontLoader {
        id: robotoMedium
        source: "../fonts/Roboto-Medium.ttf"
    }
    Rectangle {
        id: rectangle
        width: parent.width-5
        height: parent.height-5
        color: buttonColor
        radius: 100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: textX
            text: "+"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
            height: parent.height
            color: "#ffffff"
            font.family: robotoMedium.name
            font.pointSize: 18
        }
        PaperRipple {
            id: ripple
            radius: 100
            mouseArea: mouseArea
        }
        MouseArea {
            id: mouseArea
            width: parent.width
            height: parent.height
            onClicked: item.clicked()
        }
    }
    DropShadow {
            anchors.fill: rectangle
            horizontalOffset: 0
            verticalOffset: 4
            radius: 7.0
            samples: 7
            color: "#80000000"
            source: rectangle
        }
}
