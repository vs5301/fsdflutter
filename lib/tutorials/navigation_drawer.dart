import 'package:flutter/material.dart';

class NavigationDrawerPage extends StatelessWidget {
  const NavigationDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.delete),
        ],
      ),
      body: Center(
        child: Text("This is Navigation Drawer", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            padding: EdgeInsets.all(4),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                  child: Text("John Watson")
              ),
              ListTile(
                title: Text("Payment Settings"),
                subtitle: Text("Payment information"),
                leading: Icon(Icons.payment) ,
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                },
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              ListTile(
                title: Text("Orders and Bookings"),
                subtitle: Text("Payment information"),
                leading: Icon(Icons.list) ,
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                },
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              ListTile(
                title: Text("DigiLocker"),
                subtitle: Text("Payment information"),
                leading: Icon(Icons.lock) ,
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                },
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              ListTile(
                title: Text("Profile Settings"),
                subtitle: Text("Payment information"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                },
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
              ListTile(
                title: Text("Help & Support"),
                subtitle: Text("Payment information"),
                leading: Icon(Icons.help_center) ,
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                },
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
