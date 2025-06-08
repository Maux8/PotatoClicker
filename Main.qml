import QtQuick
import PotatoClicker 1.0

Window {
    id: root
    width: 1200
    height: 680
    title: "Potato Clicker"
    visible: true
    property int kartoffeln: 0

    Image {
        id: acker
        anchors.fill: parent
        source: "qrc:/Images/Kartoffelacker.png"

        MKartoffelDisplay {
            id: kartoffelDisplay
            displayKartoffeln: root.kartoffeln
        }

        MKartoffel {
            id: dieKartoffel
            onClicked: root.kartoffeln++
        }
    }
}
