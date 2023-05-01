import 'package:cipherschools/constants/colors.dart';
import 'package:cipherschools/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          toolbarHeight: 70,
          elevation: 2,
          iconTheme: IconThemeData(
            color: AppColors.black,
            size: 32,
          ),
          titleTextStyle: TextStyle(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomePage(),
    );
  }
}
