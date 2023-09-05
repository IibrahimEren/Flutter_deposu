import 'package:genel_ders/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // burada yapılan işlem uygulamanın hepsine aynı fontu uyguluyor
        theme: ThemeData(textTheme: GoogleFonts.acmeTextTheme()),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Widget Detail"),
              centerTitle: true,
              backgroundColor: HexColor(primaryColor),
              leading: const Text("Menü"),
            ),
            // Container eğer içerisinde bir widget barındırmıyprsa bir üstündeki
            // widget kadar alan kaplar
            body: Container(
              // Container'ı büyütmeden bulunduğu köşeden ne kadar uzakta kalmasını 
              //istediğimizi ayarlıyoruz
              margin:const EdgeInsets.all(100),
              // Kendi içerisinde her tarafından 50 birimlik bir boşluk bıraktı
              // padding: const EdgeInsets.all(50.0),
              // kenarlarındaki boşlukları özel olarak ayarlayabiliyoruz
              // padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
              // Burada da kaydırmasını istediğimiz bölümleri özel olarak yazabiliyoruz
              // padding: const EdgeInsets.only(left: 40, top: 10),
              // Burada da eşit bir şekilde veriyoruz
              // padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
              color: Colors.purple.shade100,
              // padding sadece container'de olmuyor text widget'ini bir widget'e
              //çevirip onu da peddingleyebiliyoruz
              child: const Padding(
                padding: EdgeInsets.all(60),
                child: Text(
                  "Örnek",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Text("+"),
              onPressed: () {
                setState(() {
                  value += 1;
                });
              },
            )));
  }
}
