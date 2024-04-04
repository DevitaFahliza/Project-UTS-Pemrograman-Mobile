import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile_Devita_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/devita.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Devita Fahliza Ulfa',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              _buildInfoRow('Tempat, Tanggal Lahir', 'Sidoarjo, 13 September 2003'),
              _buildInfoRow('Alamat', 'Jl. Raya Wonoayu no 10, Sidoarjo, Jawa Timur'),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow('No Telp', ''),
                      _buildInfoRow('Email', ''),
                      _buildInfoRow('Github', ''),
                      _buildInfoRow('LinkedIn', ''),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildLinkButton('081355663905', 'tel:081355663905'),
                      SizedBox(height: 8.0),
                      _buildLinkButton('devitafahlizaulfa@gmail.com', 'mailto:devitafahlizaulfa@gmail.com'),
                      SizedBox(height: 8.0),
                      _buildLinkButton('https://github.com/DevitaFahliza', 'https://github.com/DevitaFahliza'),
                      SizedBox(height: 8.0),
                      _buildLinkButton('https://www.linkedin.com/in/devitafahliza', 'https://www.linkedin.com/in/devita-fahliza-ulfa-6687472a9/'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Text(
                'Pendidikan:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildEducationListView(),
              SizedBox(height: 20.0),
              Text(
                'Pengalaman:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildExperienceListView(),
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

  Widget _buildEducationListView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildEducationItem(
            'UPN "Veteran" Jawa Timur',
            'Sistem Informasi',
            'Agu 2022 - Saat ini',
            'assets/LogoUPN.png',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'SMA Negeri 1 Wonoayu',
            'MIPA',
            'Jul 2019 - Mei 2022',
            'assets/Smaniwa.png',
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceListView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildEducationItem(
            'Head of Entrepreneurship Department',
            'Himasifo UPN "Veteran" Jawa Timur',
            'Mar 2024 - Saat ini',
            'assets/Himasifo.jpeg',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Assistant Lecturer of Bahasa Pemrograman 1',
            'UPN "Veteran" Jawa Timur',
            'Jan 2024 - Mar 2024',
            'assets/logoupn.png',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Staff of Entrepreneurship Department',
            'Himasifo UPN "Veteran" Jawa Timur',
            'Mar 2023 - Mar 2024',
            'assets/Himasifo.jpeg',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Packaging and Quality Control',
            'Kriya Kreasi',
            'Jan 2023 - Saat ini',
            'assets/KriyaKreasi.jpeg',
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String institution, String major, String duration, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  image,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  institution,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                SizedBox(height: 0.0),
                Text(
                  major,
                  style: TextStyle(fontSize: 12.0),
                ),
                SizedBox(height: 0.0),
                Text(
                  duration,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

