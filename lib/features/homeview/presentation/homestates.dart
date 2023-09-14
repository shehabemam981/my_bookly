import 'package:mybookly/features/homeview/data/Bookmodel.dart';


abstract class homestates{}
class initialhomestates extends homestates{}
class loadinghomestates extends homestates{}
class successhomestates extends homestates{
  Bookmodel book;
  successhomestates(this.book);
}
class errorhomestates extends homestates{
  String error;
  errorhomestates(this.error);
}
class initialneweststates extends homestates{}
class loadingneweststates extends homestates{}
class successneweststates extends homestates{
  Bookmodel book;
  successneweststates(this.book);
}
class errorneweststates extends homestates{
  String error;
  errorneweststates(this.error);
}