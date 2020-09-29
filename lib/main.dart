import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/home_page.dart';
import 'package:nubank_flutter/themes/colors.dart';

void main() => runApp(MaterialApp(
  title: 'Clone Nubank',
  theme: ThemeData(
    primaryColor: kprimaryColors,
    accentColor: kprimaryColors,
  ),
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));
