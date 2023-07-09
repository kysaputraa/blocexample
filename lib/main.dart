import 'package:belajarbloc/bloc/counter.dart';
import 'package:belajarbloc/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = MyRouter();
  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counter,
      child: MaterialApp(
        onGenerateRoute: router.onRoute,
      ),
    );
  }
}
