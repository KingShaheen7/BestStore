import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 39, 13, 109),
          title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 39, 13, 109),
                child: const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.right, // Aligns the text to the right
                ),
              ),
            )
          ]),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const Center(child: Icon(Icons.settings, size: 70)));
  }
}
