import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:setting_ui/screen/home/provider/home_provider.dart';
import 'package:setting_ui/screen/ihome_screen/view/ihome.dart';

void main()
{

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider()),
      ],

      child: CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => ios_screen(),
        },
      ),
    ),
  );
}