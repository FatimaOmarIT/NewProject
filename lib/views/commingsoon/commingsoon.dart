import 'package:flutter/material.dart';

class ComingSoonPage extends StatefulWidget {
  ComingSoonPage({Key? key}) : super(key: key);

  @override
  _ComingSoonPageState createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Coming Soon",
          style: TextStyle(
              color: Colors.black.withAlpha(170),
              fontWeight: FontWeight.w500,
              fontSize: 19)),
    );
  }
}
