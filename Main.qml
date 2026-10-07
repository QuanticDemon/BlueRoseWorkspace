import QtQuick
import QtQuick.Controls
import BlueRoseWorkspace
import "components"
ApplicationWindow{
  id:appMain
  visible: true 
  width: 800
  height: 800 

  title: "Blue Rose Workspaces"

  Rectangle{
    anchors.fill: parent 
    color:DefaultTheme.bg


    Column{
        anchors.fill:parent 
        Topbar{
            id:topbar
            width:parent.width
            height:35
            
        }
        Row{
            width:parent.width
            height:parent.height - topbar.height
            spacing:0
            Sidebar{
                id:sidebar
                width:sidebar.compress ? 50:300
                height:parent.height
            }
        }
    }
    
  }

}
