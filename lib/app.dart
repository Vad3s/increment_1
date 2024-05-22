// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Increment(),
    );
  }
}

class Increment extends StatefulWidget {
  const Increment({super.key});

  @override
  _IncrementState createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  _counter += 2;
                });
              },
              child: const Text('Increment 2'),
            ),
          ],
        ),
      ),
    );
  }
}
