import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            // color: Colors.blue,
            child: Text(
              this.text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: this.handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              this.text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: this.handler,
          );
  }
}
