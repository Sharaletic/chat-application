import 'package:flutter/material.dart';

class SnackBarBaseWidget {
  static void showSnackBar(BuildContext context, String content) {
    final snackBar = SnackBar(
      content: Text(content),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 150,
        right: 20,
        left: 20,
      ),
      dismissDirection: DismissDirection.none,
      shape: StadiumBorder(),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
