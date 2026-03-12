import 'package:flutter/material.dart';

class CounterPageWithSetState extends StatefulWidget {
  const CounterPageWithSetState({super.key});

  @override
  State<CounterPageWithSetState> createState() =>
      _CounterPageWithSetStateState();
}

class _CounterPageWithSetStateState extends State<CounterPageWithSetState> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 20,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() {
              if (_counter <= 0) return;
              _counter--;
            }),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => setState(() {
              _counter++;
            }),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
