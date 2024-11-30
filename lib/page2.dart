import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final Color passedColor;
  final String passedColorName;

  const PageTwo(
      {super.key,
        required this.passedColor,
        required this.passedColorName})
  ;

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: widget.passedColor,
          ),
          Text('${widget.passedColorName} color was passed'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('<- Go back'))
        ],
      ),
    );
  }
}