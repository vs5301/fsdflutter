import 'package:flutter/material.dart';

class StackWidgetPage extends StatefulWidget {
  const StackWidgetPage({super.key});

  @override
  State<StackWidgetPage> createState() => _StackWidgetPageState();
}

class _StackWidgetPageState extends State<StackWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stacked Widgets"),
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 200,height: 200,color: Colors.blueGrey,),
            Positioned(
              left: 21,
              top: 21,
              child: Container(
                width: 160,
                height: 160,
                color: Colors.grey,
              )
            ),
          ],
        ),
      ),
    );
  }
}
