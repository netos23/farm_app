import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/domain/models/category.dart';
import 'package:farm_app/pages/components/loading_indicator.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    this.onTap,
  }) : super(key: key);
  final Category category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final url = category.picture;
    final theme = Theme.of(context);

    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AspectRatio(
              aspectRatio: 1.0,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: url ?? '',
                progressIndicatorBuilder: (_, __, ___) {
                  return const Center(
                    child: LoadingIndicator(),
                  );
                },
                errorWidget: (_, __, ___) {
                  return Image.asset(
                    'assets/images/products.png',
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                category.name,
                style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
