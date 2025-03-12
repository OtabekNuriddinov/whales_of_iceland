import 'package:flutter/material.dart';

sealed class AppDialog {
  static Future<void> alertDlg(BuildContext context, String title) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text(""), Text("")],
              ),
            ),
            actions: <Widget>[
              TextButton(onPressed: () {}, child: Text("No")),
              TextButton(onPressed: () {}, child: Text("Yes"))
            ],
          );
        });
  }
}
