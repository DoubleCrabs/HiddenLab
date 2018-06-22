import QtQuick 2.5
import QtQuick.Layouts 1.0

Item {
    id: menu
    signal gameStarted

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 5

        MainMenuButton {
            id: start
            text: "Новая игра"
            focus: true
            KeyNavigation.down: load
            Keys.onReturnPressed: {
                menu.gameStarted()
            }

            onVisibleChanged: {
                if (visible) focus = true
            }
        }

        MainMenuButton {
            id: load
            text: "Загрузить игру"
            KeyNavigation.down : settings
        }

        MainMenuButton {
            id: settings
            text: "Настройки"
            KeyNavigation.down : quit
        }

        MainMenuButton {
            id: quit
            text: "Выход"
            KeyNavigation.down : start
            Keys.onReturnPressed: Qt.quit()
        }
    }
}
