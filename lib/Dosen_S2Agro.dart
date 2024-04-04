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

class Dosen_S2Agro_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/LogoS2Agro.png', 
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
              _sendEmail('magrotek@upnjatim.ac.id');
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
                'wanti.png',
                'Dr.Ir.Wanti Mindari, MP',
                '19631208 199003 2 00 1',
                'Dosen Tetap',
                'Lektor Kepala',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6099953',
                'https://pddikti.kemdikbud.go.id/data_dosen/MDQzMTM0QkUtQTg2OC00RUIxLTg4RTYtM0FCQzA1RDQwNjNG',
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
                'Pangesti.jpeg',
                'Dr.Ir.Pangesti Nugrahani, MS.i',
                '196103201992102001',
                'Dosen Tetap',
                'Profesor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/81545',
                'https://pddikti.kemdikbud.go.id/data_dosen/ODcxQ0UzMEItOENENS00NUY1LUJCQkQtNzY3ODVEMjhDNjVD',
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
                'arika.png',
                'Dr. Ir. Arika Purnawati, MP.',
                '196504221990032000',
                'Dosen Tetap',
                'Lektor',
                'Pembina Tk I IV/a',
                'https://sinta.kemdikbud.go.id/authors/profile/5994487',
                'https://pddikti.kemdikbud.go.id/data_dosen/MUIwMEQ5RTgtNkEzNC00QkJGLThCNTMtRDk5RERGMjNCMjM0',
              ),
              _buildDosenCard(
                'Bakti.png',
                'Dr.Ir.Bakti Wisnu Widjajani, MP',
                '19631005 198703 2 00 1',
                'Dosen Tetap',
                'Lektor',
                'Pembina TK.1 IV B',
                'https://sinta.kemdikbud.go.id/authors/profile/6653585',
                'https://pddikti.kemdikbud.go.id/data_dosen/N0I0NDAxQzgtQzRCOS00MTcwLTgyQTAtQ0MwQkFGNDU5OTQ4',
              ),
              _buildDosenCard(
                'penta.png',
                'Dr.Ir.Penta Suryaminasih, MP',
                '196005261987032001',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina IV a',
                'https://sinta.kemdikbud.go.id/authors/profile/6027875',
                'https://pddikti.kemdikbud.go.id/data_dosen/QUJBMTA0QUUtQjZDMy00MkVGLTlCMDctRDAyMUJCRjYxMTI2',
              ),
              _buildDosenCard(
                'herry.png',
                'Dr. Ir. Herry Nirwnto, MP.',
                '196206251991031002',
                'Dosen Tetap',
                'Lektor',
                'Pembina Tk I/ IV b',
                'https://sinta.kemdikbud.go.id/authors/profile/6042901',
                'https://pddikti.kemdikbud.go.id/data_dosen/NTY2MkMyMDItNzUxQy00MTYyLUE4NUMtQzQ2MTFFN0UxQkEy',
              ),
              _buildDosenCard(
                'yenny.png',
                'Dr. Ir. Yenny Wuryandari, MP.',
                '196601141992032001',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina Tk. I/IV b',
                'https://sinta.kemdikbud.go.id/authors/profile/6174722',
                'https://pddikti.kemdikbud.go.id/data_dosen/RDA3OTA3MzctQ0IzOC00ODU5LUE5NEMtNDg1Njc5MUYwQTNB',
              ),
              _buildDosenCard(
                'rossyda.png',
                'Dr.Ir.Rossyda Priyadarshini, MP',
                '30212920',
                'Dosen Tetap',
                'Lektor',
                'Pembina IV a',
                '',
                '',
              ),
              _buildDosenCard(
                'arifin.png',
                'Dr.Ir.Moch. Arifin, MT',
                '196505231992031001',
                'Dosen Tetap',
                'Asisten Ahli',
                'Pembina/ Iva',
                '',
                '',
              ),
              _buildDosenCard(
                'mujoko.png',
                'Dr. Ir. Tri Mujoko.MP.',
                '196605091992031001',
                'Dosen Tetap',
                'Lektor',
                'Pembina/ IVA',
                'https://sinta.kemdikbud.go.id/authors/profile/5979332',
                '',
              ),
              _buildDosenCard(
                'wiyati.png',
                'Dr. Ir. SRI WIYATININGSIH, M.P.',
                '199610021992032001',
                'Dosen Tetap',
                'Asisten Ahli',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/5996353',
                '',
              ),
              _buildDosenCard(
                'Juli.jpg',
                'Prof.Dr.Ir.Juli Santoso, MP',
                '195907091988031001',
                'Dosen Tetap',
                'Asisten Ahli',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6018020',
                '',
              ),
              _buildDosenCard(
                'maroeto.png',
                'Ir. Maroeto , MP',
                '1966071991031000',
                'Dosen Tetap',
                'Lektor Kepala',
                'Pembina Tk I IV b',
                'https://sinta.kemdikbud.go.id/authors/profile/6029147',
                '',
              ),
              _buildDosenCard(
                'wiwin.png',
                'Ir. Wiwin Windriyati., MP.',
                '196208161990032000',
                'Dosen Tetap',
                'Lektor',
                'Pembina Tk I IV/a',
                'https://sinta.kemdikbud.go.id/authors/profile/6696670',
                '',
              ),
              _buildDosenCard(
                'Endang.jpg',
                'Dra. Endang Triwahyu Prasetyawati, MSi',
                '196412031991032001',
                'Dosen Tetap',
                'Lektor',
                '',
                'https://sinta.kemdikbud.go.id/authors/profile/6022768',
                '',
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