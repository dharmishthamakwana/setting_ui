

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:setting_ui/screen/home/provider/home_provider.dart';
import 'package:setting_ui/screen/home/view/home_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => home_provider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (p0) => home_screen(),
        },
      ),
    ),
  );
}
