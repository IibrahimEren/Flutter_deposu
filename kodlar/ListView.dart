import 'package:flutter/material.dart';

List<String> todo = ["Flutter", "Youtube", "Ankara","Instagram"];

class ornek extends StatelessWidget {
  const ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // Genel olarak ilk önce widgetleri tanımlayıp sonrasında içerisine 
          // olmasını istediğimiz özellikleri yazarak çalşıyoruz . Burada 
          //Listview widget'ini kullandıktan sonra kaç kez çalışacağını söylemek 
          // için itemCount parametresini kullanıp yukarıda tanımladığımız todo
          // list'ine bağladık Sonrasında itembuilder parametresi ile de contex
          // ile ne üzerinde build edeceğimizi gösterip return ile de build edeceğimiz
          //nesneyi yazdık 
            child: ListView.builder(
              itemCount: todo.length,
          itemBuilder: (context, index) {
            return Card(
              child: Text(todo[index]),
            );
          },
        )

            
            ),
      ),
    );
  }
}

// ListView(
            //   children: [
            //     Text("selam"),
            //     Text("selam"),
            //     Text("selam"),
            //     Text("selam"),
            //   ],
            //),
