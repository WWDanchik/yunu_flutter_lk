// content_aware_bottom_sheet.dart
import 'package:flutter/material.dart';

class ContentAwareBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    double minScreenFraction = 0.2,
    double maxScreenFraction = 0.9,
    Color backgroundColor = Colors.white,
    double borderRadius = 16.0,
    bool isDismissible = true,
    bool enableDrag = true,
  }) async {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height - mediaQuery.padding.top;

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
      ),
      builder: (context) => _ContentAwareSheet(
        child: child,
        screenHeight: screenHeight,
        minScreenFraction: minScreenFraction,
        maxScreenFraction: maxScreenFraction,
      ),
    );
  }
}

class _ContentAwareSheet extends StatefulWidget {
  final Widget child;
  final double screenHeight;
  final double minScreenFraction;
  final double maxScreenFraction;

  const _ContentAwareSheet({
    required this.child,
    required this.screenHeight,
    required this.minScreenFraction,
    required this.maxScreenFraction,
  });

  @override
  __ContentAwareSheetState createState() => __ContentAwareSheetState();
}

class __ContentAwareSheetState extends State<_ContentAwareSheet> {
  late final ScrollController _scrollController;
  double _contentHeight = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) => _measureContent());
  }

  void _measureContent() {
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final newHeight = renderBox.size.height;
    if (newHeight != _contentHeight) {
      setState(() => _contentHeight = newHeight);
    }
  }

  double get _initialHeight {
    final desiredHeight = _contentHeight / widget.screenHeight;
    return desiredHeight.clamp(
        widget.minScreenFraction, widget.maxScreenFraction);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: _initialHeight,
      minChildSize: widget.minScreenFraction,
      maxChildSize: widget.maxScreenFraction,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: widget.child,
        );
      },
    );
  }
}
