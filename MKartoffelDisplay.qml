import QtQuick

Rectangle {
    id: root
    property alias displayKartoffeln: root.kartoffeln
    property int kartoffeln
    width: 180
    height: 30
    color: "orange"
    border.color: "black"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.margins: 10

    Text {
        id: kartoffelDisplay
        text: "Deine Kartoffeln: " + root.displayKartoffeln
        anchors.centerIn: parent
    }
}
