import 'package:flutter/material.dart';


import 'homeview/widgets/splashviewUi.dart';

class splashscreen extends StatelessWidget {
static const String routeName="splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashviewUi(),
    );
  }
}
