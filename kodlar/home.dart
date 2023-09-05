// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:to_do_app/Constants/colors.dart';
import 'package:to_do_app/Constants/tasktype.dart';
import 'package:to_do_app/model/task.dart';
import 'package:to_do_app/screens/add_new_task.dart';
import 'package:to_do_app/todoitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<String> todo = ["Study Lessons", "Run 5K", "Go To Party"];
  // List<String> completedlist = ["Game meetup", "Take out thrash"];

  List<Task> todo = [
    Task(
        type: TaskType.note,
        title: "Study Lessons",
        description: "Study Flutter",
        isCompleted: false),
    Task(
        type: TaskType.contest,
        title: "Run 5K",
        description: "Run 5 kilometer",
        isCompleted: false),
    Task(
        type: TaskType.calendar,
        title: "Go To party",
        description: "Go to Sammy's party",
        isCompleted: false),
  ];
  List<Task> completed = [
    Task(
        type: TaskType.calendar,
        title: "Game meetup",
        description: "attennt to meetup",
        isCompleted: false),
    Task(
        type: TaskType.contest,
        title: "Take out thrash",
        description: "take out to thrash",
        isCompleted: false),
  ];

  void add_new_task(Task newTask){
    setState(() {
    todo.add(newTask);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      //köşedeki debug etiketini kaldırıyor
      debugShowCheckedModeBanner: false,
      // SafeArea Widget'i durum çubuğuna ve alttaki tuşlara uygulamayı kaçırmıyor
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              // Header
              Container(
                // Üzerinde çalışacağı cihazın boyutlarını veriyor
                width: DeviceWidth,
                height: DeviceHeight / 3,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(156, 39, 176, 1),
                  image: DecorationImage(
                      image: AssetImage("lib/Assets/images/header.png"),
                      fit: BoxFit.cover),
                ),
                child: const Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("October 20, 2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "My To Do List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // expand diğer expand ile alanları eşit şekilde paylaşsa da
              // flex bunu içerisinde kaç tane widget olmasını ayarlayarak
              // yapmamıza olanak sağlamaktadır.
              //Top Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  // SingleChildScrollView ve ListVView ikisi de
                  // kaydırılabilir widget'lar olduğu için ve ikisi de kaplayabildiği
                  // kadar alan kaplamaya çalıştığı için bir hata alıyoruz
                  child: SingleChildScrollView(
                      child: ListView.builder(
                    // kaydırılabilen olanın üstteki widget olmasını sağladık
                    primary: false,
                    //ListView.builder'ın kendine tahsis ediilen alanda sınırlı
                    // kalmasını sağlıor
                    shrinkWrap: true,
                    itemCount: todo.length,
                    itemBuilder: (context, index) {
                      return Todoitem(task: todo[index]);
                    },
                  )),
                ),
              ),
              // Completed Text
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              //Bottom Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      /* 
                      Bunlar sadece singleChildScrollView property'si 
                      içerisinde ListView property'sini kullanmaya çalışırken
                      kullanacağımız parametreler
                      iki tane bütün alanı kapsamak isteyen widgetleri kullanmak
                      istedğimiz için bunları kullanıyoruz
                      */
                      primary: false,
                      shrinkWrap: true,
                      itemCount: completed.length,
                      itemBuilder: (context, index) {
                        return Todoitem(task: completed[index]);
                      },
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // Buradaki kontext bunun build conntextini alıyor
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  AddNewTaskScreen(
                        addNewTask: (newTask) => add_new_task(newTask) ,
                      ),
                    ));
                  },
                  child: const Text("Add New Task"))
            ],
          ),
        ),
      ),
    );
  }
}
