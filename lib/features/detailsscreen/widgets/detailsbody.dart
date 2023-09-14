import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mybookly/core/shared/constant/constant.dart';
import 'package:mybookly/features/homeview/data/VolumeInfo.dart';

import 'likelistview.dart';

class detailsbody extends StatelessWidget {
  const detailsbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as VolumeInfo;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child:CachedNetworkImage(
                width: 200,
                height: 200,
                imageUrl: "${args.imageLinks?.thumbnail!}",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "${args.title}",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 50,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${args.authors}",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(
                "${args.pageCount}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "${args.language}",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ))),
              Container(
                width: 150,
                height: 48,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 130, 98, 1.0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    " Free Previews",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          likelistview(),
        ],
      ),
    );
  }
}
