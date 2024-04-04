import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil_S2Agri_page extends StatelessWidget {
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
              'assets/LogoS2Agri.png',
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
              _sendEmail('magri@upnjatim.ac.id');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0), 
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Gedung.jpeg'), 
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Text(
                '    Selamat Datang di Program Studi Magister Agribisnis       ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.0),
              Text(
                '                     UPN "Veteran" Jawa Timur!                 ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0), 
                child: Text(
                  'Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999). Pada Tahun Akademik 2016/2017 jumlah mahasiswa aktif Magister Agribisnis sebanyak 39 orang. Sampai Semester Gasal Tahun 2016/2017 telah meluluskan Magister Agribisnis 490 orang. Program Pascasarjana memiliki berbagai macam fasilitas yang memadai seperti ruang kuliah yang nyaman, laboratorium komputer,   fasilitas   IT, wifi area, teleconference, laboratorium bahasa dan perpustakaan. Tenaga pengajar Guru Besar, Doktor, dan Praktisi/Profesional sebagai dosen tamu dan dosen tetap.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
