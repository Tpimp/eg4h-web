import QtQuick 2.4
Rectangle {
    id: titleTop;
    anchors.top:parent.top;
    height:10% > 48? 48:10%;
    width:100%;
    color:"black";
    property bool open;
    Text{
        anchors.right:parent.right;
        verticalAlignment: Text.AlignBottom;
        font.pixelSize: parent.height * .65;
        text:"Engineer4Hire";
        font.family: "Times New Roman";
        anchors.rightMargin:width/30;
        color:"white";
        anchors.top:parent.top;
        anchors.bottom:parent.bottom;
    }


    WebItem{
        anchors.left:parent.left;
        anchors.top:parent.top;
        anchors.bottom:parent.bottom;
        width: height < (width*.1) ? width*.1:height;
        color:"#434343ff";
        anchors.margins: 4;
        radius:4;
        Column{
            anchors.fill: parent;
            anchors.topMargin:parent.height/5;
            spacing:parent.height/6;
            anchors.leftMargin:4;
            anchors.rightMargin:4;
           Rectangle{
               height:parent.height/8;
               width:parent.width;
               color:"white";
           }
           Rectangle{
               height:parent.height/8;
               width:parent.width;
               color:"white";
           }
           Rectangle{
               height:parent.height/8;
               width:parent.width;
               color:"white";
           }
        }
        focus:true;
        onClicked:{
            titleTop.open = !titleTop.open;
        }
    }
    WebItem{
        id:overlay;
        width:titleTop.open ? context.system.screenWidth:0;
        height: context.system.screenHeight;
        anchors.top:parent.top;
        border.width: 0;
        anchors.left:parent.left;
        color:"transparent";
        opacity:1;
        focus:true;
        onClicked:{
            titleTop.open = false;
        }

        Rectangle{
            id:titleMenu;
            anchors.topMargin:titleTop.height + 2;
            anchors.top: parent.top;
            height:parent.height;
            color:"black";
            border.width: 3;
            opacity: .8;
            radius:2;
            border.color:"white";
            width:overlay.width/3 > 320 ? 320: overlay.width/3;
            anchors.left:parent.left;
            Grid
            {
                anchors.fill: parent;

            }
            Behavior on width { Animation { duration: 400; }}
        }
    }
    onCompleted: {
        this.style('position', 'fixed')
        this.style('will-change', 'transform')
    }
}
