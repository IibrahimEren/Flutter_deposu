import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                "Bugün Ne Yesem",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            body: const YemekSayfasi()),
      ),
    );
  }
}

//Yemek sayfası bölümü
class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kurufasulye',
    'İçli Köfte',
    'Balık'
  ];
  List<String> tatliAdlari = [
    'Kadife Tatlısı',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: yemekleriDegistir,
                  child: Image.asset("assets/media/corba_$corbaNo.jpg")),
            ),
          ),
          Text(corbaAdlari[corbaNo - 1]),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: yemekleriDegistir,
                  child: Image.asset("assets/media/yemek_$yemekNo.jpg")),
            ),
          ),
          Text(yemekAdlari[yemekNo - 1]),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: yemekleriDegistir,
                  child: Image.asset("assets/media/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(tatliAdlari[tatliNo - 1]),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void yemekleriDegistir() {
    setState(() {
      corbaNo = random.nextInt(5) + 1;
      yemekNo = random.nextInt(5) + 1;
      tatliNo = random.nextInt(5) + 1;
    });
  }
}
