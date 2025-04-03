import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationMenu extends ConsumerWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationBar(
      indicatorColor: Colors.blueAccent,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          selectedIcon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Notifications',
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
          label: 'Messages',
        ),
      ],
    );
  }
}
