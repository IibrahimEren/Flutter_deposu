![Screenshot_1696765043](https://github.com/IibrahimEren/Flutter_deposu/assets/87008174/ccbbc1bc-8b34-4415-8f32-5360f6c99af8)

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, //hayali bir
            //container tanımlamak yerine column'un esnemesini sağladık
            children: [
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white,
                ),
                child: Transform(
                  transform: Matrix4.rotationZ(-0.8),
                  alignment: Alignment.center,
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: 200,
                height: 100,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.brown,
                ),
                child: const Text(
                  
                  "Hello",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height:10),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration:const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.cyan,
                    ),
                    child: const Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 100,

                    alignment: Alignment.center,
                    decoration:const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.cyan,
                    ),
                    child: const Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 100,

                    alignment: Alignment.center,
                    decoration:const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.cyan,
                    ),
                    child: const Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
