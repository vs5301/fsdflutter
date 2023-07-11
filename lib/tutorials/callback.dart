import 'package:flutter/material.dart';

class CallBack extends StatefulWidget {
  const CallBack({super.key});

  @override
  State<CallBack> createState() => _CallBackState();
}

class _CallBackState extends State<CallBack> {

  callBack(){
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("CallBack Function"),
      ),
      body: ElevatedButton(
        onPressed: callBack,
        child: Text("Click"),
      ),
    );
  }
}
