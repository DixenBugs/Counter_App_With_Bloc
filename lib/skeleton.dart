import 'package:counter_app_with_cubit_bloc/cubit/theme/theme_cubit.dart';
import 'package:counter_app_with_cubit_bloc/pages/counter_page_with_bloc.dart';
import 'package:counter_app_with_cubit_bloc/pages/counter_page_with_cubit.dart';
import 'package:counter_app_with_cubit_bloc/pages/counter_page_with_set_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        leading: BlocBuilder<ThemeCubit, ThemeEnum>(
          builder: (context, state) => IconButton(
            onPressed: context.read<ThemeCubit>().toggleTheme,
            icon: Icon(context.read<ThemeCubit>().icon),
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          CounterPageWithSetState(),
          CounterPageWithCubit(),
          CounterPageWithBloc(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _currentIndex = newIndex),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outline_blank),
            label: 'Cubit',
            tooltip: 'Cubit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin),
            label: 'Bloc',
            tooltip: 'Bloc',
          ),
        ],
      ),
    );
  }
}
