import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/domain/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: product.picture,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _ProductDescription(product: product),
        )
      ],
    );
  }
}

class _ProductDescription extends StatelessWidget {
  const _ProductDescription({
    super.key,
    required this.product,
  });

  final Product product;


  @override
  Widget build(BuildContext context) {
    final  theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  product.name,
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(color: theme.colorScheme.onBackground),
                ),
              ),
            ),
            Flexible(
              child: Text(
                product.description,
                maxLines: 1,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onBackground,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  product.name,
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(color: theme.colorScheme.onBackground),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
