import 'package:counter_app_with_cubit_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_with_cubit_bloc/cubit/counter_cubit.dart';
import 'package:counter_app_with_cubit_bloc/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Skeleton(),
    );
  }
}
