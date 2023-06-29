import 'package:flutter/material.dart';

class RowColumnsPage extends StatelessWidget {
  const RowColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Rows and Columns"),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.table_rows),
                  child: Text("Rows"),
                ),
                Tab(
                  icon: Icon(Icons.view_column),
                  child: Text("Columns"),
                ),
              ]),
            ),
            body: TabBarView(children: [
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('A',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('B',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('C',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('D',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ElevatedButton(onPressed: (){

                      }, child: Text("Click"))
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('A',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('B',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('C',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('D',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ElevatedButton(onPressed: (){

                      }, child: Text("Click"))
                    ],
                  ),
                ),
              )
            ])
        )
      ),
    );
  }
}
