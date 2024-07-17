import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:myRect
        width: 200
        height: 200
        color: "#FF0000"
        anchors.centerIn: parent
    }

    SequentialAnimation
    {
        id:mySeq_1
        running: true
        loops: Animation.Infinite

        ParallelAnimation
        {
            id:myPara_1

            NumberAnimation
            {
                target: myRect
                property: "width"
                from: 200
                to: 300
                duration: 2000
                easing.type: Easing.InOutBounce
            }

            NumberAnimation
            {
                target: myRect
                property: "height"
                from: 200
                to: 300
                duration: 2000
                easing.type: Easing.InOutBounce
            }
        }

        ParallelAnimation
        {
            id:myPara_2

            NumberAnimation
            {
                target: myRect
                property: "width"
                from: 300
                to: 200
                duration: 2000
                easing.type: Easing.InOutBounce
            }

            NumberAnimation
            {
                target: myRect
                property: "height"
                from: 300
                to: 200
                duration: 2000
                easing.type: Easing.InOutBounce
            }
        }
    }
}
