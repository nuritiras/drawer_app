import 'package:flutter/material.dart';
void main() {
  runApp(const DegerlerApp());
}
class DegerlerApp extends StatelessWidget {
  const DegerlerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Değerler Eğitimi',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F8F5),
      ),
      home: const AnaSayfa(),
    );
  }
}
class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}
class _AnaSayfaState extends State<AnaSayfa> {
  int seciliSayfa = 0;
  final List<Map<String, dynamic>> degerler = [
    {
      'baslik': 'Ana Sayfa',
      'ikon': Icons.home,
      'aciklama':
          'Değerler Eğitimi uygulamasına hoş geldiniz. '
          'Bu uygulamada saygı, temizlik ve mahremiyet '
          'konularını öğreneceğiz.',
      'ornek':
          'Günlük hayatımızda güzel davranışlar '
          'sergileyerek çevremize örnek olabiliriz.',
    },
    {
      'baslik': 'Saygı',
      'ikon': Icons.handshake,
      'aciklama':
          'Saygı; insanların haklarına, düşüncelerine, '
          'duygularına ve farklılıklarına değer vermektir.',
      'ornek':
          'Arkadaşımız konuşurken onu dinlemek, sözünü '
          'kesmemek ve farklı görüşlere hoşgörüyle '
          'yaklaşmak saygılı davranışlardır.',
    },
    {
      'baslik': 'Temizlik',
      'ikon': Icons.clean_hands,
      'aciklama':
          'Temizlik; kişisel hijyene dikkat etmek, '
          'çevremizi temiz tutmak ve ortak alanları '
          'özenle kullanmaktır.',
      'ornek':
          'Ellerimizi gerektiğinde yıkamak, sınıfımızı '
          'temiz tutmak ve çöpleri çöp kutusuna atmak '
          'temizlik alışkanlıklarıdır.',
    },
    {
      'baslik': 'Mahremiyet',
      'ikon': Icons.lock_outline,
      'aciklama':
          'Mahremiyet; kişisel bilgilerimizi, özel '
          'alanımızı ve başkalarının sınırlarını '
          'korumayı gerektirir.',
      'ornek':
          'Bir arkadaşımızın fotoğrafını veya mesajını '
          'izni olmadan paylaşmamalıyız. Şifrelerimizi '
          'gizli tutmalı ve kişisel bilgilerimizi '
          'herkesle paylaşmamalıyız.',
    },
  ];
  void sayfaSec(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final deger = degerler[seciliSayfa];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Değerler Eğitimi'),
        backgroundColor: Colors.green.shade100,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2E7D32),
                    Color(0xFF66BB6A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.menu_book,
                    color: Colors.white,
                    size: 42,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Değerler Eğitimi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Ekim Ayı: Saygı, Temizlik, Mahremiyet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < degerler.length; i++)
              ListTile(
                leading: Icon(
                  degerler[i]['ikon'] as IconData,
                ),
                title: Text(
                  degerler[i]['baslik'] as String,
                ),
                selected: seciliSayfa == i,
                selectedTileColor: Colors.green.shade100,
                onTap: () {
                  sayfaSec(i);
                  Navigator.pop(context);
                },
              ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('11. Sınıf - Mobil Uygulamalar'),
              subtitle: Text('Flutter eğitim uygulaması'),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    deger['ikon'] as IconData,
                    size: 70,
                    color: Colors.green.shade700,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    deger['baslik'] as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    deger['aciklama'] as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 17,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Günlük Hayattan Örnek',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          deger['ornek'] as String,
                          style: const TextStyle(
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Güzel davranışlar, güçlü bir toplumun temelidir.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
