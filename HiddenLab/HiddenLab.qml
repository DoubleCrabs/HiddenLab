import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: window
    width: 1024
    height: 768
    title: qsTr("Hidden Lab")

    visible: true

    MouseArea {
        id: ma
        hoverEnabled: false
        anchors.fill: parent
       enabled: false
       cursorShape: Qt.BlankCursor
    }


    Item {
        width: window.width
        height: window.height

        Rectangle {
            width: window.width
            height: window.height
            color: "gray"
        }

        MainMenu {
            id: menu
            anchors.centerIn: parent
            onGameStarted: parent.state = "gameplay"
        }

        Gameplay {
            id: gameplay
            anchors.centerIn: parent
            onGameStopped: parent.state = "menu"
        }

        states: [
            State {
                name: "menu"
                PropertyChanges {
                    target: menu
                    visible: true
                 }
                PropertyChanges {
                    target: gameplay
                    visible: false
                }
            },
            State {
                name: "gameplay"
                PropertyChanges {
                    target: menu
                    visible: false
                }

                PropertyChanges {
                    target: gameplay
                    visible: true
                }

            }
        ]

        state: "menu"
    }
}
