import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Tabs"),
            bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.card_giftcard),
                    child: Text("Home"),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    child: Text("Profile"),
                  ),
                  Tab(
                    icon: Icon(Icons.add_shopping_cart),
                    child: Text("Cart"),
                  ),
            ])
          ),
          body: TabBarView(
              children: [
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
          ]),
        )
      )
    );
  }
}
