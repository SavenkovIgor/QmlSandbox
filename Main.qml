import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true

    SplitView {
        id: split
        anchors.fill: parent
        orientation: Qt.Horizontal

        TextEdit {
            id: qmlCodeEditor
            SplitView.minimumWidth: 300
            onTextChanged: componentItem.create()
            text: "import QtQuick\n\nRectangle { width: 10\nheight: 10\ncolor: \"coral\"\n}"
        }

        Item {
            id: componentItem
            property var codeItem: null

            function create() {
                if (codeItem)
                    codeItem.destroy()

                codeItem = Qt.createQmlObject(qmlCodeEditor.text, componentItem)
            }
        }
    }
}
