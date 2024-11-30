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
        automaticallyImplyLeading: false, //to disable going back
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
// Use this if u want to later make changes to the passed value in the code. Full code in the file below
// NOTE: Here 'foo' means 'your value'
// class MyStateful extends StatefulWidget {
//   final String foo;
//   const MyStateful({Key key, this.foo}): super(key: key);
//   @override
//   _MyStatefulState createState() => _MyStatefulState(foo: this.foo);
// }
// class _MyStatefulState extends State<MyStateful> {
//   String foo;
//   _MyStatefulState({this.foo});
//   @override
//   Widget build(BuildContext context) {
//     return Text(foo);
//   },}