import 'package:flutter/material.dart';
import 'package:fsdflutter/tutorials/constants.dart';
import 'package:fsdflutter/tutorials/page_one.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTwoTitle)
      ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(pageTwoTitle, style: TextStyle(color: Colors.white),),
              SizedBox(height: 24,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Navigate Back"))
            ],
          ),
        )
    );;
  }
}