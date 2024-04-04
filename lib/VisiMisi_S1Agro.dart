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

class VisiMisi_S1Agro_Page extends StatelessWidget {
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
                  'Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.',
            ),
            SizedBox(height: 16.0),
            _buildCard(
              title: 'MISI',
              content: [
                'Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.',
                'Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja',
                'Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat',
                'Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal',
                'Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional',
                'Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi',
                'Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang Agroteknologi baik dalam dan luar negeri',
              ],
            ),
            SizedBox(height: 16.0),
            _buildCard(
              title: 'TUJUAN',
              content: [
                'Menghasilkan lulusan (S1) yang menguasai dasar-dasar ilmu pertanian, sehingga menjadi sarjana yang paripurna untuk memenuhi kebutuhan masyarakat dan penggunaan lulusan.',
                'Menghasilkan lulusan yang ahli dalam bidang teknologi pertanian yang dapat diinovasikan ke masyarakat petani.',
                'Menghasilkan lulusan yang mampu menerapkan IPTEK Agroteknologi dalam upaya meningkatkan produktivitas bidang pertanian.',
                'Menghasilkan lulusan yang mempunyai wawasan yang luas, terbuka dan tanggap terhadap perkembangan dalam bidang teknologi pertanian sesuai profil program studi Agroteknologi guna menciptakan jiwa wirausaha.',
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
                            if (entry.key != content.length - 1)
                              SizedBox(height: 8.0),
                            if (entry.key != content.length - 1)
                              Divider(
                                color: const Color.fromARGB(255, 189, 189, 189),
                                thickness: 1.0,
                              ),
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
