import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yunu_lk_flutter/data/models/vendor/vendor.dart';
import 'package:yunu_lk_flutter/viewmodels/vendor/vendor_provider.dart';

class VendorScreen extends ConsumerWidget {
  const VendorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vendorListController = ref.watch(vendorListControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Поставщики")),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: PagingListener(
            controller: vendorListController.pagingController,
            builder:
                (context, state, fetchNextPage) => RefreshIndicator(
                  color: Theme.of(context).colorScheme.primary,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  displacement: 40.0,

                  strokeWidth: 3.0,
                  onRefresh: () async {
                    vendorListController.refresh();
                  },
                  child: PagedListView(
                    state: state,
                    fetchNextPage: fetchNextPage,
                    addAutomaticKeepAlives: true,

                    builderDelegate: PagedChildBuilderDelegate<Vendor>(
                      itemBuilder: (context, vendor, index) {
                        return VendorListItem(
                          vendor: vendor,
                          onTap: () {
                            vendorListController.listModifier.updateItem(
                              vendor.copyWith(name: "Член шлюхи"),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

class VendorListItem extends StatelessWidget {
  final Vendor vendor;
  final VoidCallback? onTap;

  const VendorListItem({super.key, required this.vendor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          splashColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: 0.1),
          highlightColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: 0.05),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(
                  context,
                ).colorScheme.outline.withValues(alpha: 0.08),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    child: Center(
                      child: Text(
                        _getInitials(vendor.name),
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Основная информация
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Название
                        Text(
                          vendor.name,
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),

                        // Информационная строка
                        Row(
                          children: [
                            // Дата
                            Icon(
                              Icons.schedule_outlined,
                              size: 14,
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              _formatDate(vendor.createdDate),
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 16),

                            // ID с точкой-разделителем
                            Container(
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant
                                    .withValues(alpha: 0.4),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'ID ${vendor.id}',
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Минималистичная иконка
                  Icon(
                    Icons.chevron_right_rounded,
                    size: 20,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _getInitials(String name) {
    return name
        .split(' ')
        .where((word) => word.isNotEmpty)
        .take(2)
        .map((word) => word[0].toUpperCase())
        .join();
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
    } catch (e) {
      return dateString;
    }
  }
}
