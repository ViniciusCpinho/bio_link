//flutter run -d chrome --web-renderer html

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://scontent.fops4-1.fna.fbcdn.net/v/t39.30808-6/327437147_852460375855851_4243696866324745330_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=75i2Xoms2g4AX9iSuMQ&_nc_ht=scontent.fops4-1.fna&oh=00_AfATxaV6oCGCK8-eITL1g0e4fSsp_XxV1JqJDf8wrkYYcg&oe=655226A7'),
                ),
                SizedBox(height: 16.0),

                Text('Vinicius Luz'),
                SizedBox(height: 16.0),

                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  onPressed: () {
                    _launchInstagramURL();
                  },
                  child: Text('Instagram'),
                ),
                SizedBox(height: 16.0),

                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  onPressed: () {
                    _launchLinkedInURL();
                  },
                  child: Text('LinkedIn'),
                ),
                SizedBox(height: 16.0),

                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  onPressed: () {
                    _launchFacebookURL();
                  },
                  child: Text('Facebook'),
                ),
                SizedBox(height: 16.0),

                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)), 
                  ),
                  onPressed: () {
                    _launchWhatsAppURL();
                  },
                  child: Text('Whatsapp'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchInstagramURL() async {
    String instagramUrl = 'https://www.instagram.com/viniciusc.pinheiro/?next=%2F';

    if (await canLaunch(instagramUrl)) {
      await launch(instagramUrl);
    } else {
      throw 'Não foi possível abrir $instagramUrl';
    }
  }

  _launchLinkedInURL() async {
    String linkedInUrl = 'https://www.linkedin.com/in/vinicius-pinheiro-651843239/';

    if (await canLaunch(linkedInUrl)) {
      await launch(linkedInUrl);
    } else {
      throw 'Não foi possível abrir $linkedInUrl';
    }
  }

  _launchFacebookURL() async {
    String facebookUrl = 'https://www.facebook.com/profile.php?id=100009104846820';

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      throw 'Não foi possível abrir $facebookUrl';
    }
  }

  _launchWhatsAppURL() async {
    // Substitua 'phoneNumber' pelo número de telefone, incluindo o código do país
    String whatsappUrl = 'https://wa.me/+5566999375863';

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Não foi possível abrir $whatsappUrl';
    }
  }
}
