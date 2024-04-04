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

class Prestasi_S1Agri_Page extends StatelessWidget {
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
                imagePath: 'assets/Beatrice.png',
                name: 'Beatrice Maria Charmenita',
                batch: '2022',
                achievement:
                    'Juara 3 Lomba Olimpiade Bahasa Inggris Tingkat Mahasiswa 2023 Diselenggarakan oleg CV. Divya Cahaya Prestasi Pada Tanggal 30 Juni - 2 Juli 2023',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Devi.png',
                name: 'Devi Putri Fajariyah',
                batch: '2019',
                achievement:
                    'Juara 3 International Students Virtual Mobility Program (ISVMP) 2022',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Rudi.png',
                name: 'Rudi J Silitonga',
                batch: '2020',
                achievement:
                    'Peserta Terbaik Brawijaya Advokasi Academy',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Zalfa.png',
                name: 'Zalfa Nurrahmah Agustina',
                batch: '2022',
                achievement:
                    'Medali Emas Calor Menembak Nomor 10 Meter Air Rifle Putri PORPROV Jawa Timur VII 2022',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Nurid.png',
                name: 'Nurid Dian Ikrimah',
                batch: '2019',
                achievement:
                    'Medali Emas Calor Sepak Takraw Kategori Inter regu Putri, Medali Perak Cabang Sepak Takraw Kategori Double Event Putri PORPROV Jawa Timur VII 2022',
              ),
              PrestasiMahasiswaCard(
                imagePath: 'assets/Nabella.png',
                name: 'Nabella Ayu wulandari',
                batch: '2021',
                achievement:
                    'Medali Emas 3x3 Bola Basket Kota Surabaya PORPROV VII Jawa Timur 2022',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
