import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/Ios_app/I_view_screen/I_Home_screen.dart';
import 'package:settings_ui/android_app/A_Provider_screen/A_Provider_screen.dart';
import 'package:settings_ui/android_app/A_view_screen/Home_screen.dart';


void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => A_Provider_screen(),
          ),
        ],
        child: Platform.isIOS?CupertinoApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/":(p0) => I_home_screen(),
          },
        ):MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/":(context) => Home_screen(),
          },
        ),
      ),
    );
