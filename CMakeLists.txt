cmake_minimum_required(VERSION 4.4.3)
project(BlueRoseWorkspace VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
find_package(Qt6 REQUIRED COMPONENTS Quick Core)

qt_standard_project_setup()

qt_add_executable(BlueRoseWorkspace-app
main.cpp
)

set_source_files_properties(Theme/DefaultTheme.qml
    PROPERTIES
        QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(BlueRoseWorkspace-app
  URI BlueRoseWorkspace
  VERSION 1.0

  QML_FILES
    Main.qml
    components/Sidebar.qml
    components/Topbar.qml
    Theme/DefaultTheme.qml
)

target_link_libraries(BlueRoseWorkspace-app
  PRIVATE
  Qt6::Quick 
  Qt6::Core
)

