import QtQuick 2.5

Item {
    width: 100
    height: 100
    property string type: "body"
    property string matText: "Example text"
    property color textColor: "#727272"
    Component.onCompleted: {
        if(type == "header"){
            textColor = "#212121"
            tekst.font.pointSize = "14";
            tekst.font.bold = false;
        }
        if(type == "title"){
            textColor = "#727272"
            tekst.font.pointSize = "11";
            tekst.font.bold = true;
            tekst.verticalAlignment = Text.AlignVCenter
        }
        if(type == "body"){
            textColor = "#727272"
            tekst.font.pointSize = "10";
            tekst.font.bold = false;
        }
    }

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
        text: matText
        wrapMode: Text.WordWrap
        color: textColor
        width: parent.width
        height: parent.height
        font.family: robotoMedium.name
    }
}
