import 'package:flutter/material.dart';

import './screens/landing.dart';

void main() => runApp(FoodPandaUiClone());

class FoodPandaUiClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Panda UI Clone',
      home: Landing(),
      debugShowCheckedModeBanner: false,
    );
  }
}
