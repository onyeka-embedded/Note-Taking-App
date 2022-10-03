import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_taking_app/screens/create_account.dart';
import 'package:note_taking_app/screens/subscribe.dart';

import 'screens/onbording_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
         // home: child,
          routes: {
            '/':(context) => const MainScreen(),
            'subscribe':(context) => const Subscribe(),
            'createAccount':(context) => const CreateAccount()
          },
        );
      },
      child: const MainScreen(),
    );
  }
}

