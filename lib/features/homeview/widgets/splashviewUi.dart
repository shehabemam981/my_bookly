import 'package:flutter/material.dart';
import 'package:mybookly/core/shared/themes/themes.dart';
import 'package:mybookly/features/homeview/presentation/homeview.dart';
class splashviewUi extends StatefulWidget {


  @override
  State<splashviewUi> createState() => _splashviewUiState();
}

class _splashviewUiState extends State<splashviewUi>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation1;
  late Animation<Offset> animation2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, homeview.routeName);
    });
   animationController= AnimationController(vsync: this,duration: Duration(seconds: 1) );
    animation2=Tween<Offset>(begin: Offset(-0, -30),end:Offset.zero ).animate(animationController);
    animation1=Tween<Offset>(begin:Offset(0,30) , end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) =>  SlideTransition(
                position: animation2,
                child: Image.asset("assets/images/LOGO.png")),
          ),
          SizedBox(
            height: 2,
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) => SlideTransition(
                position: animation1,
                child: Text("Books Free",style: Theme.of(context).textTheme.bodyLarge)),
          ),

        ],
      ),
    );
  }
}
