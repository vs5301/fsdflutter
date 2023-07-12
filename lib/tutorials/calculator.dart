import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  final input1 = TextEditingController();
  final input2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculations"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: input1,
              decoration: InputDecoration(
              ),
            ),
            Container(width: 10,),
            TextField(
              controller: input2,
              decoration: InputDecoration(

              ),
            ),
            Container(width: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.remove)),
                ElevatedButton(onPressed: (){}, child: Text("Multiply")),
                ElevatedButton(onPressed: (){}, child: Text("Divide")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
