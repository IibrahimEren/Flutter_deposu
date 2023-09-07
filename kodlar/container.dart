import 'package:flutter/material.dart';

void main() {
  runApp(const benimUyg());
}

class benimUyg extends StatelessWidget {
  const benimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          child: Transform(
            /*Burada yaptığımız widgetın düzenini bozmadan ortasını referans
            alarak döndürme işlemi olluyor*/
            transform: Matrix4.rotationZ(-0.2),
            alignment: FractionalOffset.center,
            child: Container(
              width: 200,
              height: 200,
              // buradaki kullanılan parametre widget'ın sol üst köşesinden
              // tutarak döndürmeye başlıyor
              /*transform: Matrix4.rotationZ(-0.5),*/

              // bunu kullandığımız an container kendini tekrar
              // en büyükk boyutu ayarlamaya çalışıyor
              alignment: Alignment.center,

              // container'ın görselliği ve şekli ile ilgilenior
              // bunu kullandığımız an resim renk ve benzer
              // properyleri bunun içinde kullanmamız gerekiyor
              decoration: BoxDecoration(
                // burada içerisinde tam almasını sağlamak için
                // padding kullanıyoruz
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              // Widget ile text arasında boşluklar bırakmaya yarıyor
              padding: const EdgeInsets.all(20),

              // widget ile çevresi arasında boşluklar vermeye yarıyor
              margin: const EdgeInsets.all(16),
              // burada da sadeceiçerisinde bulunan text'i döndürmek için
              // tüm column'u widget içine almaktansa sadece text'i aldık
              child: Transform(
                child: Text(
                  "HELLO",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                transform: Matrix4.rotationZ(0.5),
                alignment: FractionalOffset.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
