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

class PrestasiMahasiswaCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String batch;
  final String achievement;

  PrestasiMahasiswaCard({
    required this.imagePath,
    required this.name,
    required this.batch,
    required this.achievement,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      color: Color.fromARGB(255, 247, 255, 242),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Angkatan: $batch',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    achievement,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Prestasi_S1Agro_Page extends StatelessWidget {
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
              Color.fromARGB(255, 253, 252, 252)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PrestasiMahasiswaCard(
                imagePath: 'assets/Talitha.png',
                name: 'Talitha Maritza Putri Tara',
                batch: '2021',
                achievement:
                    'Juara 2 Kumite Senior Upper 17 Putri Kelas A, Kejuruan Jujitsu Unesa Open (KJUO) XVII Tahun 2023',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Egidi.png',
                name: 'Egidi Octavia Mahardhani',
                batch: '2021',
                achievement:
                    'Bronze Medal Lomba Olimpiade National Science Social Competition (NSSC) 2.0',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Media.png',
                name: 'Media Farica Diva',
                batch: '2021',
                achievement:
                    'Medali Emas Cabor Panahan Beregu Divisi Nasional Putri PORPROV Jawa Timur VII 2022',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Maryam.png',
                name: 'Maryam Eyka Dijono Saputro',
                batch: '2022',
                achievement:
                    'Medali Emas Cabor Outdoor Hockey Putri PORPROV Jawa Timur VIII 2023',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
