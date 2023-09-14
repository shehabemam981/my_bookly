import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mybookly/core/shared/constant/constant.dart';
import 'package:mybookly/features/detailsscreen/presentation/view/detailsview.dart';
import 'package:mybookly/features/homeview/data/Bookmodel.dart';
import 'package:mybookly/features/homeview/data/Items.dart';

class viewImagesToListView extends StatelessWidget {

Items bookmodel;
viewImagesToListView(this.bookmodel);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width:165 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: CachedNetworkImage(
        imageUrl: "${bookmodel.volumeInfo?.imageLinks?.thumbnail!}",
        placeholder: (context, url) => Center(child: CircularProgressIndicator(
          color: constant.primarycolor,
        )),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
