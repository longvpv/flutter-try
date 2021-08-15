import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final Function onPressed;
  const ContactButton({
    Key key,
    this.buttonText,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80, left: 80),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextButton.icon(
            style: TextButton.styleFrom(
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                backgroundColor: Colors.yellow.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
            onPressed: onPressed,
            icon: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: icon,
            ),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(buttonText, style: TextStyle(color: Colors.black54)),
            )),
      ),
    );
  }
}
