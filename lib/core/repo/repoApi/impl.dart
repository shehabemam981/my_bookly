import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mybookly/core/repo/repoApi/ath.dart';
import 'package:mybookly/core/shared/constant/constant.dart';
import 'package:mybookly/features/homeview/data/Bookmodel.dart';

import '../../shared/failure.dart';

class reposatoryimpl implements reposatoryAth{
  final dio=Dio();
  @override
  Future<Either<Failure,Bookmodel>> apihome1() async{
  try{

    var result=await dio.get(
      constant.api
    );
   var json=  Bookmodel.fromJson(result.data);
   return right(json);
  }catch(e){
    if(e is DioError){
      return left(servicefailure.fromDioError(e));
    }
     return left(servicefailure(e.toString()));
  }

}

  @override
  Future<Either<Failure, Bookmodel>> apihome2()async {
    try{
      var response=await dio.get(constant.api2);
    var json=  Bookmodel.fromJson(response.data);
    return right(json);
    }catch(e){
    if(e is DioError){
      return left(servicefailure.fromDioError(e));
    }
    return left(servicefailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Bookmodel>> apidetails({required String category})async {
    try{
      var response=await dio.get(constant.api3);
      var json=Bookmodel.fromJson(response.data);
      return right(json);
     }catch(e){
      if(e is DioError){
        return left(servicefailure.fromDioError(e));
      }
      return left(servicefailure(e.toString()));
    }
  }
  }