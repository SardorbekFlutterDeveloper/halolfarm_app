import 'package:flutter/material.dart';

class Language {
  Locale locale;
  String langName;
  Language({required this.locale, required this.langName});

  List<Language> languageList = [
    Language(locale: const Locale("en"), langName: 'English - UK'),
    Language(locale: const Locale("ru"), langName: 'Russian - RS'),
    Language(locale: const Locale("uz"), langName: 'Uzbek - UZ'),
  ];
}
