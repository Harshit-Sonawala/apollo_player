import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

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
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            background: Color(0xff1d1d1d),
            onBackground: Colors.white,
            surface: Color(0xff2d2d2d),
            onSurface: Colors.white,
            primary: Color(0xff2d2d2d),
            onPrimary: Color.fromARGB(255, 75, 219, 255),
            secondary: Color(0xff3d3d3d),
            onSecondary: Color.fromARGB(255, 47, 136, 238),
            error: Color.fromARGB(255, 255, 87, 75),
            onError: Color(0xff1d1d1d),
          ),
          useMaterial3: true,
          fontFamily: 'ProductSans',
          textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            displayMedium: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            displaySmall: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
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
      home: const HomeScreen(),
    );
  }
}
