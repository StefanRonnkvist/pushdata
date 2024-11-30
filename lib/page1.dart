import 'package:flutter/material.dart';
import 'page2.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Choose the color (value to be passed) of the Next Page:'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PageTwo(
                      passedColor: Colors.pink,
                      passedColorName: 'Pink',
                    ),
                  ),
                );
              },
              child: const Text('Pink')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PageTwo(
                    passedColor: Colors.blueGrey,
                    passedColorName: 'Blue',
                  ),
                ),
              );
            },
            child: const Text('Blue'),
          ),
          const SizedBox(
            height: 250,
          )
        ],
      ),
    );
  }
}
