import 'package:flutter/material.dart';
import 'package:to_do_app/Constants/tasktype.dart';
import 'package:to_do_app/model/task.dart';

class Todoitem extends StatefulWidget {
  /* 
  kullanılan yerde title parametresini vermeden 
  çağıramayacağız artık bu widget'ı, gelen title 
  parametresi ise ağağıda bulunan title değişkeni
  ile örtüşüyor
  */
  const Todoitem({super.key, required this.task});
  // Bu titlşkeni içeride değiştirilmeyecek ban
  // final halde geldi demek oluyor burası
  final Task task;

  @override
  State<Todoitem> createState() => _TodoitemState();
}

class _TodoitemState extends State<Todoitem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.task.isCompleted == true ? Colors.grey : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // if(a==5){...} => a == 5 ? Doğru: Yanlış termary operation
            /*widgettan gelen task objesi içerisindeki 
            type tasktype'ın içerisindeki nota eşitse
            category1 resmini return et*/
            // card kendi içerisinde bir icon objesi taşıdığı için
            // herhangi bir yerde bunu tanımmlayarak atamamıza gerek kalmadı
            // eğer gönderilen tip görev tiplerinden nota eşitse birinci resimi
            // çevir değil isse tekrar kontrol et ve calendar ise ikinciyi döndür
            // o da değilse üçündücü döndür
            widget.task.type == TaskType.note
                ? Image.asset("lib/Assets/images/category_1.png")
                : widget.task.type == TaskType.calendar
                    ? Image.asset("lib/Assets/images/category_2.png")
                    : Image.asset("lib/Assets/images/category_3.png"),
            // İçerside olabilecek en geniş boyutu kapsayıp resimlerin hızalı
            // durmassını sağladık
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.task.title,
                    style: TextStyle(
                      decoration: widget.task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    widget.task.description,
                    style: TextStyle(
                     decoration: widget.task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  )
                ],
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (val) => {
                setState(
                  () {
                    /* 
                    Nesne tabanlıya geçerek checkbox'a tıkladığımızda
                    o anki durumu ne ise tersine çevirip başka bir sayfaya
                    geçip geri döndüğümüzde bu durumun hatırlanmasını sağladık
                    */
                    widget.task.isCompleted = !widget.task.isCompleted;
                    isChecked = val!;
                  },
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
