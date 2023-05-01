import 'package:flutter/material.dart';

import './home_screen.dart';
import './explore_screen.dart';
import './playlists_screen.dart';
import './account_screen.dart';

import '../widgets/custom_card.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/now_playing_bar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  GlobalKey<ScaffoldState> bottomNavScaffoldKey = GlobalKey<ScaffoldState>();
  var _selectedScreenIndex = 0;
  final _showAccounts = true;
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
      backgroundColor: Colors.transparent,
      drawer: const CustomDrawer(),
      extendBody: true,
      body: Stack(
        // alignment: Alignment.topCenter,
        children: [
          _screenData[_selectedScreenIndex]['screen'] as Widget,
          const NowPlayingBar(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CustomCard(
          borderRadius: 20,
          // margin: const EdgeInsets.only(
          //   top: 8,
          //   left: 10,
          //   right: 10,
          //   bottom: 10,
          // ),
          padding: const EdgeInsets.all(0),
          child: BottomNavigationBar(
            onTap: (int newIndex) => {
              setState(() {
                _selectedScreenIndex = newIndex;
              }),
            },
            currentIndex: _selectedScreenIndex,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: Colors.transparent,
            showUnselectedLabels: false,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            iconSize: 28,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.white,
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'Home'),
              const BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
              const BottomNavigationBarItem(icon: Icon(Icons.queue_music), label: 'Playlists'),
              // if (context.watch<AuthProvider>().currentUser != null)
              // if (Provider.of<AuthProvider>(context).currentUser != null)
              if (_showAccounts) const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
            ],
          ),
        ),
      ),
    );
  }
}
