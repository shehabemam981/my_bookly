import 'package:flutter/material.dart';
import 'package:mybookly/features/homeview/widgets/bestSeller.dart';
import 'package:mybookly/features/homeview/widgets/imgeslistview.dart';
import 'package:mybookly/features/searchscreen/searchview.dart';


class homeview extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(

              children: [
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/LOGO.png",width: 110),
                    IconButton(onPressed: (){
                     Navigator.pushNamed(context, searchview.routeName,);
                    }, icon:Icon(Icons.search,color: Colors.white,)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                imageslistview(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            ),
        ),

          SliverFillRemaining(
            child: bestSeller(),
          ),
        ]
      ),
    );
  }
}
