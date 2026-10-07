import QtQuick
import QtQuick.Controls
import BlueRoseWorkspace
Rectangle{
    id:sidebar
    height:parent.height
    color:DefaultTheme.bg
    border.width:0.50
    border.color:DefaultTheme.lights
    property bool compress:false

    Behavior on width{
        NumberAnimation{
            duration:150
            easing.type:Easing.OutCubic
        }
    }

    Column{
        anchors.fill:parent 

        spacing:10

        
        Rectangle{
            width:parent.width
            height:300
            color:"transparent"
            Row{
                anchors.fill:parent
                spacing:0
                Text{
                    visible: sidebar.compress ? false:true
                    text: "Blue Rose"
                    color:DefaultTheme.text_off
                    width:parent.width / 2 - 20
                    font.pixelSize:16
                    font.family:DefaultTheme.fontFamily
                    horizontalAlignment:Text.AlignHCenter
                }
                Text{
                    visible: sidebar.compress ? false:true
                    text:"WORKSPACES"
                    color:DefaultTheme.lights
                   
                    font.pixelSize:18
                    width:parent.width / 2 - 20
                    font.bold:true
                    font.family:DefaultTheme.fontFamily
                }
                Text{
                    id:toggleBarBtn
                    color:DefaultTheme.text_off
                    text:""
                    width:sidebar.compress ? parent.width:30
                    height:30
                    font.family:DefaultTheme.fontFamily
                    font.pixelSize:20
                    horizontalAlignment:sidebar.compress ? Text.AlignHCenter:undefined
                     
                    HoverHandler{
                        cursorShape:Qt.PointingHandCursor
                    }

                    MouseArea{
                        anchors.fill:parent 
                        onClicked:{
                            sidebar.compress = !sidebar.compress
                        }
                    }
                    
                }
            }
            
        }

        Rectangle{
            width:parent.width
            height:parent.height
            
            color:"transparent"

            Column{
                anchors.fill:parent 
                spacing:0
                Repeater{
                    model:sidebar.compress ? ["󰟒","",""]:["Home", "Git Analythics", "Blue Peace"]

                    delegate: Rectangle{
                        color:"transparent"
                        width:parent.width
                        height:40 
                        

                        Text{
                            anchors.fill:parent
                            text:modelData
                            color:DefaultTheme.text_off
                            font.family:DefaultTheme.fontFamily
                            font.pixelSize:20
                            font.bold:true 
                            horizontalAlignment:Text.AlignHCenter
                            verticalAlignment:Text.AlignVCenter
                            anchors.horizontalCenterOffset: -5
                        }
                    }
                }
                
            }
        }
    }
}