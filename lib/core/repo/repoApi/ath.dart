import 'package:dartz/dartz.dart';
import 'package:mybookly/core/shared/failure.dart';


import '../../../features/homeview/data/Bookmodel.dart';

abstract class reposatoryAth{
  Future<Either<Failure,Bookmodel>> apihome1();
  Future<Either<Failure,Bookmodel>> apihome2();
  Future<Either<Failure,Bookmodel>> apidetails({required String category});
}