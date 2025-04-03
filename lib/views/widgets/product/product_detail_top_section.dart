import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';

class ProductDetailTopSection extends StatelessWidget {
  final ProductDetail productDetail;
  const ProductDetailTopSection({super.key, required this.productDetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        "Продаётся",
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    productDetail.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const Spacer(),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade100,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:
                      productDetail.photo.isNotEmpty
                          ? Image.network(
                            productDetail.photo,
                            fit: BoxFit.cover,
                            errorBuilder:
                                (_, __, ___) => const Icon(
                                  Icons.broken_image,
                                  color: Colors.grey,
                                ),
                          )
                          : const Icon(Icons.image, color: Colors.grey),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (productDetail.categoryName.isNotEmpty)
                Divider(color: Colors.grey.shade200),
              if (productDetail.categoryName.isNotEmpty)
                Text(productDetail.categoryName),
              if (productDetail.categoryName.isNotEmpty)
                Divider(color: Colors.grey.shade200),
            ],
          ),
        ],
      ),
    );
  }
}
