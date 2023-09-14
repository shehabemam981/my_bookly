import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure{
  String massege;
  Failure(this.massege);
}
class servicefailure extends Failure{
  servicefailure(super.massege);
  factory servicefailure.fromDioError(DioError dioError){
    switch (dioError.type){
      case DioErrorType.connectionTimeout:
        servicefailure("Connection time out with connection servce");
        break;
      case DioErrorType.sendTimeout:
        servicefailure("u are very late ,please try again");
        break;
      case DioErrorType.receiveTimeout:
        servicefailure("recive time out wit api server");
        break;
      case DioErrorType.badCertificate:
        servicefailure("bad certificate with api service");
        break;
      case DioErrorType.badResponse:
        servicefailure("bad responsewith api service");
        break;
      case DioErrorType.cancel:
        servicefailure("u are cancel it ok!");
        break;
      case DioErrorType.connectionError:
        servicefailure("please connection with network ,try again!");
        break;
      case DioErrorType.unknown:
        servicefailure("please connection with network ,try again!");
        break;
    }
    return servicefailure("please connection with network ,try again!");
  }
  factory servicefailure.fromBadResponse(int code,dynamic response){
    if(code==401|| code==402||code==400){
      return servicefailure(response["massege"]["error"]);
    }else if(code==404){
      return servicefailure("not found");
    }else{
      return servicefailure("something went wrong");
    }
  }
}