import QtQuick 2.4
Rectangle {
    id: titleTop;
    anchors.top:parent.top;
    height:10% > 48? 48:10%;
    width:100%;
    color:"black";
    property bool open;
    property var  currentItem;
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
    function openMenu()
    {
        titleTop.open = true;
        titleMenu.setFocus();
    }
    function closeMenu()
    {
        titleTop.open = false;
        if(titleTop.currentItem != null)
        {
            titleTop.currentItem.setFocus();
        }
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
        focus:titleTop.open;
        onClicked:{
            if(titleTop.open){
                titleTop.closeMenu();
            }
            else{
                titleTop.openMenu();
            }
        }
    }
    WebItem{
        id:overlay;
        width: titleTop.width;
        x:titleTop.open ? 0:-titleTop.width;
        height: context.system.screenHeight;
        //enable: titleTop.open;
        anchors.top:parent.top;
        anchors.topMargin:titleTop.height;
        border.width: 0;
        color:"transparent";
        focus:titleTop.open;
        onClicked:{
            titleTop.closeMenu();
        }

        Rectangle{
            id:titleMenu;
            anchors.topMargin:titleTop.height;
            x:titleTop.open ? 0:-titleTop.width/2;
            height:parent.height;
            color:"black";
            border.width:0;
            opacity: .8;
            radius:2;
            width:titleTop.width/2;
            Column{
                anchors.fill: parent;
                anchors.margins: 4;
                spacing:8;
                MenuItem {
                    text: "Home";
                    page: "";
                    width:titleMenu.width -8;
                    height:48;
                    icon:"house.png";
                    visible:titleTop.open;
                    onClicked(e):{
                        console.log("Clicked Home");
                    }
                }
                MenuItem {
                    text: "Projects";
                    border.color: "red";
                    page: "";
                    width:titleMenu.width -8;
                    height:48;
                    icon:"house.png";
                    visible:titleTop.open;
                }
                MenuItem {
                    border.color: "blue";
                    text: "Test3";
                    page: "";
                    width:titleMenu.width -8;
                    height:48;
                    icon:"house.png";
                    visible:titleTop.open;
                }
            }
            Behavior on x {
                Animation {
                    duration: 400;
                }
            }
        }
    }
    onCompleted: {
        this.style('position', 'fixed')
        this.style('will-change', 'transform')
        titleTop.currentItem = null;
    }
}
