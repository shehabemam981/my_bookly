import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/features/homeview/presentation/homecubit.dart';
import 'package:mybookly/features/homeview/presentation/homestates.dart';

import 'itemBestSeller.dart';

class bestSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>homecubit()..newest(),
      child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("News books",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 30),),
                BlocBuilder<homecubit,homestates>(
                  builder: (BuildContext context, state) {
                     if(state is successneweststates){
                       print("shehab");
                      var result=state.book.items??[];
                      return Expanded(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: itemBestSeller(result[index]),
                          ),
                          itemCount:result.length ,),
                      );
                    }else if(state is errorneweststates){
                      return Text(state.error);
                    }
                    else{
                      return Center(child: CircularProgressIndicator(),);
                    }

                  },

                )
              ],
            ),
      ),
    );
  }
}
