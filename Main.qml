import QtQuick
import PotatoClicker 1.0

Window {
    id: root
    width: 1200
    height: 680
    title: "Potato Clicker"
    visible: true

    Image {
        id: acker
        anchors.fill: parent
        source: "qrc:/Images/Kartoffelacker.png"

        Text {
            id: kartoffelDisplay
            property int kartoffeln
            text: "Deine Kartoffeln: " + kartoffeln
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: fakeKartoffel
            width: 2 * height
            height: 80
            anchors.centerIn: parent
            color: "orange"
            border.color: "brown"

            Text {
                id: kartoffelText
                text: "Ich bin eine Kartoffel!"
                anchors.centerIn: parent
            }

            MouseArea {
                id: kartoffelArea
                anchors.fill: parent
                onClicked: kartoffelDisplay.kartoffeln++
            }
        }
    }

    MButton {
        text: "Test"
    }
}
