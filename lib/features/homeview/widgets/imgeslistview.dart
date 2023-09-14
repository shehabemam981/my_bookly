import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/shared/constant/constant.dart';
import 'package:mybookly/features/homeview/data/VolumeInfo.dart';
import 'package:mybookly/features/detailsscreen/presentation/view/detailsview.dart';
import 'package:mybookly/features/homeview/data/Items.dart';
import 'package:mybookly/features/homeview/presentation/homecubit.dart';
import 'package:mybookly/features/homeview/presentation/homestates.dart';
import 'package:mybookly/features/homeview/widgets/viewImagesToListView.dart';

class imageslistview extends StatelessWidget {
  const imageslistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => homecubit()..part1home(),
      child: BlocBuilder<homecubit, homestates>(
        builder: (context, state) {
          if (state is successhomestates) {
            var result = state.book.items ?? [];
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          detailsScreen.routeName,
                          arguments: VolumeInfo(
                            title: result[index].volumeInfo?.title,
                            authors: result[index].volumeInfo?.authors,
                            categories: result[index].volumeInfo?.categories,
                            pageCount: result[index].volumeInfo?.pageCount,
                            language: result[index].volumeInfo?.language,
                            imageLinks: result[index].volumeInfo?.imageLinks,
                          )
                        );
                      },
                      child: viewImagesToListView(result[index])),
                ),
                itemCount: result.length,
              ),
            );
          } else if (state is errorhomestates) {
            return Text(
              state.error,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            );
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: constant.primarycolor,
            ));
          }
        },
      ),
    );
  }
}
