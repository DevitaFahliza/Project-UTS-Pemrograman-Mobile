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

class Dosen_S3Agri_Page extends StatelessWidget {
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
                'Fauzi.jpg',
                'Prof. Dr. Ir. Akhmad Fauzi, M.M.T., IPU',
                '196511091991031002',
                'Dosen Tetap',
                'Profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/81396',
                'https://pddikti.kemdikbud.go.id/data_dosen/NDI4REQxQzUtRDQ0NS00NTQ2LUIwNTAtOTg5NjE4QjhEOUI3',
                'https://scholar.google.co.id/citations?user=pYgjXPsAAAAJ&hl=id',
              ),
              _buildDosenCard(
                'syarif.png',
                'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.',
                '196302181989031002',
                'Dosen Tetap',
                'Profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6073538',
                'https://pddikti.kemdikbud.go.id/data_dosen/MTVCNzNGMDgtMzI2Ny00NDhFLUJBODgtMzhBRUE4NzREMkJE',
                'https://scholar.google.com/citations?user=fm6sp_QAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'teguh.png',
                'Prof. Dr. Ir. Teguh Soedarto, M.P.',
                '195606201987031004',
                'Dosen Tetap',
                'Profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6010149',
                'https://pddikti.kemdikbud.go.id/data_dosen/QTIxNUU1QzMtNjIzNS00OEFFLUE5MzEtMTBCQ0NCNERFMUM1',
                'https://scholar.google.co.id/citations?user=J0iTzGwAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'Syamsul.png',
                'Prof. Dr. Syamsul Huda, S.E., M.T.',
                '195908281990031001 ',
                'Dosen Tetap',
                'profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6039054',
                'https://pddikti.kemdikbud.go.id/data_dosen/RUM3MzQ5RjUtRjZDQy00MTExLUJFMjgtRDAzRjg3QTZCN0E3',
                'https://scholar.google.co.id/citations?user=5DYMYhUAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'Hamidah.jpg',
                'Dr. Ir. Hamidah Hendrarini, M.Si.',
                '196012271991032001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6660612/?view=wos',
                'https://pddikti.kemdikbud.go.id/data_dosen/OUI2RDkxQkQtNzA5Ni00N0MyLUFFN0QtRkFCMkVERjkxNjg2',
                'https://scholar.google.com/citations?hl=en&user=kABrIrQAAAAJ',
              ),
              _buildDosenCard(
                'Koorprodi_S1Agri.jpg',
                'Dr. Ir. Nuriah Yuliati, M.P.',
                '196207121991032001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6022729/?view=scopus',
                'https://pddikti.kemdikbud.go.id/data_dosen/NzJFRTBCNDYtQ0Q1RS00NzMzLUJFMzctQTFDRjFDNzQ4ODI1',
                'https://scholar.google.com/citations?user=mtdEzFgAAAAJ&hl=en&oi=ao',
              ),
              _buildDosenCard(
                'Endang.jpg',
                'Dr. Ir. Endang Yektiningsih, M.P.',
                '195705161992022001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://https://sinta.kemdikbud.go.id/authors/profile/5995012',
                'https://pddikti.kemdikbud.go.id/data_dosen/MjlDN0RDODEtRjRCQy00QjExLUE0N0YtQUVCRURDMjU3QUI4',
                'https://scholar.google.com/citations?user=S0lM1zsAAAAJ&hl=en&oi=ao',
              ),
              _buildDosenCard(
                'Indra.jpg',
                'Dr. Ir. Indra Tjahaja Amir, M.P.',
                '195811181989031001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/5972672',
                'https://pddikti.kemdikbud.go.id/data_dosen/NDk2MERENUYtMTkyQS00Q0Y3LUE3OTUtNzUwNTVENTRFMTY1',
                'https://scholar.google.com/citations?user=_9aTFekAAAAJ&hl=en&oi=ao',
              ),
              _buildDosenCard(
                'mubarokah.png',
                'Dr. Ir. Mubarokah, M.T.P.',
                '19621114 198803 2001',
                'Dosen Tetap',
                'Lektor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6099941',
                'https://pddikti.kemdikbud.go.id/data_dosen/NkYyOTFGOUQtRUFEMi00ODU1LTlGMjEtM0U1MjBFNjM3N0Ew/FD1FDAF7-924F-4ADE-99F3-A29F2B17C2D2',
                'https://scholar.google.com/citations?hl=en&user=U9xU1xcAAAAJ',
              ),
              _buildDosenCard(
                'Pawana.jpg',
                'Dr. Ir. Pawana Nur Indah, M.Si.',
                '195707201987032001',
                'Dosen Tetap',
                'Lektor kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/260085',
                'https://pddikti.kemdikbud.go.id/data_dosen/N0JGMEVDNjYtQTM5Ri00ODdGLUIzRUMtNzg0OTcxRjM3NTk2',
                'https://scholar.google.com/citations?user=bS4_J8kAAAAJ&hl=en&oi=ao',
              ),
              _buildDosenCard(
                'Taufik.jpg',
                'Dr. Ir. Taufik Setyadi, M.P.',
                '20119660830250',
                'Dosen Tetap',
                'Lektor',
                '-',
                'https://sinta.kemdikbud.go.id/authors/profile/6731452',
                'https://pddikti.kemdikbud.go.id/data_dosen/RTlGNDRDQTYtODg4QS00NURDLUE2NUYtREM5N0JCMzc4M0U2',
                'https://scholar.google.com/citations?user=KnyOI4wAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'Tjondro.jpg',
                'Prof. Dr. Ir. Sri Tjondro Winarno, M.M.',
                '195902111989031001',
                'Dosen Tetap',
                'Profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6022749',
                'https://pddikti.kemdikbud.go.id/data_dosen/RThEOTYxOUMtOEZBRi00NTU4LUExRjgtODYyMTEyRDYzQ0U2',
                'https://scholar.google.co.id/citations?user=MUZky8MAAAAJ&hl=id',
              ),
              _buildDosenCard(
                'Eko.jpg',
                'Dr.Ir. Eko Nurhadi, M.S.',
                '195702141987031001',
                'Dosen Tetap',
                'Lektor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6023003',
                'https://pddikti.kemdikbud.go.id/data_dosen/NTEyNzUxOUQtNzk5NS00NzFELUFFQTctQTdGRTMyN0MxRTE5',
                'https://scholar.google.com/citations?user=DsBAMRsAAAAJ&hl=en&oi=ao',
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
