import 'package:to_do_app/Constants/tasktype.dart';

/* 
Eğitimin başıda yaptığımız card widgetlarına konacak
öğeler yerine bunları task şeklinde tutmasını sağlayacak 
bir yapı hazırladık  
*/

class Task {
  Task({
    required this.type,
    required this.title,
    required this.description,
    required this.isCompleted,
    });
  final TaskType type;
  final String title;
  final String description;
  bool isCompleted;
}