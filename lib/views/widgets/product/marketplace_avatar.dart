import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';

class MarketplaceAvatar extends StatelessWidget {
  final MarketplaceEnum marketplace;
  final MarketplaceStatus status;
  const MarketplaceAvatar({
    super.key,
    required this.marketplace,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final statusColorMap = {
      MarketplaceStatus.lackLink: Colors.redAccent,
      MarketplaceStatus.success: Colors.green,
      MarketplaceStatus.lackLinkAndWithCategory: Colors.orangeAccent,
    };
    return Badge(
      smallSize: 10,
      largeSize: 10,
      label: Text(""),
      backgroundColor: statusColorMap[status],
      child: CircleAvatar(
        radius: 12,
        child: marketplace.icon(status == MarketplaceStatus.success),
      ),
    );
  }
}
