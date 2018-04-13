import QtQuick 2.8

WebLink{
    id:parentRect;
    color:"transparent";
    border.color: "white";
    radius:2;
    border.width: 2;
    property string text;
    property string page;
    property string icon;
    Image{
        id:houseImage;
        anchors.left:parent.left;
        anchors.top: parent.top;
        anchors.bottom:parent.bottom;
        width:48;
        source:parent.icon;
        fillMode:Image.PreserveAspectFit;
        visible:parent.visible;
        Behavior on visible {
            Animation {
                duration: 5;
            }
        }
    }
    Text{
        anchors.left:houseImage.right;
        anchors.right: parent.right;
        anchors.top: parent.top;
        anchors.bottom: parent.bottom;
        anchors.margins: 2;
        text:parent.text;
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
        color:parentRect.border.color;
        font.pixelSize: parent.height*.7;
    }
}
