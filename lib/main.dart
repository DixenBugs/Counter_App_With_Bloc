import 'package:counter_app_with_cubit_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_app_with_cubit_bloc/cubit/counter/counter_cubit.dart';
import 'package:counter_app_with_cubit_bloc/cubit/theme/theme_cubit.dart';
import 'package:counter_app_with_cubit_bloc/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeEnum>(
      builder: (context, state) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: state.themeMode,
        home: const Skeleton(),
      ),
    );
  }
}
