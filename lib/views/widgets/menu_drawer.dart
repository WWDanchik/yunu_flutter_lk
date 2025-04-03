import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:yunu_lk_flutter/viewmodels/auth/auth_notifier.dart';
import 'package:yunu_lk_flutter/views/widgets/yunu_logo.dart';

class MenuDrawer extends ConsumerWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const MenuDrawer({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.read(authNotifierProvider.notifier);
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          YunuLogo(
            width: 40,
            height: 40,
          ),
          FilledButton(
              onPressed: () {
                auth.logOut();
              },
              child: Text("Выход")),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 8, left: 8, right: 8),
              children: [
                _buildDrawerItem(
                  icon: Icons.insights,
                  title: 'Статистика',
                  selected: selectedIndex == 0,
                  onTap: () {
                    onItemSelected(0);
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 8),
                _buildDrawerItem(
                  icon: Icons.analytics_outlined,
                  title: 'Анализ продаж',
                  selected: selectedIndex == 1,
                  onTap: () {
                    onItemSelected(1);
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 8),
                ExpansionTile(
                  leading: Icon(
                    Icons.payments_outlined,
                    color: Colors.grey.shade700,
                  ),
                  title: const Text('Оплаты по заказам'),
                  shape: const RoundedRectangleBorder(side: BorderSide.none),
                  collapsedShape:
                      const RoundedRectangleBorder(side: BorderSide.none),
                  children: [
                    _buildSubItem('Все оплаты', () {
                      Navigator.pop(context);
                    }),
                    _buildSubItem('Просроченные', () {
                      Navigator.pop(context);
                    }),
                  ],
                ),
                SizedBox(height: 8),
                _buildDrawerItem(
                  icon: Icons.inventory_2_outlined,
                  title: 'Товары',
                  selected: selectedIndex == 2,
                  onTap: () {
                    Navigator.pop(context);
                    context.push("/product/list");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool selected = false,
  }) {
    final color = selected ? const Color(0xFF586BFB) : Colors.grey.shade700;
    final bgColor = selected ? const Color(0xFFE7EBFF) : Colors.transparent;

    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Material(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          leading: Icon(icon, color: color),
          title: Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  Widget _buildSubItem(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
