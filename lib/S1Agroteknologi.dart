import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Profil_S1Agro.dart'; 
import 'VisiMisi_S1Agro.dart'; 
import 'Akreditasi_S1Agro.dart'; 
import 'Ketua_S1Agro.dart'; 
import 'Dosen_S1Agro.dart'; 
import 'Prestasi_S1Agro.dart'; 

class S1AgroteknologiPage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false, 
        title: Row(
          children: [
            Image.asset(
              'assets/LogoAgro.png',
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
              _sendEmail('agrotek@upnjatim.ac.id');
            },
          ),
        ],
      ),
      body: Container(
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
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildMenuItem(
              context,
              title: 'Profil',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil_S1Agro_page()),
                );
              },
              icon: Icons.person,
            ),
            _buildMenuItem(
              context,
              title: 'Visi & Misi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VisiMisi_S1Agro_Page()),
                );
              },
              icon: Icons.visibility,
            ),
            _buildMenuItem(
              context,
              title: 'Akreditasi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Akreditasi_S1Agro_Page()),
                );
              },
              icon: Icons.star,
            ),
            _buildMenuItem(
              context,
              title: 'Ketua Program Studi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ketua_S1Agro_Page()),
                );
              },
              icon: Icons.person_outline,
            ),
            _buildMenuItem(
              context,
              title: 'Daftar Dosen',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dosen_S1Agro_Page()),
                );
              },
              icon: Icons.people,
            ),
            _buildMenuItem(
              context,
              title: 'Laman Website',
              onTap: () async {
                const url = 'https://agrotek.upnjatim.ac.id/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: Icons.web,
            ),
            _buildMenuItem(
              context,
              title: 'Prestasi Mahasiswa',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Prestasi_S1Agro_Page()),
                );
              },
              icon: Icons.star_border,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, {required String title, required VoidCallback onTap, required IconData icon}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        hoverColor: const Color.fromARGB(255, 255, 255, 255),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 98, 98, 98)),
            ),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.black87),
              SizedBox(width: 16.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
