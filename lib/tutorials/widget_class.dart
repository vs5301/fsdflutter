import 'package:flutter/material.dart';

class WidgetClassPage extends StatelessWidget {
  const WidgetClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Container(
        child: Column(
          children: [
            CatItems(),
            Contact(),
            SubCatItems(),
            BottomMenu()
          ],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 400,
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ), itemCount: 10, scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 4,
      child: Container(
        height: 400,
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context,index)=>
            Padding(padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('Name'),
                subtitle: Text('Mob No'),
                trailing: Icon(Icons.delete),
              ),
            ),itemCount: 4, scrollDirection: Axis.vertical,),
      ),
    );
  }

}

class SubCatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 100,
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context,index)=>
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ), itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}

class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.green,
        child: ListView.builder(itemBuilder: (context,index)=>
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ), itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}