import 'package:get/get.dart';

class TransUtils extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
         'en_US': {
           "all":"all",
           "lessons":"lessons",
           "live":"live",
           "homeworks":"homeworks",
           "tests":"Tests",
          'Home': 'Home',
          
                    'Arabic': 'Arabic',
                    'Lesson number': 'Lesson number',

          "Dark Mode": "Dark Mode",
        },
        'ar_IQ': {
            "all":"الكل",
           "lessons":"الدروس",
           "live":"البث المباشر",
           "homeworks":"الواجبات",
           "tests":"الاختبارات",
          'Home': 'الرئيسية',
          "Dark Mode": "الوضع الليلي",
          'Lesson number': 'رقم الدرس',
                              'Arabic': 'العربية',

        }
      };
}
