import qbs
Product{
    Group{
        name:"qml"
        prefix:"**/"
        files:[
            "*.qml",
            "../build.web/MyCard.png",
            "../run_firefox.sh",
        ]
    }
}
