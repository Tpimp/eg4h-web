import QtQuick 2.8
Column{
    id:main;
    property string url:"main";
    width: 100%;

    Column {
        id: body;
        width:100%;
        property Gradient gradient: Gradient {
                    orientation: Gradient.Custom;
                    angle: 120;
                    GradientStop { position: 0; color: "#8BC34A";}
                    GradientStop { position: 1; color: "#00BCD4";}
                }

    }



//    WebItem {
//        id:toprect;
//        property Mixin drag: DragMixin { }
//        height: parent.height/3;
//        width:height;
//        x:parent.width/2 - width/2;
//        y:parent.height/2 - height/2;
//        color:"blue";
//        signal mySignal;
//        Text {
//            anchors.fill: parent;

//            text: 'Hello, world!';
//            font.pixelSize: toprect.height * .12 > 100 ? 100: toprect.height *.12;
//            verticalAlignment: Text.AlignVCenter;
//            horizontalAlignment: Text.AlignHCenter;
//            color:"white";
//        }
//        focus:true;
//        onClicked:{
//            this.mySignal("orange");
//            //mainrect.color = "blue";
//        }
//        onMySignal(color):{
//            mainrect.color = color;
//        }
//    }
//    WebItem{
//        color:"yellow";
//        border.width:4;
//        border.color:"blue";
//        height:toprect.height*.35;
//        width:toprect.width*.45;
//        anchors.left:toprect.right;
//        anchors.top:toprect.top;
//        anchors.topMargin:toprect.height*.25;
//        ListView {
//            anchors.fill:parent;
//            model: ListModel {
//                ListElement { text: "foo"; color:"green"; }
//                ListElement { text: "bar"; color:"red";}
//                ListElement { text: "baz"; color:"blue";}
//            }
//            delegate: Rectangle { width:parent.width-8; height:36; color:model.color; Text{ color:"white"; anchors.fill:parent; verticalAlignment: Text.AlignVCenter; horizontalAlignment: Text.AlignHCenter;  text: model.text; } }
//        }
//    }
//    Timer{
//        id:slideTimer;
//        running:false;
//        interval: 2000;
//        repeat:false;
//        onTriggered:{ titlebar.hideYellowBar(); slideAnimation.enable(); card.anchors.top = titlebar.bottom; }
//    }

//    onCompleted:{
//        //card.width = context.system.screenWidth;


//        slideTimer.start();
//    }
}



