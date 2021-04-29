import 'package:url_launcher/url_launcher.dart';

launchURL(String goto) async {
  var url = goto;
  if (await canLaunch(url)) {
    await launch(goto);
  } else {
    throw 'Could not launch $url';
  }
}
