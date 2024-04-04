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

class Dosen_S1Agri_Page extends StatelessWidget {
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
                Color.fromARGB(255, 255, 255, 255)
              ],
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDosenCard(
                'Tjondro.jpg',
                'Prof. Dr. Ir. Teguh Soedarto, M.P.',
                '195606201987031004',
                'Dosen Tetap',
                'Guru Besar',
                'Pembina Utama / IV/e',
                'https://sinta.kemdikbud.go.id/authors/profile/6010149',
                'https://pddikti.kemdikbud.go.id/data_dosen/QTIxNUU1QzMtNjIzNS00OEFFLUE5MzEtMTBCQ0NCNERFMUM1',
                'https://scholar.google.co.id/citations?user=J0iTzGwAAAAJ&hl=en',
              ),
              _buildDosenCard(
                'Indra.jpg',
                'Prof. Dr. Ir. Sri Tjondro Winarno, M.M.',
                '195902111989031001',
                'Dosen Tetap',
                'Guru Besar',
                'Pembina Utama Madya / IV/d',
                'https://sinta.kemdikbud.go.id/authors/profile/6022749',
                'https://pddikti.kemdikbud.go.id/data_dosen/RThEOTYxOUMtOEZBRi00NTU4LUExRjgtODYyMTEyRDYzQ0U2',
                'https://scholar.google.co.id/citations?hl=id&user=MUZky8MAAAAJ',
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
                'Eko.jpg',
                'Dr. Ir. Eko Nurhadi, M.S.',
                '8935660023',
                'Dosen NIDK',
                'Lektor',
                'Pembina Tingkat I / IV/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6023003',
                'https://pddikti.kemdikbud.go.id/data_dosen/NTEyNzUxOUQtNzk5NS00NzFELUFFQTctQTdGRTMyN0MxRTE5',
                'https://scholar.google.co.id/citations?hl=id&user=DsBAMRsAAAAJ',
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
                'Gyska.jpg',
                'Dr. Gyska Indah Harya, S.P., M.Agr.',
                '17219910704008',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6105856',
                'https://pddikti.kemdikbud.go.id/data_dosen/ODY1MzQ1M0ItNzhGMC00MzMxLTkwNUUtMjRBNEVFRUY5RTdC',
                'https://scholar.google.co.id/citations?hl=id&user=My-xxVwAAAAJ',
              ),
              _buildDosenCard(
                'sri.jpg',
                'Ir. Sri Widayanti, M.P.',
                '196201061990032001',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina Utama Muda / IV/c',
                'https://sinta.kemdikbud.go.id/authors/profile/5992661',
                'https://pddikti.kemdikbud.go.id/data_dosen/NjNFQzA1RDAtQjJEOC00NzM2LTlBOUEtMTRGQzJFMzczNzk3',
                'https://scholar.google.co.id/citations?hl=id&user=M09DZCsAAAAJ',
              ),
              _buildDosenCard(
                'Noor.jpg',
                'Dr. Noor Rizkiyah, S.P., M.P.',
                '21219740720283',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6067730',
                'https://pddikti.kemdikbud.go.id/data_dosen/MkIwQkM0QzktMjFFMC00REEwLUEwQTYtNTFEQkI5RTREODg3',
                'https://scholar.google.co.id/citations?hl=id&user=EFxdOlkAAAAJ',
              ),
              _buildDosenCard(
                'Fazlul.jpg',
                'Dr. Fazlul Rahman, Lc., M.A.Hum.',
                '20119850913247',
                'Dosen Tetap',
                'Lektor',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6099941',
                'https://pddikti.kemdikbud.go.id/data_dosen/ODIwNDgwQjUtOENGNi00NEZGLUFBMUItRjUzMjVBMDA0MjZF',
                'https://scholar.google.co.id/citations?hl=id&user=j0YEPIkAAAAJ',
              ),
              _buildDosenCard(
                'Wahyu.jpeg',
                'Dr. Wahyu Santoso, SP., M.MA.',
                '18119830925074',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6650183',
                'https://pddikti.kemdikbud.go.id/data_dosen/RjQ5MUU2RDEtNDYwRi00NERDLUJCMUYtRUYxRURGNTE5QzZE',
                'https://scholar.google.co.id/citations?hl=id&user=QWQfqYwAAAAJ',
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
                'Nisa.jpg',
                'Nisa Hafi Idhoh Fitriana, S.P., M.P.',
                '199601212022032012',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6805120',
                'https://pddikti.kemdikbud.go.id/data_dosen/NjA0MTUxRUYtNUI3QS00QkU3LThBNDgtNkMxN0U2OUI1MThF',
                'https://scholar.google.co.id/citations?hl=id&user=Zx42f0oAAAAJ',
              ),
              _buildDosenCard(
                'Prasmita.jpg',
                'Prasmita Dian Wijayati, SP., M.Si.',
                '20219920812235',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6805120',
                'https://pddikti.kemdikbud.go.id/data_dosen/NjA0MTUxRUYtNUI3QS00QkU3LThBNDgtNkMxN0U2OUI1MThF',
                'https://scholar.google.co.id/citations?hl=id&user=Pjz-g4EAAAAJ',
              ),
              _buildDosenCard(
                'Ika.jpg',
                'Ika Sari Tondang, S.P., M.Sc.',
                '199506192022032012',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6805126',
                'https://pddikti.kemdikbud.go.id/data_dosen/NzQ5MzZDOTctQzlFRC00NTlELUJENEEtMkZDMEY3QjdBOEY0',
                'https://scholar.google.co.id/citations?hl=id&user=c0loIP8AAAAJ',
              ),
              _buildDosenCard(
                'Risqi.jpg',
                'Dr. Risqi Rachmat Pratiwi, S.P., M.Si.',
                '21119960607278',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6781672',
                'https://pddikti.kemdikbud.go.id/data_dosen/NzcyOUM1NDUtRjJGMC00OUU3LTg1MzgtRTJGN0Y1RkE0RjYy',
                'https://scholar.google.co.id/citations?hl=id&user=OKJ7rSkAAAAJ',
              ),
              _buildDosenCard(
                'Fatchur.jpg',
                'Fatchur Rozci, S. Agr., M. Agr.',
                '199506072022031010',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6823266',
                'https://pddikti.kemdikbud.go.id/data_dosen/RTQyM0QxNDItMjI1RS00MDRBLUExREQtQ0I4MDZBQzI0NUE2',
                'https://scholar.google.co.id/citations?hl=id&user=j0YEPIkAAAAJ',
              ),
              _buildDosenCard(
                'Mirza.jpg',
                'Mirza Andrian Syah, S.P., M.P.',
                '199608272022031012',
                'Dosen Tetap',
                'Asisten Ahli',
                'Penata Muda Tingkat I / III/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6784645',
                'https://pddikti.kemdikbud.go.id/data_dosen/MUUyQkM1OUMtMzFBNi00QkEyLTg3RDAtQUY1QUJERDgyOEZC',
                'https://scholar.google.co.id/citations?hl=id&user=itU0mGIAAAAJ',
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
