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
            transform: Matrix4.rotationZ(-0.5),
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  // buradaki kullanılan parametre widget'ın sol üst köşesinden
                  // tutarak döndürmeye başlıyor
                  /*transform: Matrix4.rotationZ(-0.5),*/

                  // bunu kullandığımız an container kendini tekrar
                  // en büyükk boyutu ayarlamaya çalışıyor
                  alignment: Alignment.bottomRight,

                  // container'ın görselliği ve şekli ile ilgilenior
                  // bunu kullandığımız an resim renk ve benzer
                  // properyleri bunun içinde kullanmamız gerekiyor
                  decoration: BoxDecoration(
                    // burada içerisinde tam almasını sağlamak için
                    // padding kullanıyoruz
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                  ),
                  // Widget ile text arasında boşluklar bırakmaya yarıyor
                  padding: const EdgeInsets.all(60),

                  // widget ile çevresi arasında boşluklar vermeye yarıyor
                  margin: const EdgeInsets.all(80),
                  // burada da sadece içerisinde bulunan text'i döndürmek için
                  // tüm column'u widget içine almaktansa sadece text'i aldık
                  child: Transform(
                    transform: Matrix4.rotationZ(-0.25),
                    alignment: FractionalOffset.bottomLeft,
                    child: Text(
                      "HELLO",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), // add some space between containers
                Transform(
                  transform: Matrix4.rotationZ(-0.2),
                  child: Container(
                    width: 200,
                    height: 100,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(20),
                    child: Transform(
                      transform: Matrix4.rotationZ(0.5),
                      alignment: FractionalOffset.bottomCenter,
                      child: const Text(
                        "Hello",
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


![Screenshot_1696760504](https://github.com/IibrahimEren/Flutter_deposu/assets/87008174/fc856d74-988c-433b-bb28-f5511261caa6)


