import 'package:flutter/material.dart';

class GridView extends StatefulWidget {
  const GridView({super.key});

  @override
  State<GridView> createState() => _GridViewState();
}

class _GridViewState extends State<GridView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // GridView.count(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 5,
        //   mainAxisSpacing: 5,
        //   children: [
        //     Container(color: Colors.red),
        //     Container(color: Colors.grey),
        //     Container(color: Colors.blue),
        //     Container(color: Colors.pink),
        //     // Container(color: Colors.green),
        //     // Container(color: Colors.purpleAccent),
        //     // Container(color: Colors.brown),
        //   ],
        // ),
        Container(width: 100),
        // GridView.extent(
        //   maxCrossAxisExtent: 50,
        //   mainAxisSpacing: 5,
        //   crossAxisSpacing: 5,
        //   children: [
        //     Container(color: Colors.red),
        //     Container(color: Colors.grey),
        //     Container(color: Colors.blue),
        //   ],
        // )
      ],
    );
  }
}



