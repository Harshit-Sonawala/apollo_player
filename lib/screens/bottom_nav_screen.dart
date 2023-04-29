import 'package:flutter/material.dart';

import './home_screen.dart';
import './explore_screen.dart';
import './playlists_screen.dart';
import './account_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  GlobalKey<ScaffoldState> bottomNavScaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, Object>> _screenData = const [
    {"page": HomeScreen()},
    {"page": ExploreScreen()},
    {"page": PlaylistsScreen()},
    {"page": AccountScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomNavScaffoldKey,
      extendBody: true,
    );
  }
}
