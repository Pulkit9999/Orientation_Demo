import 'package:flutter/material.dart';

class DynamicView extends StatelessWidget {
  const DynamicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? Container(
                decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(55.0)),
              ))
            : Container(
                decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(55.0)),
              ));
      },
    );
  }
}
