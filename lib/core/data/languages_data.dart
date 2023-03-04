import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/core/data/raw/languages.dart';

class LanguagesData {
  static List<Language> data = _dataFromMap();

  static List<Language> _dataFromMap() =>
      languagesRawData.map(Language.fromJson).toList();
}
