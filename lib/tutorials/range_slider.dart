import 'package:flutter/material.dart';

class RangeSliderPage extends StatefulWidget {
  const RangeSliderPage({super.key});

  @override
  State<RangeSliderPage> createState() => _RangeSliderPageState();
}

class _RangeSliderPageState extends State<RangeSliderPage> {

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Range'),
      ),
       body: RangeSlider(
           values: values,
           labels: labels,
           divisions: 10,
           activeColor: Colors.green,
           inactiveColor: Colors.green.shade100,
           min: 0,
           max: 100,
           onChanged: (newValue){
             values = newValue;
             print('${newValue.start}, ${newValue.end}');
             setState(() {

             });
           }),
    );
  }
}
