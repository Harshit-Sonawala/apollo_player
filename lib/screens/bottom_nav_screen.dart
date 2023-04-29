import 'package:flutter/material.dart';

import './home_screen.dart';
import './explore_screen.dart';
import './playlists_screen.dart';
import './account_screen.dart';

import '../widgets/custom_card.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  GlobalKey<ScaffoldState> bottomNavScaffoldKey = GlobalKey<ScaffoldState>();
  var _selectedScreenIndex = 0;
  var _showAccounts = true;
  final List<Map<String, Object>> _screenData = const [
    {"screen": HomeScreen()},
    {"screen": ExploreScreen()},
    {"screen": PlaylistsScreen()},
    {"screen": AccountScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomNavScaffoldKey,
      extendBody: true,
      body: _screenData[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: CustomCard(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 26,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                size: 26,
              ),
              label: 'Explore',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 26,
              ),
              label: 'Search',
            ),
            // if (context.watch<AuthProvider>().currentUser != null)
            // if (Provider.of<AuthProvider>(context).currentUser != null)
            if (_showAccounts)
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.accessibility_new,
                  size: 26,
                ),
                label: 'My Exercises',
              ),
          ],
          currentIndex: _selectedScreenIndex,
          onTap: (int newIndex) => {
            setState(() {
              _selectedScreenIndex = newIndex;
            }),
          },
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
