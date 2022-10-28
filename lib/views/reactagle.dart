

import 'dart:math';

import 'package:flutter/material.dart';

class MyRectangle extends StatelessWidget {
  const MyRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _random = Random();

    final _randomColor = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256)
    );

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 2/3,
              width: 200,
              color: _randomColor
            ),
            Container(
              height: MediaQuery.of(context).size.height * 2/3,
              width: 200,
              color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
              [_random.nextInt(9) * 100],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 2/3,
              width: 200,
              color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
              [_random.nextInt(9) * 100],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 2/3,
              width: 200,
              color: _randomColor
            )
          ],
        ),
      ),
    );
  }
}
