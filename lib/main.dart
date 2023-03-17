import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/screen/home/provider/home_provider.dart';
import 'package:setting_ui/screen/home/view/home_screen.dart';
import 'package:setting_ui/screen/ihome_screen/view/ihome.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider())
      ],
      child: Platform.isAndroid?Android():iOS(),
    ),
  );
}


Widget Android()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => home_screen(),
    },
  );
}

Widget iOS()
{
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) =>ios_screen(),
    },
  );
}