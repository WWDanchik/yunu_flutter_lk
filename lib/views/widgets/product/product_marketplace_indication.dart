import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/views/widgets/product/marketplace_avatar.dart';

class ProductMarketplaceIndication extends StatelessWidget {
  final Marketplaces marketplaces;

  const ProductMarketplaceIndication({super.key, required this.marketplaces});

  @override
  Widget build(BuildContext context) {
    return (Row(
      spacing: 10,
      children: [
        MarketplaceAvatar(
          marketplace: MarketplaceEnum.ozonFbs,
          status: marketplaces.ozonFbs,
        ),
        MarketplaceAvatar(
          marketplace: MarketplaceEnum.ozonRealFbsExpress,
          status: marketplaces.ozonRealFbsExpress,
        ),
        MarketplaceAvatar(
          marketplace: MarketplaceEnum.wildberriesFbs,
          status: marketplaces.wildberriesFbs,
        ),
        MarketplaceAvatar(
          marketplace: MarketplaceEnum.yandexMarketFbs,
          status: marketplaces.yandexMarketFbs,
        ),
        MarketplaceAvatar(
          marketplace: MarketplaceEnum.yandexMarketFbsFast,
          status: marketplaces.yandexMarketFbsFast,
        ),
        MarketplaceAvatar(
          marketplace: MarketplaceEnum.sberFbs,
          status: marketplaces.sberFbs,
        ),
      ],
    ));
  }
}
