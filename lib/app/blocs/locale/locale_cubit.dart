import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

const engLocale = Locale('en', 'US');
const spanishLocale = Locale('es', 'ES');

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(engLocale);

  void selectEnglishLocale() {
    emit(engLocale);
  }

  void selectSpanishLocale() {
    emit(spanishLocale);
  }
}
