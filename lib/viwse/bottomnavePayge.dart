import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavePayge extends StatelessWidget {
  const BottomNavePayge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [

          IconButton(
              onPressed: (){},
            icon: FaIcon(FontAwesomeIcons.temperatureQuarter),
          ),
        ],
      ),
    );
  }
}
