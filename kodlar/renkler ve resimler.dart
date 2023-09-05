import 'package:app_bar_ve_scaffold/Constants/colors.dart';
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
      body: const Center(
        // Yerel fotoğraflar için
        child: Image(image: AssetImage("lib/Assets/images/pexels-captainfank.jpg"))
        // internet üzerinden alınacak fotoğraflar için
        // child: Image(image: NetworkImage("https://images.pexels.com/photos/18108101/pexels-photo-18108101/free-photo-of-processed-with-vsco-with-e6-preset.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
        // kısa gösterim yapıldı - artık değişebilen bir yapııda olduğu için const kaldırıldı
        // child: Image.network("https://images.pexels.com/photos/18108101/pexels-photo-18108101/free-photo-of-processed-with-vsco-with-e6-preset.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: () {
          setState(() {
            value += 1;
          });
        },
      )
      )
    );
  }
}
