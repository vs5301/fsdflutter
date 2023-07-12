import "package:flutter/material.dart";
import "package:fsdflutter/widgets/rounded_btn.dart";

class CustomWidgetPage extends StatefulWidget {
  const CustomWidgetPage({super.key});

  @override
  State<CustomWidgetPage> createState() => _CustomWidgetPageState();
}

class _CustomWidgetPageState extends State<CustomWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Custom Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedButton(
                btnName: 'Login',
                icon: Icon(Icons.lock),
                callBack: (){
                  print("Logged In!");
                },
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: RoundedButton(
                btnName: 'Play',
                // icon: Icon(Icons.lock),
                callBack: (){
                  print("Logged In!");
                },
                bgColor: Colors.orange,
                textStyle: TextStyle(fontWeight: FontWeight.w100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
