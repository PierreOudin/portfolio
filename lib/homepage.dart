import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/wallpaper.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () => launchUrl(
                            Uri.parse("https://github.com/PierreOudin")),
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: Color(0xFFEDF2F4),
                        )),
                    IconButton(
                        onPressed: () => launchUrl(
                            Uri.parse("https://gitlab.com/PierreOudin")),
                        icon: const FaIcon(
                          FontAwesomeIcons.gitlab,
                          color: Color(0xFFEDF2F4),
                        )),
                    IconButton(
                        onPressed: () => launchUrl(Uri.parse(
                            "https://www.linkedin.com/in/pierreoudin/")),
                        icon: const FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Color(0xFFEDF2F4),
                        )),
                    IconButton(
                        onPressed: () => launchUrl(
                            Uri.parse("mailto:pierre.oudin76@outlook.fr")),
                        icon: FaIcon(
                          FontAwesomeIcons.envelope,
                          color: Color(0xFFEDF2F4),
                        )),
                  ],
                ))),
            Expanded(
                flex: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Pierre OUDIN",
                          style: TextStyle(
                              color: Color(0xFFEDF2F4),
                              fontSize: 36,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "Développeur .NET",
                        style: TextStyle(
                            color: Color(0xFFEDF2F4),
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "J'aime le développement web, mobile et lourd,\nainsi que le sport automobile",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xFFEDF2F4), fontSize: 28),
                      )
                    ],
                  ),
                )),
            Flexible(
                flex: 2,
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      const Text("Pierre OUDIN",
                          style: TextStyle(color: Color(0xFFEDF2F4))),
                      const SizedBox(
                        width: 5,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.copyright,
                        size: 10,
                        color: Color(0xFFEDF2F4),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(DateTime.now().year.toString(),
                          style: const TextStyle(color: Color(0xFFEDF2F4)))
                    ]))),
          ],
        ),
      ),
    );
  }
}
