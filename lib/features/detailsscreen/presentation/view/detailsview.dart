import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/features/detailsscreen/presentation/viewmodel/detailscubit.dart';
import 'package:mybookly/features/detailsscreen/widgets/detailsbody.dart';
import 'package:mybookly/features/homeview/data/Bookmodel.dart';

class detailsScreen extends StatelessWidget {
  static const String routeName="details";
 String category="";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>detailscubit()..likesbook(Category: category),
      child: Scaffold(
           body:detailsbody(),
      ),
    );
  }
}
