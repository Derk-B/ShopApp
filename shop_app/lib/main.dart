import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/src/features/shop/presentation/view/shop_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: const ButtonStyle().copyWith(
            foregroundColor: const MaterialStatePropertyAll(Colors.black87),
            overlayColor: const MaterialStatePropertyAll(Colors.black12),
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
            style: const ButtonStyle().copyWith(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0))),
                iconColor: const MaterialStatePropertyAll(Colors.white),
                backgroundColor:
                    const MaterialStatePropertyAll(Colors.black87))),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            titleLarge: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        scaffoldBackgroundColor: Colors.blueGrey[50],
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.blueGrey[50],
            surfaceTintColor: Colors.transparent,
            foregroundColor: Colors.transparent),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87))),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.black12),
              foregroundColor: MaterialStatePropertyAll(Colors.black87)),
        ),
        buttonTheme: const ButtonThemeData(buttonColor: Colors.black87),
      ),
      home: const ShopHomeScreen(),
    );
  }
}
