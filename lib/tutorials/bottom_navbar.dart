import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {

  late DateTime datePicked;
  int index = 0;
  var textList = ["Welcome to Home", "Welcome to Profile", "Welcome to Settings"];
  var widgetList = [
    SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(
                          width: 2,
                          color: Colors.black
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                      width: 2,
                      color: Colors.black
                  ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 51,
                    color: Colors.grey,
                    spreadRadius: 21,
                  )
                ],
              ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                      width: 2,
                      color: Colors.black
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                      width: 2,
                      color: Colors.black
                  )
              )
          ),
        ],
      ),
    ),
    const Text("This is Tab3", style: TextStyle(color: Colors.green),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navbar"),
      ),
      body: Center(
        child: widgetList[index]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ScrollView",
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.tealAccent,
          ),
        ],
        currentIndex: index,
        selectedItemColor: Colors.teal,
        onTap: (int idx){
          setState(() {
            index = idx;
          });
        },
      ),
    );
  }
}
