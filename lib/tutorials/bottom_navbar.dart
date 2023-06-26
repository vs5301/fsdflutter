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
    Center(child: Text("This is Tab1", style: TextStyle(color: Colors.red),)),
    ListTile(
      title: Text("Payment Settings"),
      subtitle: Text("Payment information"),
      leading: Icon(Icons.payment) ,
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){

      },
    ),
    Text("This is Tab3", style: TextStyle(color: Colors.green),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navbar"),
      ),
      body: Center(
        child: widgetList[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
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
