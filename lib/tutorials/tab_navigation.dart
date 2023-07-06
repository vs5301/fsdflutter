import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {

    var time = DateTime.now();

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                title: const Text("My Tabs"),
                bottom: const TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.card_giftcard),
                    child: Text("Date and Time"),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    child: Text("Page Navigation"),
                  ),
                ])),
            body: TabBarView(
                children: [
                  Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Current Time: ${time.hour}:${time.minute}:${time.second}', style: TextStyle(fontSize: 25),),
                            Container(height: 20,),
                            ElevatedButton(onPressed: (){
                              setState(() {

                              });
                            }, child: Text("Refresh"))
                          ],
                        ),
                      ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.black,
                      child: InkWell(
                        child: ElevatedButton(
                          child: Text("Click Here"),
                          onPressed: (){
                            Navigator.pushNamed(context, "/pageOne");
                          },
                        ),
                        onTap: (){
                          Text("Button Tapped", style: TextStyle(color: Colors.white),);
                        },
                        onLongPress: (){
                          Text("Button Double Tapped", style: TextStyle(color: Colors.white),);
                        },
                        onDoubleTap: (){
                          Text("Button Long Pressed", style: TextStyle(color: Colors.white),);
                        },
                      ),
                    ),
                  )
                ]
            ),
          )
      ),
    );
  }
}

