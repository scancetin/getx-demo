import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Home Page',
          'changeLang': '@emoji Change Language',
          'changeTheme': 'Change Theme',
        },
        'tr_TR': {
          'title': 'Ana Sayfa',
          'changeLang': '@emoji Dili Değiştir',
          'changeTheme': 'Temayı Değiştir',
        },
      };
}
