import 'package:flutter/foundation.dart';

class Utils {
  static bool get isWebDesktop {
    return !isWebMobile && kIsWeb;
  }

  static bool get isWebMobile {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    return isWebMobile;
  }

  static bool get isWebMobileAndroid {
    final result = kIsWeb && defaultTargetPlatform == TargetPlatform.android;
    return result;
  }

  static bool get isWebMobileIOS {
    final result = kIsWeb && defaultTargetPlatform == TargetPlatform.iOS;
    return result;
  }
}
