import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {

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
                  child: Text("Page 1"),
                ),
                Tab(
                  icon: Icon(Icons.person),
                  child: Text("Page 2"),
                ),
              ])),
          body: TabBarView(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                  child: InkWell(
                    child: ElevatedButton(
                      child: Text("Click Here"),
                      onPressed: (){

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
                )
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
