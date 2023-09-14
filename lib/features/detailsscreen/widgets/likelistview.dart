import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/features/detailsscreen/presentation/view/likeAlso.dart';
import 'package:mybookly/features/detailsscreen/presentation/viewmodel/detailsStates.dart';
import 'package:mybookly/features/detailsscreen/presentation/viewmodel/detailscubit.dart';
import 'package:mybookly/features/homeview/data/Items.dart';
import 'package:mybookly/features/homeview/widgets/viewImagesToListView.dart';

class likelistview extends StatelessWidget {
  const likelistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<detailscubit,detailsStates>(
      builder: (BuildContext context, state){
        if (state is successdetailsStates){
          var detailslist=state.details.items??[];
       return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             "You can also like",
             style: Theme.of(context).textTheme.bodyLarge,
           ),
           SizedBox(
             height: 20,
           ),
           Container(
             height: MediaQuery.of(context).size.height*0.25,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) => Padding(
                 padding: const EdgeInsets.all(10.0),
                  child: likeAlso(detailslist[index]),
               ),
               itemCount: detailslist.length,
             ),
           )
         ],
       );
        }else if(state is errordetailsStates){
          return Text(state.error);
        }else{
       return   Center(child: CircularProgressIndicator());
        }
      },

    );
  }
}
