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

class VisiMisi_S2Agro_Page extends StatelessWidget {
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
      body: Container(
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
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildCard(
              title: 'VISI',
              content:
                  'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara',
            ),
            SizedBox(height: 16.0),
            _buildCard(
              title: 'MISI',
              content: [
                'Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.',
                'Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian.',
                'Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal.',
                'Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas.',
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required dynamic content}) {
    return Card(
      color: Color.fromARGB(255, 248, 255, 246),
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey[300]!, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            if (content is String)
              Text(
                content,
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.justify,
              ),
            if (content is List<String>)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content
                    .asMap()
                    .entries
                    .map<Widget>((entry) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.value,
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.justify,
                            ),
                            if (entry.key != content.length - 1) SizedBox(height: 8.0),
                            if (entry.key != content.length - 1) Divider(color: const Color.fromARGB(255, 189, 189, 189), thickness: 1.0),
                          ],
                        ))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
