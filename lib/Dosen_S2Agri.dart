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

class Dosen_S2Agri_Page extends StatelessWidget {
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 253, 252, 252),
                Color.fromARGB(255, 255, 255, 255)
              ],
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDosenCard(
                'syarif.png',
                'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.',
                '196302181989031002',
                'Kepala Jurusan Agribisnis',
                'Guru Besar',
                'Pembina Utama Madya / IV/d',
                'https://sinta.kemdikbud.go.id/authors/profile/6073538',
                'https://pddikti.kemdikbud.go.id/data_dosen/MTc0MjMxMkUtNEVEOS00MTE3LThFQ0YtQzAwNzk0RDU0MkEw/15B73F08-3267-448E-BA88-38AEA874D2BD',
                'https://pddikti.kemdikbud.go.id/data_dosen/MTc0MjMxMkUtNEVEOS00MTE3LThFQ0YtQzAwNzk0RDU0MkEw/15B73F08-3267-448E-BA88-38AEA874D2BD',
              ),
              _buildDosenCard(
                'hamidah.png',
                'Dr. Ir. Hamidah Hendrarini, M.Si.',
                '196012271991032001',
                'Koor Prodi Doktor Agribisnis',
                'Lektor Kepala',
                'Pembina Tingkat I / IV/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6660612',
                'https://pddikti.kemdikbud.go.id/data_dosen/OUI2RDkxQkQtNzA5Ni00N0MyLUFFN0QtRkFCMkVERjkxNjg2',
                'https://scholar.google.co.id/citations?user=kABrIrQAAAAJ&hl=id',
              ),
              _buildDosenCard(
                'mubarokah.png',
                'Dr. Ir. Mubarokah, M.T.',
                '196211141988032001',
                'Koor Prodi Magister Agribisnis',
                'Lektor',
                'Pembina / IV/a',
                'https://sinta.kemdikbud.go.id/authors/profile/6025709',
                'https://pddikti.kemdikbud.go.id/data_dosen/RkQxRkRBRjctOTI0Ri00QURFLTk5RjMtQTI5RjJCMTdDMkQy',
                'https://scholar.google.co.uk/citations?user=U9xU1xcAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'Endang.jpg',
                'Dr. Ir. Endang Yektiningsih, M.P.',
                '8955660023',
                'Dosen NIDK',
                'Lektor Kepala',
                'Pembina / IV/a',
                'https://sinta.kemdikbud.go.id/authors/profile/5995012',
                'https://pddikti.kemdikbud.go.id/data_dosen/MjlDN0RDODEtRjRCQy00QjExLUE0N0YtQUVCRURDMjU3QUI4',
                'https://scholar.google.co.id/citations?hl=id&user=S0lM1zsAAAAJ',
              ),
              _buildDosenCard(
                'Indra.jpg',
                'Dr. Ir. Indra Tjahaja Amir, M.P.',
                '19581118 198903 1 00 1',
                'Dosen Tetap',
                'Lektor',
                'Pembina / IV/a',
                'https://sinta.kemdikbud.go.id/authors/profile/5972672',
                'https://pddikti.kemdikbud.go.id/data_dosen/NDk2MERENUYtMTkyQS00Q0Y3LUE3OTUtNzUwNTVENTRFMTY1',
                'https://scholar.google.co.id/citations?hl=id&user=_9aTFekAAAAJ',
              ),
              _buildDosenCard(
                'teguh.png',
                'Prof. Dr. Ir. Teguh Soedarto, M.P.',
                '19560620 198703 1 00 4',
                'Koor Prodi S1 Agribisnis',
                'Guru Besar',
                'Pembina Utama / IV/e',
                'https://sinta.kemdikbud.go.id/authors/profile/6010149',
                'https://pddikti.kemdikbud.go.id/data_dosen/QTIxNUU1QzMtNjIzNS00OEFFLUE5MzEtMTBCQ0NCNERFMUM1',
                'https://scholar.google.co.id/citations?user=J0iTzGwAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'Eko.jpg',
                'Dr. Ir. Eko Nurhadi, MS',
                '8935660023',
                'Dosen NIDK',
                'Lektor',
                'Pembina Tingkat I / IV/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6023003',
                'https://pddikti.kemdikbud.go.id/data_dosen/NTEyNzUxOUQtNzk5NS00NzFELUFFQTctQTdGRTMyN0MxRTE5',
                'https://scholar.google.co.id/citations?hl=id&user=DsBAMRsAAAAJ',
              ),
              _buildDosenCard(
                'Pawana.jpg',
                'Dr. Ir. Pawana Nur Indah, M.Si.',
                '8945660023',
                'Dosen NIDK',
                'Lektor Kepala',
                'Pembina / IV/a',
                'https://sinta.kemdikbud.go.id/authors/profile/260085',
                'https://pddikti.kemdikbud.go.id/data_dosen/N0JGMEVDNjYtQTM5Ri00ODdGLUIzRUMtNzg0OTcxRjM3NTk2',
                'https://scholar.google.co.id/citations?hl=id&user=bS4_J8kAAAAJ',
              ),
              _buildDosenCard(
                'Tjondro.jpg',
                'Prof. Dr. Ir. Sri Tjondro Winarno, M.M .',
                '19590211 198903 1 00 1',
                'Dosen Tetap',
                'Guru Besar',
                'Pembina Utama Madya / IV/d',
                'https://magri.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/',
                'https://magri.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/',
                'https://scholar.google.co.id/citations?hl=id&user=MUZky8MAAAAJ',
              ),
            ],
          ),
        ),
      ),
    );
  }
Widget _buildDosenCard(
    String photo,
    String name,
    String nip,
    String jabatanStruktural,
    String jabatanFungsional,
    String pangkat,
    String sintaLink,
    String pddiktiLink,
    String googleScholarLink,
  ) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Color.fromARGB(255, 247, 255, 242), 
      child: InkWell(
        onTap: () {
          _launchURL(sintaLink);
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 48.0, 
                      backgroundImage: AssetImage('assets/$photo'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, 
                          ),
                        ),
                        SizedBox(height: 8.0),
                        SizedBox(height: 8.0),
                        Text(
                          'NIP                             : $nip',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        Text(
                          'Jabatan Struktural   : $jabatanStruktural',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        Text(
                          'Jabatan Fungsional : $jabatanFungsional',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        Text(
                          'Pangkat / Golongan : $pangkat',
                          style: TextStyle(color: Colors.black, fontSize: 12.0), 
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildLinkButton('SINTA', () {
                    _launchURL(sintaLink);
                  }),
                  _buildLinkButton('PDDIKTI', () {
                    _launchURL(pddiktiLink);
                  }),
                  _buildLinkButton('Google Scholar', () {
                    _launchURL(googleScholarLink);
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLinkButton(String label, Function onPressed) {
    return TextButton(
      onPressed: onPressed as void Function()?,
      child: Text(
        label,
        style: TextStyle(color: Color.fromARGB(255, 38, 74, 15)),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}