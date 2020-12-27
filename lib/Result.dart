import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final _s;
  final resetQ;

  Result(this._s, this.resetQ);

  String get formattedOne {
    return "Awesome ! ";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(formattedOne + _s)),
        Center(
          child: RaisedButton(
            child: Text("Reset"), onPressed:resetQ,
          ),
        )
      ],
    );
  }
}
