import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 25),),
                              Container(height: 20,),
                              ElevatedButton(onPressed: (){
                                setState(() {

                                });
                              }, child: Text("Refresh")),
                              Container(height: 10),
                              Text('Select Date', style: TextStyle(fontSize: 25)),
                              ElevatedButton(onPressed: () async {
                                DateTime? datePicked = (await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2021),
                                    lastDate: DateTime(2025)))!;

                                if(datePicked != null){
                                  print(datePicked);
                                }

                              }, child: Text("Show")),
                              Container(height: 10),
                              Text('Select Time', style: TextStyle(fontSize: 25)),
                              ElevatedButton(onPressed: () async {
                                 TimeOfDay? timePicked = (await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                    initialEntryMode: TimePickerEntryMode.dial
                                ));

                                if(timePicked != null){
                                  print(timePicked);
                                }
                              }, child: Text("Show")),
                            ],
                          ),
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

