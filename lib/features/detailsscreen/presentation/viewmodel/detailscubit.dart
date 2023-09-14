import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/repo/repoApi/datasource.dart';
import 'package:mybookly/core/repo/repoApi/impl.dart';
import 'package:mybookly/features/detailsscreen/presentation/viewmodel/detailsStates.dart';

class detailscubit extends Cubit<detailsStates> {
  detailscubit() : super(initialdetailsStates());
  datasource data = datasource(reposatoryimpl());

  likesbook({required String Category}) async {
    var r = await data.ath.apidetails(category: Category);
    emit(loadingdetailsStates());
    r.fold((failure) => emit(errordetailsStates(failure.massege)),
        (likes) => emit(successdetailsStates(likes)));
  }
}
