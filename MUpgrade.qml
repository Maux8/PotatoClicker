import QtQuick

Rectangle {
    id: root
    property alias upgradeText: label.text
    property alias upgradeCost: root.cost
    property alias upgradeInterval: autoClicker.interval
    signal manualClick
    signal autoClick
    property int kartoffeln: 0
    property int cost: 0
    property int clickStrength: 0
    width: 150
    height: 100
    color: autoClicker.running ? "lightblue" : "lightgrey"
    border.color: "black"

    Text {
        id: label
        text: root.upgradeText
        anchors.centerIn: parent
    }

    MouseArea {
        id: clickeableField
        anchors.fill: parent
        onClicked: {
            if (root.kartoffeln >= root.upgradeCost) {
                root.manualClick()
                autoClicker.start()
                upgradeCost += 10
                clickStrength += 1
            }
        }
    }

    Timer {
        id: autoClicker
        interval: root.upgradeInterval
        repeat: true
        running: false
        onTriggered: root.autoClick()
    }
}
