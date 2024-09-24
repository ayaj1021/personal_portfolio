import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> launchURL(String link) async {
    final url = Uri(path: link);

    log(url.toString());

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not Launch $url';
    }
  }
}
