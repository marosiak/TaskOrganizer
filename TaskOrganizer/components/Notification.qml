import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Window 2.0
import "../material"

ApplicationWindow {
    id: notwindow
    visible: true
    width: 260
    height: 75
    x: Screen.width-notwindow.width
    flags: Qt.Popup | Qt.NoDropShadowWindowHint
    color: "transparent"
    property string text: "Example text bla bla blaa blaaa bla"
    property string title: "Here is title"
    property int cardHeight: imgItem.height+title+height+message.height+22
    Timer {
        id: mainTimer
        interval: 5000
        running: true
        onTriggered: hide()
    }
    function show(){
        notification.y = 0;
        card.visible = true;
        showAnim.running = true;
        mainTimer.running = true;
    }
    function hide(){
        hideAnim.running = true;
        timer2.running = true;
    }
    Timer {
        id: timer2
        interval: 100
        onTriggered: {
            card.visible = false
            notification.y = -(notification.height)-50;
        }
    }

    Card {
        id: card
        width: 260
        height: 75
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        NumberAnimation on height { // show
            id: showAnim
            from: 0
            to: 75
            duration: 100
        }
        NumberAnimation on height { // show
            id: hideAnim
            from: 75
            to: 0
            duration: 100
        }
        Item {
            id: imgItem
            width: 75
            height: 75
            anchors.left: parent.left
            anchors.leftMargin: 0
            Image {
                id: img
                width: parent.width-28
                height: parent.height-28
                source: "../icons/notification.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        MatText {
            id: title
            type: "title"
            matText: title
            width: parent.width-imgItem.width-16
            height: parent.height/6
            anchors.top: parent.top
            anchors.topMargin: 15.5
            anchors.left: card.left
            anchors.leftMargin: imgItem.width
        }
        MatText {
            id: message
            type: "body"
            matText: text
            width: title.width
            anchors.top: title.bottom
            anchors.topMargin: 6
            anchors.left: card.left
            anchors.leftMargin: imgItem.width
        }
    }
}
