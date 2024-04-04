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

class Ketua_S1Agri_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false, 
        title: Row(
          children: [
            Image.asset(
              'assets/LogoAgri.png', 
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
              _sendEmail('agribisnis@upnjatim.ac.id');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
          padding: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/Koorprodi_S1Agri.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Dr. Ir. Nuriah Yuliati, M.P.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              _buildInfoRow('NIP', '196207121991032001'),
              _buildInfoRow('Jabatan Struktural', 'Koordinator Program Studi Agroteknologi'),
              _buildInfoRow('Jabatan Fungsional', 'Lektor Kepala'),
              _buildInfoRow('Pangkat / Golongan', 'Pembina Tingkat I / IV/b'),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLinkButton('Sinta', 'https://sinta.kemdikbud.go.id/authors/profile/6022729'),
                  SizedBox(width: 8.0),
                  _buildLinkButton('PDDikti', 'https://pddikti.kemdikbud.go.id/data_dosen/MzVDMzE0RDktOTNFRi00NkFCLTkxNjYtNDRDMDVBMTVFMzBC/72EE0B46-CD5E-4733-BE37-A1CF1C748825'),
                  SizedBox(width: 8.0),
                  _buildLinkButton('Google Scholar', 'https://scholar.google.co.id/citations?user=mtdEzFgAAAAJ&hl=id'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildLinkButton(String title, String url) {
    return ElevatedButton(
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Text(title),
    );
  }
}