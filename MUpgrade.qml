import QtQuick

Rectangle {
    id: root
    property alias upgradeText: label.text
    signal clicked
    width: 150
    height: 100
    color: "lightgrey"
    border.color: "black"

    Text {
        id: label
        text: root.upgradeText
        anchors.centerIn: parent
    }

    MouseArea {
        id: clickeableField
        anchors.fill: parent
        onClicked: clicked
    }
}
