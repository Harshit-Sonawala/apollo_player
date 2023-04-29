import 'package:flutter/material.dart';

import 'screens/bottom_nav_screen.dart';

void main() {
  runApp(
    const Apollo(),
  );
}

class Apollo extends StatelessWidget {
  const Apollo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apollo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashColor: const Color.fromRGBO(75, 219, 255, 0.342),
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            background: Color(0xff1d1d1d),
            onBackground: Colors.white,
            surface: Color(0xff2d2d2d),
            onSurface: Colors.white,
            primary: Color(0xFF4BDBFF),
            onPrimary: Color(0xff1d1d1d),
            secondary: Color(0xff3d3d3d),
            onSecondary: Color(0xFF2F88EE),
            error: Color(0xffdd1b6c),
            onError: Color(0xff1d1d1d),
          ),
          useMaterial3: true,
          fontFamily: 'ProductSans',
          textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
            displayMedium: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
            displaySmall: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
            bodyLarge: const TextStyle(
              fontSize: 26.0,
            ),
            bodyMedium: const TextStyle(
              fontSize: 22.0,
            ),
            bodySmall: const TextStyle(
              fontSize: 18.0,
            ),
          )),
      home: const BottomNavScreen(),
    );
  }
}
