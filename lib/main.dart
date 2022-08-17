import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmark/pages/home.dart';

// (c)copyright Taskmark app free open source, by ooFrancky
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Color(0xffFAFAFA),
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xffFAFAFA),
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskmark',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
