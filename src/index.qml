import QtQuick 2.8

ScrollView {
    anchors.fill: context;
    property Object state: context.location.state;

    onStateChanged: {
        log("State", value, "pageName", pages.pageName)
        if (value) {
            if (value.page && value.page !== "")
                pages.pageName = value.page;
            else
                pages.pageName = 'main';
            window.scrollTo(0, 0)
        }
    }



    TitleBar { id: title; z: 2; }

    //ColorTheme { id: colorTheme; }
    Main{
        id:mainContent;
        anchors.top:title.bottom;
        anchors.bottom:parent.bottom;
        anchors.left:parent.left;
        anchors.right:parent.right;
        onCompleted:{
            title.currentItem = this;
            this.barHeight = title.height + 4;
        }
    }

    PageStack {
        id: pages;
        property string pageName;
        y: 50;
        width: 100%;

        onPageNameChanged: {
            var children = this.children
            for (var i in children) {
                if (children[i].url == value) {
                    this.currentIndex = i
                    return
                }
            }
        }

//        GettingStarted { }
//        Download { }
//        Lessons { }
//        Docs { }

        onCompleted: { this.pageName = ""; }
    }

    Item {
        anchors.top: pages.bottom;
        width: 100%;
        height: 140;
    }
    onCompleted: {
        if (!window.location.hostname)
            return

        var path = window.location.pathname.split("/")
        var state = {}
        if (path[1])
            state.page = path[1]
        if (path[2])
            state.section = path[2]
        if (path[3])
            state.element = path[3]

        log("pushState", state, "pathname", window.location.pathname)
        this._context.location.pushState(state, window.location.pathname, window.location.pathname)
        console.log("setting current item to main content");
    }
}
