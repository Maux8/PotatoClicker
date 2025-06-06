import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 200
        height: 200
        color: "red"
        anchors.centerIn: parent
    }
}
