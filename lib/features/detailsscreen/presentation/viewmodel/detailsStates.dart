

import '../../../homeview/data/Bookmodel.dart';

abstract class detailsStates{}
class initialdetailsStates extends detailsStates{}
class loadingdetailsStates extends detailsStates{}
class successdetailsStates extends detailsStates{
  Bookmodel details;
  successdetailsStates(this.details);
}
class errordetailsStates extends detailsStates{
  String error;
  errordetailsStates(this.error);
}