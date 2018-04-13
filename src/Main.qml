import QtQuick 2.8
Image{
    id:main;
    property string url:"main";
    property int    barHeight;
    width: 100%;
    source:"Fractal.png";
    fillMode:Image.Stretch;

    OverflowMixin { value: OverflowMixin.ScrollY; }
    Column {
        id: body;
        width:100%;
        spacing:60;
        anchors.top:parent.top;
        anchors.topMargin:main.barHeight;
        Row{
            width:100%;
            height:main.width/3.5;
            Rectangle{
                id:spacer1;
                color:"transparent";
                width:35%;
            }

            Rectangle{
                id: languagesCard;
                width:main.width/5.7;
                height:main.width/3.8;
                radius:10;
                //border.color:"black";
                //border.width:2;

                color:"transparent";
                Behavior on x { Animation{ duration:500; } }
                Image{
                    id:languageImage;
                    anchors.top:parent.top;
                    anchors.bottom:parent.bottom;
                    anchors.left:parent.left;
                    anchors.topMargin:-parent.height/5;
                    anchors.right:parent.right;
                    source:"languages.png";
                    fillMode:Image.PreserveAspectFit;
                    Behavior on width,height { Animation{ duration:500; } }
                }
                Text{
                    id:languageText;
                    color:"white";
                    text:"Proficient in<br>10+ languages";
                    anchors.horizontalCenter: languageImage.horizontalCenter;
                    anchors.bottom:parent.bottom;
                    height:parent.height*.25;
                    horizontalAlignment:Text.AlignHCenter;
                    verticalAlignment:Text.AlignVCenter;
                    font.pixelSize: height * .25;
                    Behavior on height,x,y { Animation{ duration:500; } }

                }
                Rectangle{
                    anchors.fill:parent;
                    color:"transparent";
                    z:languageImage.z +3;
                    property Mixin hover: HoverClickMixin {
                        onValueChanged: {
                            if (!value){
                                languagesCard.width = main.width/5.7;
                                //languagesCard.x = main.width- (idCard.width+25);
                                languagesCard.height = main.width/3.8;
                            }
                            else
                            {
                                languagesCard.width = main.width/4;
                                //languagesCard.x = main.width- (idCard.width+25);
                                languagesCard.height = main.width/2.2;
                            }
                        }
                    }
                }
                Behavior on width,height { Animation{ duration:500; } }
            }
            Rectangle{
                id: idCard;
                width:main.width/3.5;
                height:main.width/3;
                property Mixin hover: HoverClickMixin {
                    onValueChanged: {
                        if (!value){
                            spacer1.width = main.width *.35;
                            idCard.width = main.width/3.5;
                            //idCard.x = main.width- (idCard.width+25);
                            idCard.height = main.width/3;
                        }
                        else
                        {
                            spacer1.width = main.width *.25;
                            idCard.width = main.width/2.8;
                            //idCard.x = main.width- (idCard.width+25);
                            idCard.height = main.width/2.2;
                        }
                    }
                }

                color:"transparent";
                //x:main.width - (idCard.width+25);
                //anchors.left:languagesCard.right;
                //anchors.leftMargin:main.width/20;
                Behavior on x { Animation{ duration:400; } }
                Image{
                    anchors.fill:parent;
                    source:"ID.png";
                    fillMode:Image.PreserveAspectFit;
                    Behavior on width,height { Animation{ duration:500; } }
                }
            }
        }
        Rectangle{
            width:22%;
            color:"yellow";
            height:600;
        }
        Rectangle{
            width:35%;
            color:"green";
            height:400;
        }
        Row {
            height: 100;
            spacing: 10;
            width:100%;
            Rectangle { width: 45%; height: 100; color: "red"; }
            Rectangle { width: 52%; height: 100; color: "blue"; }
        }
        Rectangle{
            width:100%;
            color:"orange";
            height:400;
        }
        Rectangle{
            width:100%;
            color:"teal";
            height:400;
        }
        Rectangle{
            width:100%;
            color:"red";
            height:400;
        }
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




