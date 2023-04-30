import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/track_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => {
                        // widget.passedKey.currentState?.openDrawer(),
                        Scaffold.of(context).openDrawer(),
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.headphones,
                          color: Theme.of(context).colorScheme.primary,
                          size: 30,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Apollo',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Music',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () => {
                        // widget.passedKey.currentState?.openDrawer(),
                        Scaffold.of(context).openDrawer(),
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomCard(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning,',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            'Harshit',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff4d4d4d),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Recently Added:',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 10),
                    CustomTextButton(
                      onPressed: () => {},
                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      border: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary),
                      borderRadius: 50,
                      icon: Icons.playlist_add,
                      iconSize: 24,
                      title: 'Play',
                    ),
                    const SizedBox(width: 10),
                    CustomTextButton(
                      onPressed: () => {},
                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      border: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary),
                      borderRadius: 50,
                      icon: Icons.shuffle,
                      iconSize: 22,
                      title: 'Shuffle',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const TrackCard(
                  trackTitle: 'Track ABC',
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'All Tracks:',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
