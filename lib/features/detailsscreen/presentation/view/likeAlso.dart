import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mybookly/core/shared/constant/constant.dart';

import 'package:mybookly/features/detailsscreen/presentation/view/detailsview.dart';

import '../../../homeview/data/Items.dart';



class likeAlso extends StatelessWidget {
Items details;
likeAlso(this.details);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, detailsScreen.routeName);
      },
      child: Container(
        height: 225,
        width:165 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: CachedNetworkImage(
          imageUrl: "${details.volumeInfo?.imageLinks?.thumbnail!}",
          placeholder: (context, url) => Center(child: CircularProgressIndicator(
            color: constant.primarycolor,
          )),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
