import 'package:flutter/material.dart';
import 'package:flutter_application_5/Profile_Vanza.dart';
import 'package:url_launcher/url_launcher.dart';
import 'S1Agribisnis.dart';
import 'S2Agribisnis.dart';
import 'S3Agribisnis.dart';
import 'S1Agroteknologi.dart';
import 'S2Agroteknologi.dart';
import 'Profile_Devita.dart';

class HomePage extends StatelessWidget {
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

  void _sendMessage(String phoneNumber) async {
    final Uri _phoneLaunchUri = Uri(
      scheme: 'https',
      host: 'wa.me',
      path: '/$phoneNumber',
    );

    String urlString = _phoneLaunchUri.toString();
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () {
              _sendEmail('faperta@upnjatim.ac.id');
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              _sendMessage('0856-4937-6354');
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey[400]!),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/profil.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur merupakan salah satu lembaga pendidikan tinggi bidang pertanian di Indonesia yang berdiri sejak 17 Mei 1968. Fakultas Pertanian saat ini memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
                      style: TextStyle(fontSize: 12.0),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Visi:',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      color: Color.fromARGB(255, 248, 255, 246),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Menjadi Fakultas Pertanian yang unggul dan berdaya saing dalam pengembangan ilmu pengetahuan dan teknologi serta penguatan peran dalam mendukung pengembangan pertanian berkelanjutan di tingkat nasional dan internasional.',
                          style: TextStyle(fontSize: 12.0),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Misi:',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      color: Color.fromARGB(255, 248, 255, 246),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Menyelenggarakan pendidikan, penelitian, dan pengabdian kepada masyarakat dalam bidang pertanian yang bermutu, berdaya saing, dan berbasis pada perkembangan ilmu pengetahuan dan teknologi terkini.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Menghasilkan lulusan yang unggul, profesional, dan memiliki kecerdasan intelektual, moral, dan etika dalam pembangunan pertanian berkelanjutan.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Melakukan penelitian yang inovatif, aplikatif, dan berdaya saing dalam pengembangan ilmu pengetahuan dan teknologi pertanian.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Menyelenggarakan pengabdian kepada masyarakat yang berorientasi pada pemberdayaan masyarakat dan peningkatan kesejahteraan petani dan stakeholder pertanian lainnya.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Mengembangkan kerjasama dengan berbagai pihak dalam dan luar negeri dalam rangka pengembangan pendidikan, penelitian, dan pengabdian kepada masyarakat di bidang pertanian.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Tujuan:',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      color: Color.fromARGB(255, 248, 255, 246),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Menghasilkan lulusan yang memiliki kemampuan akademik, profesional, dan kepemimpinan dalam pengembangan ilmu pengetahuan dan teknologi pertanian.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Menghasilkan penelitian yang inovatif, aplikatif, dan berdaya saing dalam mendukung pengembangan pertanian berkelanjutan.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Melaksanakan pengabdian kepada masyarakat yang berorientasi pada peningkatan kesejahteraan petani dan stakeholder pertanian lainnya.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Divider(color: Colors.grey[400]),
                            ListTile(
                              title: Text(
                                'Menjalin kerjasama dengan berbagai pihak dalam dan luar negeri dalam rangka pengembangan pendidikan, penelitian, dan pengabdian kepada masyarakat di bidang pertanian.',
                                style: TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Program Studi:',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1),
                      children: [
                        buildProgramCard(
                            'Prodi\nAgribisnis',
                            'assets/agri.png',
                            S1AgribisnisPage(),
                            context),
                        buildProgramCard(
                            'Prodi Magister\nAgribisnis',
                            'assets/agri.png',
                            S2AgribisnisPage(),
                            context),
                        buildProgramCard(
                            'Prodi Doktor\nAgribisnis',
                            'assets/agri.png',
                            S3AgribisnisPage(),
                            context),
                        buildProgramCard(
                            'Prodi\nAgroteknologi',
                            'assets/agro.png',
                            S1AgroteknologiPage(),
                            context),
                        buildProgramCard(
                            'Prodi Magister\nAgroteknologi',
                            'assets/agro.png',
                            S2AgroteknologiPage(),
                            context),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Profil Kami',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
Row(
  children: [
    Expanded(
      child: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Color.fromARGB(255, 248, 255, 246),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile_Devita_Page()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/devita.jpg'),
                  radius: 30, 
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    'Devita Fahliza Ulfa\n(22082010027)',
                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Expanded(
      child: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Color.fromARGB(255, 248, 255, 246),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile_Vanza_Page()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/vanza.jpg'), 
                  radius: 30, 
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    'Vanza Satria Pringga P.\n(22082010032)',
                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ],
),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProgramCard(String title, String imagePath, Widget page, BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(3.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Color.fromARGB(255, 248, 255, 246),
      child: ListTile(
        title: Column(
          children: [
            Image.asset(
              imagePath,
              width: 110,
              height: 110,
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
