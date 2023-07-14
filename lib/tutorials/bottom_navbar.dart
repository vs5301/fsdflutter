import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {

  RangeValues values = RangeValues(0, 1);
  late DateTime datePicked;
  int index = 0;
  var arrColors = [
    Colors.red,
    Colors.grey,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.purpleAccent,
    Colors.brown
  ];
  var textList = ["Welcome to Home", "Welcome to Profile", "Welcome to Settings"];
  var widgetList = [
    SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 2,
                            color: Colors.black
                        )
                    )
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(21),
              border: Border.all(
                  width: 2,
                  color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 51,
                  color: Colors.grey,
                  spreadRadius: 21,
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                      width: 2,
                      color: Colors.black
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                      width: 2,
                      color: Colors.black
                  )
              )
          ),
        ],
      ),
    ),
    RichText(
        text: TextSpan(
            style: TextStyle(
                color: Colors.grey,
                fontSize: 21
            ),
            children: <TextSpan>[
              TextSpan(text: 'Hello'),
              TextSpan(text: 'World!', style: TextStyle(
                fontSize: 34,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              )),
              TextSpan(
                text: 'Welcome to ',
              ),
              TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 43,
                    color: Colors.deepOrangeAccent,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Montserrat',
                  )
              )
            ]
        )
    ),
    // const Text("This is Tab3", style: TextStyle(color: Colors.green),),
    // const Text("This is Tab3", style: TextStyle(color: Colors.green),),
    Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      spacing: 11,
      runSpacing: 5,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navbar"),
      ),
      body: Center(
        child: widgetList[index]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ScrollView",
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.tealAccent,
          ),
        ],
        currentIndex: index,
        selectedItemColor: Colors.teal,
        onTap: (int idx){
          setState(() {
            index = idx;
          });
        },
      ),
    );
  }
}
