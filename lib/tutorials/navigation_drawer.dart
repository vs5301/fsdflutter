import 'package:flutter/material.dart';
import 'package:fsdflutter/tutorials/bottom_navbar.dart';
import 'package:fsdflutter/tutorials/row_columns.dart';
import 'package:fsdflutter/tutorials/tab_navigation.dart';

class NavigationDrawerPage extends StatelessWidget {
  const NavigationDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FSD Flutter"),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.delete),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Image.asset('assets/img/flutter-icon.png'),
        )
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            padding: const EdgeInsets.all(4),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("John Watson", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                      ))
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                  title: const Text("Tab Navigation", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  subtitle: const Text("Navigation with upper tab", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  leading: const Icon(Icons.arrow_upward) ,
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context) => const TabBarPage());
                    Navigator.push(context, route);
                  },
                ),
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: const Text("Bottom Navigation", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  subtitle: const Text("Navigation with bottom navbar", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  leading: const Icon(Icons.arrow_downward) ,
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context) => const BottomNavigationPage());
                    Navigator.push(context, route);
                  },
                ),
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: const Text("Row and Columns", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  subtitle: const Text("Row and columns showcase  ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  leading: const Icon(Icons.table_rows) ,
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context) => const RowColumnsPage());
                    Navigator.push(context, route);
                  },
                ),
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              // ListTile(
              //   title: Text("DigiLocker"),
              //   subtitle: Text("Payment information"),
              //   leading: Icon(Icons.lock) ,
              //   trailing: Icon(Icons.keyboard_arrow_right),
              //   onTap: (){
              //
              //   },
              // ),
              // Container(
              //   color: Colors.black12,
              //   height: 1,
              // ),
              // ListTile(
              //   title: Text("Profile Settings"),
              //   subtitle: Text("Payment information"),
              //   leading: Icon(Icons.person),
              //   trailing: Icon(Icons.keyboard_arrow_right),
              //   onTap: (){
              //
              //   },
              // ),
              // Container(
              //   color: Colors.black12,
              //   height: 1,
              // ),
              // ListTile(
              //   title: Text("Help & Support"),
              //   subtitle: Text("Payment information"),
              //   leading: Icon(Icons.help_center) ,
              //   trailing: Icon(Icons.keyboard_arrow_right),
              //   onTap: (){
              //
              //   },
              // ),
              // Container(
              //   color: Colors.black12,
              //   height: 1,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
