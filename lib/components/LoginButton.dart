import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key, this.title, this.color, this.onPressed})
      : super(key: key);
  final String title;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: color),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ));
  }
}
// TODO Implement this library.
