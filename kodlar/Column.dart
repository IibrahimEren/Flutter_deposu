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
        // Satır satır yeni widget ekliyoruz
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //Center seçersek column içerisinde bulunan en büyük widget'i 
          // refereans alarak diğer widgetleri de o widget'in ortasına
          // geldiğini görürüz
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Örnek"),
            ElevatedButton(onPressed: (){}, child: const Text("Tıkla")),
            Container(
              color:  Colors.blueAccent,
              padding: const EdgeInsets.all(30.0),
              child: const Text("Container"))
        ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value += 1;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}
