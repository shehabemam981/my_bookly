import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/repo/repoApi/datasource.dart';
import 'package:mybookly/core/repo/repoApi/impl.dart';
import 'package:mybookly/features/homeview/presentation/homestates.dart';

class homecubit extends Cubit<homestates> {
  homecubit() : super(initialhomestates());
  datasource data = datasource(reposatoryimpl());

  part1home() async {
    emit(loadinghomestates());
    var result = await data.ath.apihome1();
    result.fold((failure) => emit(errorhomestates(failure.massege)),
        (book) => emit(successhomestates(book)));
  }

  newest() async {
    emit(loadingneweststates());
    var result1 = await data.ath.apihome2();
    result1.fold((fsilure) => emit(errorneweststates(fsilure.massege)),
        (newest) {
      return emit(successneweststates(newest),);});
  }
}
