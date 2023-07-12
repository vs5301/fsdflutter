import 'package:flutter/material.dart';
import 'package:fsdflutter/tutorials/bottom_navbar.dart';
import 'package:fsdflutter/tutorials/calculator.dart';
import 'package:fsdflutter/tutorials/news_list_page.dart';
import 'package:fsdflutter/tutorials/row_columns.dart';
import 'package:fsdflutter/tutorials/tab_navigation.dart';

class NavigationDrawerPage extends StatefulWidget {
  const NavigationDrawerPage({super.key});

  @override
  State<NavigationDrawerPage> createState() => _NavigationDrawerPageState();
}

class _NavigationDrawerPageState extends State<NavigationDrawerPage> {

  var unameText = TextEditingController();
  var passText = TextEditingController();
  DateTime datePicked = DateTime(2023);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 600,
              width: 600,
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/img/flutter-icon.png"),
                    ),
                  ),
                  Container(height: 30,),
                  TextField(
                    controller: unameText,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black45,
                          width: 2,
                        ),
                      ),
                      suffixText: "Username",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: (){

                        },
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  Container(height: 20,),
                  TextField(
                    controller: passText,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          ),
                        ),
                        suffixText: "Password"
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    String uName = unameText.text.toString();
                    String uPass = passText.text.toString();
                    print("Username is $uName and password is $uPass");
                  }, child: Text('Login')),
                ],
              )
          ),
        ],
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
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/user.png"),
                          backgroundColor: Colors.red,
                          maxRadius: 40,
                        ),
                      ),
                      Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("John Watson", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                          )
                      ),
                    ],
                  )
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
              Container(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: const Text("ListView", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  subtitle: const Text("News ListView", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  leading: const Icon(Icons.newspaper) ,
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context) => const NewsListPage());
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
                  title: Text("Basic Calculations",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  subtitle: Text("Stateful widget usage", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.lock) ,
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context) => const CalculatorPage());
                    Navigator.push(context,route);
                  },
                ),
              ),
              Container(
                color: Colors.black12,
                height: 1,
              ),
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

