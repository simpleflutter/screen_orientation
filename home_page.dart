import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  bool isLandscape = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.screen_rotation),
            onPressed: () {
              manageOrientation();
            },
          )
        ],
      ),
    );
  }

  void manageOrientation() {
    isLandscape = !isLandscape;

    if (isLandscape) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    } else {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }
}
