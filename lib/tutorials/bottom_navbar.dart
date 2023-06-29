import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {

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
                  color: Colors.lightGreen
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.orange
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.blue
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.grey
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.orange
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.blue
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.grey
          ),
        ],
      ),
    ),
    ListTile(
      title: const Text("Payment Settings"),
      subtitle: const Text("Payment information"),
      leading: const Icon(Icons.payment) ,
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: (){

      },
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
