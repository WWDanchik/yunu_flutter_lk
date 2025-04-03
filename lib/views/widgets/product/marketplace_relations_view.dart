import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yunu_lk_flutter/data/models/product/marketplace_sku_relations_result.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart' hide Article;
import 'package:yunu_lk_flutter/viewmodels/product/product.dart';
import 'package:yunu_lk_flutter/views/widgets/product/marketplace_avatar.dart';

class MarketplaceRelationsView extends ConsumerWidget {
  final ProductDetail productDetail;
  const MarketplaceRelationsView({super.key, required this.productDetail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(
      marketplaceSkuRelationsResultProvider(productDetail.id),
    );

    return data.when(
      data: (data) {
        return data.when(
          error: (status, errors) => Center(child: Text('Ошибка: $errors')),
          ok: (status, result) {
            return Column(
              spacing: 10,
              children: [
                for (final article in result.articles)
                  _buildArticleCard(article),
              ],
            );
          },
        );
      },
      error: (error, stackTrace) => Center(child: Text('Ошибка: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildArticleCard(Article article) {
    return Card(
      margin: EdgeInsets.zero,

      elevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.grey[300]!),
      ),
      child: ExpansionTile(
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent),
        ),
        initiallyExpanded: true,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent),
        ),
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(
          'Артикул: ${article.article}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children:
            article.marketplaces.map((mp) => _buildMarketplace(mp)).toList(),
      ),
    );
  }

  Widget _buildMarketplace(Marketplace mp) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Card(
        color: Colors.grey[100],
        elevation: 0, // Убираем тень
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey[300]!),
        ),
        child: ExpansionTile(
          collapsedShape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.transparent),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.transparent),
          ),
          tilePadding: const EdgeInsets.symmetric(horizontal: 12),
          leading: _getMarketplaceIcon(mp.name),
          title: Text(mp.name, style: const TextStyle(fontSize: 16)),
          children:
              mp.cabinets.map((cabinet) => _buildCabinet(cabinet)).toList(),
        ),
      ),
    );
  }

  Widget _buildCabinet(Cabinet cabinet) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 16),
      child: Card(
        color: Colors.grey[50],
        elevation: 0, // Убираем тень
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey[300]!),
        ),
        child: ExpansionTile(
          initiallyExpanded: true,
          collapsedShape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.transparent),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.transparent),
          ),
          tilePadding: const EdgeInsets.symmetric(horizontal: 8),
          leading: const Icon(Icons.account_balance, size: 20),
          title: Text(cabinet.name, style: const TextStyle(fontSize: 14)),
          children:
              cabinet.relations.map((rel) => _buildRelation(rel)).toList(),
        ),
      ),
    );
  }

  Widget _buildRelation(Relation relation) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 48, right: 16),
      leading: Icon(
        relation.isRelated ? Icons.check_circle : Icons.cancel,
        color: relation.isRelated ? Colors.green : Colors.red,
      ),
      title: Text(relation.deliveryTypeName),
      subtitle: Text(
        relation.isRelated ? 'Связь установлена' : 'Связь отсутствует',
        style: TextStyle(color: relation.isRelated ? Colors.green : Colors.red),
      ),
    );
  }

  Widget _getMarketplaceIcon(String name) {
    switch (name) {
      case 'Wildberries':
        return CircleAvatar(
          radius: 12,
          child: SvgPicture.asset('assets/svg/wildberries_circle.svg'),
        );
      case 'Ozon':
        return CircleAvatar(
          radius: 12,
          child: SvgPicture.asset('assets/svg/ozon_circle.svg'),
        );

      case 'YandexMarket':
        return CircleAvatar(
          radius: 12,
          child: SvgPicture.asset('assets/svg/yandex_circle.svg'),
        );
      case 'MegaMarket':
        return CircleAvatar(
          radius: 12,
          child: SvgPicture.asset('assets/svg/mm_circle.svg'),
        );
      default:
        return CircleAvatar(
          radius: 12,
          child: SvgPicture.asset('assets/svg/yandex_circle.svg'),
        );
    }
  }
}
