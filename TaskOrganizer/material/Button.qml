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

    Text {
        id: tekst
        width: parent.width
        height: parent.height
        color: buttonColor
        text: buttonText
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: robotoMedium.name
        font.bold: true
        PaperRipple {
            id: ripple
            radius: 1
            mouseArea: mouseArea
        }
        MouseArea {
            id: mouseArea
            width: parent.width
            height: parent.height
            onClicked: item.clicked()
        }
    }
}

