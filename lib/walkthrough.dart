import 'package:flutter/material.dart';
import './quizmain.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text("Hello there..."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.blue,
                side: const BorderSide(
                  width: 2,
                  color: Colors.blue,
                ),
              ),
              onPressed: () {
                // Navigation to new page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Quizmain()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Get Started With The Quiz'),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
