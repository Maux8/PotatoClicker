import QtQuick

Image {
    id:root
    signal clicked
    source: "qrc:/Images/EineAusgeschnitteneKartoffeln.png"
    scale: 0.2
    anchors.centerIn: parent

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
