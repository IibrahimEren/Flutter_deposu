import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:to_do_app/Constants/colors.dart';
import 'package:to_do_app/Constants/tasktype.dart';
import 'package:to_do_app/model/task.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key, required this.addNewTask});

  // Passing function as parameter
  final void Function(Task newTask) addNewTask;

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
// Bunlar teextfieldlar üzerinde bir izleyici olarak görev alacak
// üzerlerinnde ne yazılı olduğu gösterecek
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController descriptionConntroller = TextEditingController();

  TaskType tasktype = TaskType.note;

  bool isButtonEnabled  = false; // defoult olarak note olmasını istedik

  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        // bu sayfaya ulaşmak için kullandığımız navigator fonksiyonu sayesinde
        // appBar parametresi ile anında yularıda bir ok tuşu geliyor

        body: SingleChildScrollView(
          // burada alttan klavye çıktıktan sonra
          // yer ihlalinden dolayı sarı uyarı paneli gelmemesi için kaydırılabilir
          // hale getirmiş oldu bu widget
          child: Column(
            children: [
              Container(
                width: DeviceWidth,
                height: DeviceHeight / 10,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                    image:
                        AssetImage("lib/Assets/images/add_new_task_header.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Üstteki sayfayı pop ediyor/ yok ediyor
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        "Add New Task",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 20), child: Text("Task Title")),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      // Başlık alanı değiştiğinde setState kullanarak yeni durumu güncelleyin
                      // ve "Kaydet" düğmesini etkinleştirin veya devre dışı bırakın
                
                      isButtonEnabled = text.isEmpty;
                    });
                  },
                  controller: titleController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              // Row for category text
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    // Row for category icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          // For notes
                          // farklı eylemler için de propertyler var
                          onTap: () {
                            // uygulamanın alt kısmında bir dildirim çıkmasını sağlıyor
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text("Category selected"),
                              ),
                            );
                            setState(() {
                              tasktype = TaskType.note;
                            });
                          },
                          child:
                              Image.asset("lib/Assets/images/category_1.png"),
                        ),
                        GestureDetector(
                          // for calender
                          // farklı eylemler için de propertyler var
                          onTap: () {
                            // uygulamanın alt kısmında bir dildirim çıkmasını sağlıyor
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text("Category selected"),
                              ),
                            );
                            setState(() {
                              tasktype = TaskType.calendar;
                            });
                          },
                          child:
                              Image.asset("lib/Assets/images/category_2.png"),
                        ),
                        GestureDetector(
                          // for contest
                          // farklı eylemler için de propertyler var
                          onTap: () {
                            // uygulamanın alt kısmında bir dildirim çıkmasını sağlıyor
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text("Category selected"),
                              ),
                            );
                            setState(() {
                              tasktype = TaskType.contest;
                            });
                          },
                          child:
                              Image.asset("lib/Assets/images/category_3.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text("Date"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: dateController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  isDense: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text("Time"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: timeController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  isDense: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Description"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 250,
                  child: TextField(
                    controller: descriptionConntroller,
                    expands: true,
                    maxLines: null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                // Eğer başlık kısmında bir yazı yoksa kaydetme tuşu aktif olmayacak
                  onPressed: isButtonEnabled
                      ? () {
                          Task newTask = Task(
                            type: tasktype,
                            title: titleController.text,
                            description: descriptionConntroller.text,
                            isCompleted: false,
                          );
                          widget.addNewTask(newTask);
                          Navigator.pop(context);
                        }
                      : null,
                  child: const Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
