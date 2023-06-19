import 'package:flutter/material.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key});

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {

  var quotes = ["Be Exceptional!!",
    "Search for the candle rather than cursing the darkness",
    "Work Hard, Be Successfull", "Have Faith in You"
  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuotesPage"),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(quotes[index], style: TextStyle(color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 8,),
            ElevatedButton(onPressed: (){
              setState(() {
                index++;
                if(index == quotes.length){
                  index = 0;
                }
              });
            }, child: Text("Next", style: TextStyle(color: Colors.amber, fontSize: 20))),
            // SizedBox(height: 8,),
            ElevatedButton(onPressed: (){
              setState(() {
                index--;
                if(index < 0){
                  index = quotes.length - 1;
                }
              });
            }, child: Text("Previos", style: TextStyle(color: Colors.amber, fontSize: 20))),
          ],
        )
      )
    );
  }
}
