import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("JasonQt_RQCode Demo")
    width: 320
    height: 548
    visible: true

    JasonQt_RQCode {
        id: rqcodeScan
        visible: false
        anchors.fill: parent

        onTagFind: {
            buttonScan.text = "Scan";
            rqcodeScan.visible = false;
            labelRQCodeTag.text = tag;
        }
    }

    Label {
        id: labelRQCodeTag
        x: 14
        y: 20
        width: 293
        height: 95
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 20
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: buttonScan
        x: 102
        width: 116
        height: 49
        text: qsTr("Scan")
        anchors.horizontalCenterOffset: 0
        anchors.top: labelRQCodeTag.bottom
        anchors.topMargin: 127
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: {
            if(text == "Scan")
            {
                text = "Stop";
                rqcodeScan.visible = true;
                rqcodeScan.startScan();
                labelRQCodeTag.text = "";
            }
            else
            {
                text = "Scan";
                rqcodeScan.visible = false;
            }
        }
    }
}
