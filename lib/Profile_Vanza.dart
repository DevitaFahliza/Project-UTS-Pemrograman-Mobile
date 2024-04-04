import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile_Vanza_Page extends StatelessWidget {
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
                          'assets/vanza.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Vanza Satria Pringga Pratama',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              _buildInfoRow('Tempat, Tanggal Lahir', 'Batam, 19 Agustus 2004'),
              _buildInfoRow('Alamat', 'Medokan Sawah Timur 7C Kav 90.'),
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
                      _buildLinkButton('089654576801', 'tel:089654576801'),
                      SizedBox(height: 8.0),
                      _buildLinkButton('vanza.sp04@gmail.com', 'mailto:vanza.sp04@gmail.com'),
                      SizedBox(height: 8.0),
                      _buildLinkButton('https://github.com/vanzasatria', 'https://github.com/vanzasatria'),
                      SizedBox(height: 8.0),
                      _buildLinkButton('https://www.linkedin.com/in/vanzasatria', 'https://www.linkedin.com/in/vanza-satria-pringga-pratama-a351aa232/?profileId=ACoAADoMn0kBzgCO2hJs4XG4ukfWzrmKJhdhfUw'),
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
                'Penghargaan:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildAwardListView(),
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
            'SMK Kartini Batam',
            'Multimedia',
            'Jul 2019 - Mei 2022',
            'assets/smkkartini.png',
          ),
        ],
      ),
    );
  }

  Widget _buildAwardListView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildAwardItem(
            '2nd Winner UI/UX Design Competition Create-in V3.0 2023',
            'Himpunan Mahasiswa Sistem Informasi Universitas Ahmad Dahlan',
            'Okt 2023',
            'https://media.licdn.com/dms/image/D562DAQFKQB8E-b4WiA/profile-treasury-image-shrink_800_800/0/1698551143642?e=1712538000&v=beta&t=4LVdB7wvHHJeRz04zn76zX3iEgh3PYPq54OEz89jiP8',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildAwardItem(
            'Finalist UI/UX Design Competition INVOFEST 2023',
            'Politeknik Harapan Bersama',
            'Okt 2023',
            'https://media.licdn.com/dms/image/D562DAQG-GYB6Jae_1g/profile-treasury-document-cover-images_480/0/1698551792688?e=1712538000&v=beta&t=DcW1H-5f4CcxAxaM5cFkTZabccO4sc-f5ibwtivdHgo',
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
            'Deputy Head of the External Affairs Department',
            'Himasifo UPN "Veteran" Jawa Timur',
            'Mar 2024 - Saat ini',
            'assets/Himasifo.jpeg',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Creative',
            'Boja Astama',
            'April 2023 - Saat ini',
            'assets/Boja.jpeg',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Content Creator',
            'Teras rayu',
            'Mar 2023 - Saat ini',
            'assets/Teras.jpeg',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Creative Graphic Designer',
            'Skill Up',
            'Mar 2023 - Saat ini',
            'assets/Skillup.jpeg',
          ),
          Divider(color: Colors.grey.withOpacity(0.2)),
          _buildEducationItem(
            'Creative',
            'Batam TV',
            'Jan 2021 - Jun 2021',
            'assets/Batamtv.jpeg',
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

  Widget _buildAwardItem(String title, String organization, String date, String certificateUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            organization,
            style: TextStyle(fontSize: 12.0),
          ),
          SizedBox(height: 8.0),
          Text(
            date,
            style: TextStyle(fontSize: 12.0),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () async {
              if (await canLaunch(certificateUrl)) {
                await launch(certificateUrl);
              } else {
                throw 'Could not launch $certificateUrl';
              }
            },
            child: Text(
              'Certificate',
              style: TextStyle(fontSize: 12.0),
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
