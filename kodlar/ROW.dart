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
        body: Row(
          // row olduğu için main yatay düzlem olmuş oluyor
          mainAxisAlignment: MainAxisAlignment.spaceAround,//end,center,start,spaceevven
          // dikey eksende içerisinde bulunan widgetleri yerleştirmeyi sağlıyor
          crossAxisAlignment: CrossAxisAlignment.center, // strech sonuna kadar genişletiryor
          // center en uzun widget'i baz alarak merkeze yerleştirmesini sağlıyor
          children: <Widget>[
            const Text("Örnek"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Tıkla"),
            ),
            Container(
              padding: const EdgeInsets.all(40.0),
              color: Colors.blueGrey.shade300,
              child: const Text("container"),)
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
