
import 'package:forntent_project_3/language/bngla.dart';
import 'package:forntent_project_3/language/eng.dart';
import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US":eng,
    "bn_BD":ban,
  };
}