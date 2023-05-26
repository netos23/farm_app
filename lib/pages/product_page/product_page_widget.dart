import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/domain/models/product.dart';
import 'package:farm_app/generated/app_localizations.dart';
import 'package:farm_app/pages/components/favourite_button.dart';
import 'package:farm_app/pages/components/loading_indicator.dart';
import 'package:farm_app/util/money_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'product_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProductPage module
@RoutePage()
class ProductPageWidget extends ElementaryWidget<IProductPageWidgetModel> {
  const ProductPageWidget({
    Key? key,
    @queryParam this.heroTag,
    this.product,
    @pathParam required this.productId,
    WidgetModelFactory wmFactory = defaultProductPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int productId;
  final Product? product;
  final String? heroTag;

  @override
  Widget build(IProductPageWidgetModel wm) {
    if (product == null) {
      return const Center(
        child: LoadingIndicator(),
      );
    }

    return Scaffold(
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.productState,
        loadingBuilder: (context, data) {
          return _ProductPriview(
            heroTag: heroTag,
            product: product,
          );
        },
        builder: (context, data) {
          final theme = Theme.of(context);
          final product = data;
          final oldPrice = this.product?.oldPrice;
          final localizations = AppLocalizations.of(context);

          if (product == null) {
            return const Center(
              child: LoadingIndicator(),
            );
          }

          return CustomScrollView(
            slivers: [
              if (!kIsWeb)
                SliverAppBar(
                  // automaticallyImplyLeading: !kIsWeb,
                  expandedHeight: 300,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                      tag: heroTag ?? '',
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: product.picture ?? '',
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
                  ),
                ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      if(kIsWeb)
                      AspectRatio(
                        aspectRatio: 1.0,
                        child: Hero(
                          tag: heroTag ?? '',
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: product.picture ?? '',
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
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBarIndicator(
                            rating: product.rating?.toDouble() ?? 0,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 25.0,
                            physics: const NeverScrollableScrollPhysics(),
                            direction: Axis.horizontal,
                          ),
                          FavouriteButton(
                            productId: product.id,
                            favourite: false,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        product.name,
                        style: theme.textTheme.displaySmall?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: product.price.formatMoney(),
                          style: theme.textTheme.displaySmall?.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                          children: [
                            const TextSpan(
                              text: ' ',
                            ),
                            if (oldPrice != null)
                              TextSpan(
                                text: oldPrice.formatMoney(),
                                style: theme.textTheme.displaySmall?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                          ],
                        ),
                      ),
                      FilledButton(
                          child: Text(
                            localizations.order,
                          ),
                          onPressed: () => wm.addToCart(product)),
                      Text(
                        product.description ?? '',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ProductPriview extends StatelessWidget {
  const _ProductPriview({
    super.key,
    required this.heroTag,
    this.product,
  });

  final String? heroTag;
  final Product? product;

  @override
  Widget build(BuildContext context) {
    final product = this.product;
    final oldPrice = this.product?.oldPrice;
    final theme = Theme.of(context);

    if (product == null) {
      return const Center(
        child: LoadingIndicator(),
      );
    }

    return CustomScrollView(
      slivers: [
        if (!kIsWeb)
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: heroTag ?? '',
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: product.picture,
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
            ),
          ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              if (kIsWeb)
                AspectRatio(
                  aspectRatio: 1.0,
                  child: Hero(
                    tag: heroTag ?? '',
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: product.picture,
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
                ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBarIndicator(
                    rating: product.rating?.toDouble() ?? 0,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 25.0,
                    physics: const NeverScrollableScrollPhysics(),
                    direction: Axis.horizontal,
                  ),
                  FavouriteButton(
                    productId: product.id,
                    favourite: false,
                  )
                ],
              ),
              const SizedBox(height: 5),
              Text(
                product.name,
                style: theme.textTheme.displaySmall?.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: product.price.formatMoney(),
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                  children: [
                    const TextSpan(
                      text: ' ',
                    ),
                    if (oldPrice != null)
                      TextSpan(
                        text: oldPrice.formatMoney(),
                        style: theme.textTheme.displaySmall?.copyWith(
                          color: theme.colorScheme.onBackground,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
