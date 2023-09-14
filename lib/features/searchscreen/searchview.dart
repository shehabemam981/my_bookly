import 'package:flutter/material.dart';
import 'package:mybookly/features/searchscreen/widgets/searchbody.dart';

class searchview extends StatelessWidget {
  static const String routeName="search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: searchbody(),
    );
  }
}
