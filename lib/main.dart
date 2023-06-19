import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FSD',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

/* class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foodie"),),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Welcome to Home", style: TextStyle(color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),)
        )
      )
    );
  }
}*/
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Foodie"),),
        body: Container(
            color: Colors.white,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Welcome to Foodie App", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    Icon(Icons.ac_unit, size: 32, color: Colors.green,),
                    Text("Please signup here", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    Icon(Icons.ac_unit, size: 32, color: Colors.red,),
                    OutlinedButton(onPressed: (){
                      print("Button Clicked");
                    }, child: Text("Register", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),)),
                    Icon(Icons.ac_unit, size: 32, color: Colors.yellow,),
                  ],
                ),
            )
        )
    );
  }
}

