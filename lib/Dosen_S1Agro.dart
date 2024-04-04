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

class Dosen_S1Agro_Page extends StatelessWidget {
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
                'Ramdan.jpeg',
                'Dr. Ir. Ramdan Hidayat, MS.',
                '196202051987031005',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina Tingkat I/IV/b',
                'https://sinta.kemdikbud.go.id/authors/profile/5991752',
                'https://pddikti.kemdikbud.go.id/data_dosen/MDMxM0Q5OEYtQzY5RS00Q0QwLUFBQUEtNzU1QjEyRjVCRDdB',
              ),
              _buildDosenCard(
                'Pangesti.jpeg',
                'Dr.Ir.Pangesti Nugrahani, MS.i',
                '196103201992102001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/81545',
                'https://pddikti.kemdikbud.go.id/data_dosen/ODcxQ0UzMEItOENENS00NUY1LUJCQkQtNzY3ODVEMjhDNjVD',
              ),
              _buildDosenCard(
                'Sukendah.jpg',
                'Dr.Ir.Sukendah, M.Sc',
                '196310311989032001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/5987096',
                'https://pddikti.kemdikbud.go.id/data_dosen/MThCMjM3RDMtOEE3OS00NEY4LUJEOEItRTkyNDEwQThCNTM1',
              ),
              _buildDosenCard(
                'Juli.jpg',
                'Prof.Dr.Ir.Juli Santoso, MP',
                '195907091988031001',
                'Dosen Tetap',
                'Profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6018020',
                'https://pddikti.kemdikbud.go.id/data_dosen/Mzc2OTg5RjAtMThCQS00RjBFLTg4MjYtMDE2MTZFRDFGNzdC',
              ),
              _buildDosenCard(
                'Nora.jpg',
                'Dr.Ir.R.A Nora Augustien K., MP',
                '195908241987032001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6027875',
                'https://pddikti.kemdikbud.go.id/data_dosen/MTA2REQzNEUtMDMzMC00OTAwLTk1M0ItQUI1OUVBMTE1MEVG',
              ),
              _buildDosenCard(
                'Ida.jpg',
                'Dr.Ir.Ida Retno Moeljani, MP',
                '196006201988112001',
                'Dosen Tetap',
                'Lektor kepala',
                'Pembina IV-A',
                'https://sinta.kemdikbud.go.id/authors/profile/6019979',
                'https://pddikti.kemdikbud.go.id/data_dosen/QkZFMDdFNUUtMEUwNC00OEFELThCNkMtQkIyRDA3M0Y3QzJG',
              ),
              _buildDosenCard(
                'Sutini.jpg',
                'Dr.Dra.Sutini, M.Pd',
                '196112311991022001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6002836',
                'https://pddikti.kemdikbud.go.id/data_dosen/ODYwMDMzQjAtRkRBQy00MjM2LThENjItNzkxNjdGRkNFQkU3',
              ),
              _buildDosenCard(
                'Felicitas.png',
                'Dr.Felicitas Deru Dewanti, SP, MP',
                '196510291989032001',
                'Dosen Tetap',
                'Letkor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6022766',
                'https://pddikti.kemdikbud.go.id/data_dosen/MERFQjdGRjctQjc1Ny00QTMwLTlFNjAtRTE3NTdERDY5NkZC',
              ),
              _buildDosenCard(
                'Makhziah.jpg',
                'Dr.Ir.Makhziah, MP',
                '196606231992032001',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina Tingkat I / IV/b',
                'https://sinta.kemdikbud.go.id/authors/profile/5973817',
                'https://pddikti.kemdikbud.go.id/data_dosen/MDIwODA5Q0UtNTgyQy00QTMxLUE1OEEtMDdERDRGODJDOTc4',
              ),
              _buildDosenCard(
                'Hadi.jpeg',
                'Ir.Hadi Suhardjono, MTp',
                '196312021990031002',
                'Dosen Tetap',
                'Lektor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/5991374',
                'https://pddikti.kemdikbud.go.id/data_dosen/MUIwMEQ5RTgtNkEzNC00QkJGLThCNTMtRDk5RERGMjNCMjM0',
              ),
              _buildDosenCard(
                'Agus.png',
                'Ir.Agus Sulistyono, MP',
                '196411121992031002',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6022984',
                'https://pddikti.kemdikbud.go.id/data_dosen/N0I0NDAxQzgtQzRCOS00MTcwLTgyQTAtQ0MwQkFGNDU5OTQ4',
              ),
              _buildDosenCard(
                'Djarwatiningsih.jpeg',
                'Ir.Rr.Djarwatiningsih P.S., MP',
                '196204291990032001',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6655804',
                'https://pddikti.kemdikbud.go.id/data_dosen/QUJBMTA0QUUtQjZDMy00MkVGLTlCMDctRDAyMUJCRjYxMTI2',
              ),
              _buildDosenCard(
                'Widiwurjani.jpg',
                'Ir.Widiwurjani, MP',
                '19621224198703012001',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina Tingkat I/ IV b',
                'https://sinta.kemdikbud.go.id/authors/profile/6013149',
                'https://pddikti.kemdikbud.go.id/data_dosen/NTY2MkMyMDItNzUxQy00MTYyLUE4NUMtQzQ2MTFFN0UxQkEy',
              ),
              _buildDosenCard(
                'Didik.jpeg',
                'Ir.Didik Utomo Pribadi, MP',
                '196112021989031000',
                'Dosen Tetap',
                'Lektor Kepala',
                'Penata Tingkat I / IV/b',
                'https://sinta.kemdikbud.go.id/authors/profile/6022773',
                'https://pddikti.kemdikbud.go.id/data_dosen/RDA3OTA3MzctQ0IzOC00ODU5LUE5NEMtNDg1Njc5MUYwQTNB',
              ),
              _buildDosenCard(
                'Yonny.jpg',
                'Ir.Yonny Koentjoro, MM',
                '196106061989031001',
                'Dosen Tetap',
                'Lektor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6022740',
                'https://pddikti.kemdikbud.go.id/data_dosen/NTMxQTI4ODAtOUY5Ri00ODJFLThCMEUtOEQ3OERBQzQyRDRD',
              ),
              _buildDosenCard(
                'Puji.png',
                'Puji Lestari Tarigan, SP, M.Sc',
                '199405102022032013',
                'Dosen Tetap',
                'Asisten Ahli',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6777287',
                'https://pddikti.kemdikbud.go.id/data_dosen/N0RDMDU5NTgtRkVDNS00RUZCLUEwMzMtNUIxMTY3NjlGQ0Yx',
              ),
              _buildDosenCard(
                'Nova.jpg',
                'Nova Triani, SP, MP',
                '17219840119013',
                'Dosen Tetap',
                'Lektor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6197793',
                'https://pddikti.kemdikbud.go.id/data_dosen/Q0Y5ODczNTMtNzkzQS00OTA1LUE3QzctN0VBRDgzMkEyNTNF',
              ),
              _buildDosenCard(
                'Saefurrohman.png',
                'Saefurrohman, SP, M.Sc.',
                '21119910501276',
                'Dosen Tetap',
                'Asisten Ahli',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6780587',
                'https://pddikti.kemdikbud.go.id/data_dosen/ODA1MzJBQjQtODc2NS00OUFFLUFCN0ItMEZDMDA4OEU3MjRB',
              ),
              _buildDosenCard(
                'Fadila.jpg',
                'Fadila Suryandika, S.T.P., M.Sc',
                '198908172022032008',
                'Dosen Tetap',
                'Asisten Ahli',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6807677',
                'https://pddikti.kemdikbud.go.id/data_dosen/MjJCQzc5MkYtQUQwNC00NUY1LTlERkItQzNBODE1OEZFMzRB',
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