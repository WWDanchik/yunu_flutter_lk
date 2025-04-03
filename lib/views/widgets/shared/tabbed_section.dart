import 'package:flutter/material.dart';

/// Виджет с заголовком, кнопкой действий и вкладками.
/// При нажатии на кнопку вызывается callback, соответствующий текущей вкладке.
class TabbedSection extends StatefulWidget {
  final String title;
  final List<Tab> tabs;
  final List<Widget> tabViews;

  /// Список callback-ов для каждой вкладки. Количество элементов должно совпадать с tabs.
  final List<VoidCallback> actionsCallbacks;

  const TabbedSection({
    super.key,
    required this.title,
    required this.tabs,
    required this.tabViews,
    required this.actionsCallbacks,
  });

  @override
  _TabbedSectionState createState() => _TabbedSectionState();
}

class _TabbedSectionState extends State<TabbedSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onActionPressed() {
    final currentIndex = _tabController.index;
    if (currentIndex < widget.actionsCallbacks.length) {
      widget.actionsCallbacks[currentIndex]();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton.filledTonal(
                onPressed: _onActionPressed,
                icon: const Icon(Icons.edit),
              ),
            ],
          ),

          TabBar(
            controller: _tabController,
            tabs: widget.tabs,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
          ),

          SizedBox(
            height: 150,
            child: TabBarView(
              controller: _tabController,
              children: widget.tabViews,
            ),
          ),
        ],
      ),
    );
  }
}
