import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          print('Back Button Pressed');
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Medform'),
          ),
          body: Container(),
          floatingActionButton: SpeedDial(
            /// both default to 16
            marginEnd: 18,
            marginBottom: 20,
            // animatedIcon: AnimatedIcons.menu_close,
            // animatedIconTheme: IconThemeData(size: 22.0),
            /// This is ignored if animatedIcon is non null
            icon: Icons.add,
            activeIcon: Icons.remove,
            // iconTheme: IconThemeData(color: Colors.grey[50], size: 30),
            /// The label of the main button.
            // label: Text("Open Speed Dial"),
            /// The active label of the main button, Defaults to label if not specified.
            // activeLabel: Text("Close Speed Dial"),
            /// Transition Builder between label and activeLabel, defaults to FadeTransition.
            // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
            /// The below button size defaults to 56 itself, its the FAB size + It also affects relative padding and other elements
            buttonSize: 56.0,
            visible: true,

            /// If true user is forced to close dial manually
            /// by tapping main button and overlay is not rendered.
            closeManually: false,

            /// If true overlay will render no matter what.
            renderOverlay: false,
            curve: Curves.bounceIn,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            onOpen: () => print('OPENING DIAL'),
            onClose: () => print('DIAL CLOSED'),
            tooltip: 'Speed Dial',
            heroTag: 'speed-dial-hero-tag',
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            elevation: 8.0,
            shape: CircleBorder(),
            // orientation: SpeedDialOrientation.Up,
            // childMarginBottom: 2,
            // childMarginTop: 2,
            children: [
              SpeedDialChild(
                child: Icon(Icons.report),
                backgroundColor: Colors.red,
                label: 'Feridas Cirúrgicas',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {
                  Navigator.of(context).pushNamed('/cirurgico_form');
                },
                onLongPress: () => print('FIRST CHILD LONG PRESS'),
              ),
              SpeedDialChild(
                child: Icon(Icons.report),
                backgroundColor: Colors.yellow,
                label: 'Feridas Oncológicas',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {
                  Navigator.of(context).pushNamed('/oncologico_form');
                },
                onLongPress: () => print('SECOND CHILD LONG PRESS'),
              ),
            ],
          ),
        ),
      );
}
