import 'package:flutter/material.dart';
import 'package:orientation_demos/dynamic_view.dart';

void main() {
  runApp(OrientationFix());
}

class OrientationFix extends StatelessWidget {
  const OrientationFix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Orientation Test App',
        home: Scaffold(
          appBar: AppBar(title: Text("Orientation App")),
          body: SafeArea(child: DynamicView()),
        ));
  }
}

class DynamicWidget extends StatelessWidget {
  const DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return Center(
      child: _orientation == Orientation.portrait
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.ac_unit_outlined, size: 80.0),
                Icon(Icons.access_alarm_sharp, size: 80.0)
              ],
            )
          : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Icon(Icons.ac_unit_outlined, size: 75.0),
            ]),
    );
  }
}
