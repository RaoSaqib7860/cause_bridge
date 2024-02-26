import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'View/Screens/Authentication/Login/login_screen.dart';
import 'View/Screens/Bottom Sheet/bottom_sheet.dart';
import 'View/Screens/Splash/splash_screenn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.green.withOpacity(0.5)),
          // useMaterial3: true,
        ),
        home: const SplashScreen(),
        themeMode: ThemeMode.light,
        //BottomSheetScreen(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
