import QtQuick

Window {
    id:root
    width: 640
    height: 480
    visible: true
    color: "#00000000"
    title: qsTr("simple window")
    property int dragX: 0
    property int dragY: 0
    property bool dragging: false
    flags: Qt.FramelessWindowHint
    Rectangle {
        color: "lightblue"
        anchors.fill: parent
        radius: 10
        MouseArea {
            anchors.fill: parent
            onPressed:{
                root.dragX = mouseX
                root.dragY = mouseY
                root.dragging = true
            }
            onReleased: root.dragging = false
            onPositionChanged:{
                if(root.dragging){
                    root.x += mouseX - root.dragX
                    root.y += mouseY - root.dragY
                }
            }

        }
    }

}
