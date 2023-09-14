import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/Items.dart';


class itemBestSeller extends StatelessWidget {

    Items items;
    itemBestSeller(this.items);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 130.5,
            width: 100,
            child: CachedNetworkImage(
              imageUrl: "${items.volumeInfo?.imageLinks?.thumbnail!}",
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: Text(overflow: TextOverflow.ellipsis,maxLines: 2,"${items.volumeInfo?.title}",
                style: Theme.of(context).textTheme.bodyLarge,),
            ),
            SizedBox(height: 3,),
            Text("${items.volumeInfo?.authors}",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 3,),
            Container(

              width: MediaQuery.of(context).size.width*0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("free ",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text("${items.volumeInfo?.pageCount}",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ],
              ),
            )

          ],
        ),



      ],
    );
  }
}
