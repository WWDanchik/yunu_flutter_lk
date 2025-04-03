import 'package:flutter/material.dart';

class SectionHeaderWithActions extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final List<Widget> actions;
  final Widget child;

  const SectionHeaderWithActions({
    super.key,
    required this.title,
    this.titleStyle,
    this.actions = const [],
    required this.child,
  });

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
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              ...actions,
            ],
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
