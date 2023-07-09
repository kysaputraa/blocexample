import 'package:belajarbloc/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    Counter counter = context.read<Counter>();
    // Counter counter = BlocProvider.of<Counter>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<Counter, int>(
              bloc: counter,
              builder: (context, state) {
                return Text("$state");
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => {
                  counter.decrement(),
                },
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => {
                  counter.increment(),
                },
                icon: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
