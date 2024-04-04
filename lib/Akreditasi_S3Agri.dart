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

class Akreditasi_S3Agri_Page extends StatelessWidget {
  
  final String akreditasiUrl =
      'https://faperta.upnjatim.ac.id/wp-content/uploads/2023/03/Akreditasi-Agribisnis-2020-2025.pdf';

  
  void _openAkreditasiDocument() async {
    if (await canLaunch(akreditasiUrl)) {
      await launch(akreditasiUrl);
    } else {
      throw 'Could not launch $akreditasiUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false, 
        title: Row(
          children: [
            Image.asset(
              'assets/LogoS3Agri.png', 
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
              _sendEmail('dokgri@upnjatim.ac.id');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 253, 252, 252),
                Color.fromARGB(255, 198, 225, 194)
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 0.0), 
              Image.asset(
                'assets/AkreAgri.png', 
                width: 400, 
                height: 400, 
              ),
              SizedBox(height: 0.0), 
              Text(
                'Program Studi Doktor Agribisnis telah mencapai peringkat akreditasi A (362) dengan SK BAN-PT No : 1145/SK/BAN-PT/Akred/S/XI/2015.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0), 
              ElevatedButton(
                onPressed: _openAkreditasiDocument,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 60, 94, 53)), 
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: Text(
                  'Lihat Dokumen Akreditasi',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
     ),
);
}
}
