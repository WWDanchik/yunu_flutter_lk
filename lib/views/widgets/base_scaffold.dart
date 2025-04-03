import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/views/widgets/shared/bottom_navigation_menu.dart';

import 'menu_drawer.dart';
import 'yunu_logo.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  final String? title;
  final PreferredSizeWidget? appBarBottom;
  final Widget? floatingActionButton;
  final List<NavigationDestination>? navigationDestinations;

  const BaseScaffold({
    Key? key,
    required this.body,
    this.title,
    this.appBarBottom,
    this.floatingActionButton,
    this.navigationDestinations,
  }) : super(key: key);

  @override
  _BaseScaffoldState createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemSelected,
      ),

      bottomNavigationBar: BottomNavigationMenu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
          child: SizedBox(
            width: 120,
            height: 100,
            child: YunuLogo(),
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none, color: Colors.black),
              ),
              const Positioned(
                right: 6,
                top: 6,
                child: _NotificationBadge(),
              ),
            ],
          ),
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          )
        ],
        title: widget.title != null ? Text(widget.title!) : null,
        bottom: widget.appBarBottom, // передаём нижнюю часть AppBar
      ),
      // Плавающая кнопка, если требуется
      floatingActionButton: widget.floatingActionButton,
      body: widget.body,
    );
  }
}

class _NotificationBadge extends StatelessWidget {
  const _NotificationBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: const Text(
        '99+',
        style: TextStyle(fontSize: 8, color: Colors.white),
      ),
    );
  }
}
