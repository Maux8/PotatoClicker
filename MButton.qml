import QtQuick

Rectangle {
    id: root
    property alias buttonText: label.text
    property alias buttonWidth: root.width
    property alias buttonHeight: root.height
    property alias buttonColor: root.color
    signal clicked
    width: buttonWidth
    height: buttonHeight
    color: buttonColor
    border.color: "black"

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
