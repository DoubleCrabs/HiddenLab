import QtQuick 2.5
import QtQuick.Layouts 1.2

Item {
    id: gameplay
    visible: false
    signal gameStopped

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 5
        MainMenuButton {
            id: returnToMainMenu
            text: "Вернуться \n в главное меню"
            Keys.onReturnPressed: gameStopped()
            onVisibleChanged: {
                if (visible) focus = true
            }
        }
    }
}
