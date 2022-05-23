import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Function()? onPressed;

  @override
  MaterialButton build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: ListTile(
        leading: Icon(icon),
        title: Text(text),
      ),
    );
  }
}
