import QtQuick

Rectangle {
    id: root
    property alias text: label.text
    signal clicked
    width: 40
    height: 75
    color: "red"
    border.color: "brown"

    Text {
        id: label
        anchors.centerIn: parent
        text: root.text
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
