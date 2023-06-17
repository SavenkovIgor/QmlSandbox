import QtQuick

Window {
    width: 640
    height: 480
    visible: true

    Rectangle {
        id: frame
        anchors.centerIn: parent
        width:  text.implicitWidth + 40
        height: text.implicitHeight * 3
        color: "mediumpurple"

        NumberAnimation {
            target: frame
            property: "rotation"
            duration: 2700
            from: 0; to: 360;
            easing.type: Easing.InOutCubic
            loops: Animation.Infinite

            Component.onCompleted: start()
        }

        Text {
            id: text
            anchors.centerIn: parent
            text: "Hello Qml on Github pages!"
        }
    }
}
