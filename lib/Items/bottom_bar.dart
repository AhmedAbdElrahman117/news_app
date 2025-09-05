import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  launchURL(String link) async {
    Uri uri = Uri.parse(link);
    await launchUrl(
      uri,
      webViewConfiguration: WebViewConfiguration(enableJavaScript: true),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          indent: 40,
          endIndent: 40,
          height: 1,
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: IconButton(
                  onPressed: () {
                    launchURL(
                        'mailto:ahmedaboelnaga713@gmail.com?subject=Greetings');
                  },
                  icon: const Icon(
                    Icons.email,
                    size: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: IconButton(
                  onPressed: () {
                    launchURL('https://www.facebook.com/lorr.ahmed.37/');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: IconButton(
                  onPressed: () {
                    launchURL("https://wa.me/201000512414");
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: IconButton(
                  onPressed: () {
                    launchURL('https://github.com/AhmedAbdElrahman117');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: IconButton(
                  onPressed: () {
                    launchURL(
                        'https://www.linkedin.com/in/ahmed-abo-el-naga-b200892a5');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
