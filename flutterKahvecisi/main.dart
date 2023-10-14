import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const benimUyg());
}

class benimUyg extends StatelessWidget {
  const benimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              //Ekran boyunca genişlemesini engellemek iin kaplayabileceği en az yer kaplamasını sağladık
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blueAccent,
                  backgroundImage: AssetImage("lib/assets/images/coffee.jpg"),
                ),
                Text(
                  "Flutter Kahvecisi",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[900],
                      fontFamily: "Dancing_Sprit"),
                ),
                Text(
                  "Bir buton uzağınızda",
// paketten aldığımız google font sayesinde google'ın sitesinden fontlara bakıp
//uygulamamızda nasıl göründüğünü direkt paket indirmeden görebiliriz
                  style: GoogleFonts.indieFlower(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    // fontFamily: "Merriweather",
                  ),
                ),
                 Container(
                    width: 200,
                    child:const  Divider(
                      height: 30,
                      color: Colors.brown,
                    )),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Siparis@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "+90 (555) 658 24 23",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
