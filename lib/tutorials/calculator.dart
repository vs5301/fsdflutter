import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  final input1 = TextEditingController();
  final input2 = TextEditingController();
  var result = "";

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
                ElevatedButton(onPressed: (){
                  var num1 = int.parse(input1.text.toString());
                  var num2 = int.parse(input2.text.toString());
                  var sum = num1 + num2;

                  result = "Sum of $num1 and $num2 is $sum";
                  setState(() {});
                }, child: Icon(Icons.add)),
                ElevatedButton(onPressed: ()    {
                  var num1 = int.parse(input1.text.toString());
                  var num2 = int.parse(input2.text.toString());

                  var diff = num1 - num2;
                  result = "The difference between $num1 and $num2 is $diff";
                  setState(() {});
                }, child: Icon(Icons.remove)),
                ElevatedButton(onPressed: (){
                  var num1 = int.parse(input1.text.toString());
                  var num2 = int.parse(input2.text.toString());

                  var mul = num1 * num2;
                  result = "The product of $num1 and $num2 is $mul";
                  setState(() {});
                }, child: Text("Multiply")),
                ElevatedButton(onPressed: (){
                  var num1 = int.parse(input1.text.toString());
                  var num2 = int.parse(input2.text.toString());

                  var div = num1/num2;
                  result = "The division of $num1 and $num2 is $div";
                  setState(() {});
                }, child: Text("Divide")),
              ],
            ),
            Padding(padding: EdgeInsets.all(21),
              child: Text(result , style: TextStyle(fontSize: 25, color: Colors.deepOrange),)
            )
          ],
        ),
      ),
    );
  }
}
