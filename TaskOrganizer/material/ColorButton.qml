import QtQuick 2.5
import QtGraphicalEffects 1.0
import "."


Item {
    id: item
    property color buttonColor: "#2196F3"
    property string buttonText: "Button"
    signal clicked
    width: 90
    height: 30
    FontLoader {
        id: robotoMedium
        source: "../fonts/Roboto-Medium.ttf"
    }
    FontLoader {
        id: robotoLight
        source: "../fonts/Roboto-Light.ttf"
    }
    Rectangle {
        id: rectangleXX
        width: parent.width-5
        height: parent.height-5
        color: buttonColor
        radius: 2
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        PaperRipple {
            id: ripple
            radius: 3
            mouseArea: mouseArea
        }
        MouseArea {
            id: mouseArea
            width: parent.width
            height: parent.height
            onClicked: item.clicked()
        }
        Text {
            id: tekst
            width: parent.width
            height: parent.height
            color: "#ffffff"
            text: buttonText
            font.pointSize: 12
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: robotoMedium.name
            font.bold: true
        }
    }
    DropShadow {
            anchors.fill: rectangleXX
            horizontalOffset: 2
            verticalOffset: 2
            radius: 7.0
            samples: 17
            color: "#80000000"
            source: rectangleXX
        }
}

