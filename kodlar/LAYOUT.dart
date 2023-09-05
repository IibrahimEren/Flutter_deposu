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
        // ROW Diğer center gibi widgetlar gibi bulunduğu cihazın
        // sınırlarını görmeyip overflow'a maruz kalabiliyor, bunu önlemek 
        // için içerisindeki widgetler expanded gidgeti ile kaplanabiliyor
        // expanded artık child widget'ı kendi boyutunu belirlemeye izin vermiyor
        //-- Flexible ise child'ın asıl boyutunu alarak boşlukların oluşmasına 
        // izin vermeden bunu yapıyor
        home: Row(
          children: [
            Flexible(
              flex: 2, // 2 birimlik alan kaplamasını sağlıyoruz
              child: Container(
                color: Colors.blue,
                child: Text("Hello sdgsfdkgshldkfshldfkjs"),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.white,
                child: Text("World"),
              ),
            )
          ],
        ));
  }
}
// Bu konumlanma işlemi parent tarafından içerisindeki child'lara
        // Uygulanabiliyor sadece  bir child kendi pozisyonunu belirleyemiyor
        // alignment: Alignment.bottomCenter,
        // child: Container(
        //   color: Colors.red.shade400,
        //   width: 200,
        //   height: 200,
        //   child: Container(
        //     color: Colors.greenAccent,
        //     width: 100,
        //     height: 100,

// Center(
      //   // Önceki parent'in sınırlandırmalarını kendine kabul etmiyor
      //   // Kendi yüksekliğini vermek gerekiyor
      //   child: UnconstrainedBox(
      //     child: Container(color: Colors.white, width: 100, height: 100,),
      //   )
      // ),
      
