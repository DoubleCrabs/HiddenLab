import QtQuick 2.5

Item {
    id: button
    width: 300
    height: 50
    property string text: ""
    Rectangle {
        anchors.fill: parent
        color: parent.focus ? "green" : "white"
        radius: 10
    }
    Text {
        id: text
        text: parent.text
        anchors.centerIn: parent
        font.pointSize: 20
        color: "black"
    }
}
