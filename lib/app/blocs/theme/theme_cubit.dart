import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<Brightness> {
  ThemeCubit() : super(Brightness.light);

  void changeToDarkMode() {
    emit(Brightness.dark);
  }

  void changeToLightMode() {
    emit(Brightness.light);
  }
}
