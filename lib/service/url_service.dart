import 'package:kushal_portfolio/Utils/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static Future<void> openUrl(String urlLink) async {
    final url = Uri.parse(urlLink);
    if (!await canLaunchUrl(url)) {
      CustomSnackBar.errorSnackBar('Could not launch $url');
      return;
    } else {
      launchUrl(url);
    }
  }
}
