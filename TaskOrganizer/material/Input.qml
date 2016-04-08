import QtQuick 2.5
import QtQuick.Controls 1.5

Item {
    id: item1
    width: 200
    height: 30
    function setFocus(a){
        textInput1.focus = a;
    }
    function getFocus(){
        return textInput1.focus;
    }
    function setText(a){
        textInput1.text = a;
    }
    function getText(){
        return textInput1.text
    }

    signal focusChanged
    signal textChanged
    FontLoader {
        id: robotoMedium
        source: "../fonts/Roboto-Medium.ttf"
    }
    FontLoader {
        id: robotoLight
        source: "../fonts/Roboto-Light.ttf"
    }
    TextInput {
        id: textInput1
        maximumLength: 18
        width: parent.width
        height: parent.height
        color: "#B6B6B6"
        text: "Search"
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 24
        font.family: robotoLight.name
        font.bold: true
        onTextChanged: item1.textChanged()
        onFocusChanged: { item1.focusChanged()
            if(focus == true && text == "Search"){
                text = ""
            }
            if(focus == false && text == ""){
                text = "Search"
            }
        }
    }
}
