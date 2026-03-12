import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_enum.dart';

class ThemeCubit extends Cubit<ThemeEnum> {
  ThemeCubit() : super(ThemeEnum.dark);

  void toggleTheme() {
    emit(state == ThemeEnum.dark ? ThemeEnum.light : ThemeEnum.dark);
  }

  IconData get icon =>
      state == ThemeEnum.dark ? Icons.dark_mode_outlined : Icons.light_mode;
}
