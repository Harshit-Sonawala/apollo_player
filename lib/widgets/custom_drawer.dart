import 'package:flutter/material.dart';
// import '../screens/wip_screen.dart';
// import '../screens/user_account_screen.dart';
// import '../screens/test_screen.dart';
import '../widgets/custom_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff1d1d1d),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Container(
              padding: const EdgeInsets.only(top: 70),
              decoration: const BoxDecoration(
                // color: Theme.of(context).primaryColor,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1d1d1d),
                    Color(0xff1d1d1d),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.headphones,
                              size: 32,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              'Apollo',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              'Music',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'Version 0.1.0',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // ListTile(
          //   onTap: () => {},
          //   leading: const Icon(Icons.home, size: 24),
          //   title: Text(
          //     'Home',
          //     style: Theme.of(context).textTheme.bodyMedium,
          //   ),
          // ),
          // ListTile(
          //   onTap: () => {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const UserAccountScreen(),
          //       ),
          //     ),
          //   },
          //   leading: const Icon(Icons.accessibility, size: 24.0),
          //   title: Text(
          //     'My Exercises',
          //     style: Theme.of(context).textTheme.bodyMedium,
          //   ),
          // ),
          ListTile(
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const TestScreen(),
              //   ),
              // ),
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const WipScreen(
              //       screenName: 'Settings Screen',
              //     ),
              //   ),
              // ),
            },
            leading: const Icon(Icons.settings, size: 24.0),
            title: Text(
              'Settings',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          ListTile(
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const WipScreen(
              //       screenName: 'About Screen',
              //     ),
              //   ),
              // ),
            },
            leading: const Icon(Icons.info_outlined, size: 24.0),
            title: Text(
              'About',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
