import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

 void _sendEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

class Prestasi_S2Agro_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/LogoS2Agro.png',
              width: 200,
              height: 200,
            ),
            SizedBox(width: 10),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () {
              _sendEmail('magrotek@upnjatim.ac.id');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profil Program Studi S1 Agribisnis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet sem id diam fermentum, quis fermentum dui rhoncus. Nulla et libero at risus feugiat luctus id ut lorem. Integer eget orci non turpis blandit maximus. Sed suscipit lobortis justo, ut laoreet ipsum ultricies sit amet. In auctor leo ut arcu placerat sodales. Duis elementum, metus quis pellentesque pharetra, nibh metus feugiat turpis, eget consequat felis nulla a mi. Proin ut tincidunt libero. In pulvinar dolor non nibh varius, sed condimentum odio eleifend. In ac ultrices turpis.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet sem id diam fermentum, quis fermentum dui rhoncus. Nulla et libero at risus feugiat luctus id ut lorem. Integer eget orci non turpis blandit maximus. Sed suscipit lobortis justo, ut laoreet ipsum ultricies sit amet. In auctor leo ut arcu placerat sodales. Duis elementum, metus quis pellentesque pharetra, nibh metus feugiat turpis, eget consequat felis nulla a mi. Proin ut tincidunt libero. In pulvinar dolor non nibh varius, sed condimentum odio eleifend. In ac ultrices turpis.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
