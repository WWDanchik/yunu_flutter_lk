import 'package:flutter/material.dart';

enum SelectionType { single, multiple, toggle }

class SelectionFilterController<T, ID> {
  Set<ID> selectedIds;
  final void Function(Set<ID>) onSelectionChanged;
  final ID Function(T) getId;
  final SelectionType selectionType;
  final bool preventDeselectAll;

  SelectionFilterController({
    required this.selectedIds,
    required this.onSelectionChanged,
    required this.getId,
    this.selectionType = SelectionType.multiple,
    this.preventDeselectAll = true,
  });

  void toggle(T item) {
    final newSelection = Set<ID>.from(selectedIds);
    final itemId = getId(item);

    if (newSelection.contains(itemId)) {
      if (!(preventDeselectAll && newSelection.length == 1)) {
        newSelection.remove(itemId);
      }
    } else {
      if (selectionType == SelectionType.single) {
        newSelection.clear();
      }
      newSelection.add(itemId);
    }

    onSelectionChanged(newSelection);
  }

  bool isLastSelected(T item) {
    return preventDeselectAll &&
        selectedIds.length == 1 &&
        selectedIds.contains(getId(item));
  }

  void selectAll(Iterable<T> items) {
    final ids = items.map(getId).toSet();
    onSelectionChanged(ids);
  }

  void clear() {
    onSelectionChanged({});
  }
}

class SelectionChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final Color? selectedColor;
  final Color? unselectedColor;
  final TextStyle? labelStyle;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final double elevation;
  final Duration animationDuration;

  const SelectionChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.selectedColor,
    this.unselectedColor,
    this.labelStyle,
    this.border,
    this.borderRadius,
    this.elevation = 1,
    this.animationDuration = const Duration(milliseconds: 200),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedContainer(
      duration: animationDuration,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color:
            isSelected
                ? selectedColor ?? colorScheme.primary
                : unselectedColor ?? colorScheme.surface,
        border:
            border ??
            Border.all(
              color:
                  isSelected
                      ? selectedColor ?? colorScheme.primary
                      : colorScheme.outline,
              width: 1,
            ),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        boxShadow: [
          if (elevation > 0)
            BoxShadow(
              color: theme.shadowColor,
              blurRadius: elevation * 2,
              offset: Offset(0, elevation),
            ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: padding,
            child: AnimatedDefaultTextStyle(
              duration: animationDuration,
              style: (labelStyle ?? theme.textTheme.labelLarge)!.copyWith(
                color:
                    isSelected ? colorScheme.onPrimary : colorScheme.onSurface,
              ),
              child: Text(label),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectionFilter<T, ID> extends StatelessWidget {
  final List<T> items;
  final SelectionFilterController<T, ID> controller;
  final Widget Function(BuildContext, T, bool, VoidCallback) itemBuilder;
  final Axis direction;
  final double spacing;

  const SelectionFilter({
    super.key,
    required this.items,
    required this.controller,
    required this.itemBuilder,
    this.direction = Axis.horizontal,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: direction,
      spacing: spacing,
      runSpacing: 0,

      children:
          items.map((item) {
            final isSelected = controller.selectedIds.contains(
              controller.getId(item),
            );

            return itemBuilder(
              context,
              item,
              isSelected,
              () => controller.toggle(item),
            );
          }).toList(),
    );
  }
}
