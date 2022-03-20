import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback callback;
  final String actionText;

  // ignore: use_key_in_widget_constructors
  const CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        OutlinedButton(
          onPressed: callback,
          child: Text(actionText),
        ),
      ],
    );
  }
}
