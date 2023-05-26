import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/domain/entity/cart/cart_product.dart';
import 'package:farm_app/domain/entity/cart/cart_update.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/pages/components/loading_indicator.dart';
import 'package:flutter/material.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    Key? key,
    required this.cartProduct,
    this.onSelect,
    required this.checked,
    required this.onTap,
  }) : super(key: key);

  final CartProduct cartProduct;
  final bool checked;
  final ValueChanged<bool?>? onSelect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cartUseCase = AppComponents().cartUseCase;
    return ListTile(
      onTap: onTap,
      leading: AspectRatio(
        aspectRatio: 1.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: cartProduct.product.picture,
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
      title: Text(
        cartProduct.product.name,
      ),
      subtitle: Text('${cartProduct.count} ед.'),
      trailing: SizedBox(
        width: 150,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (cartProduct.count != 1) {
                    cartUseCase.addProductCount(
                      request: CartUpdate(
                        productId: cartProduct.product.id,
                        count: cartProduct.count - 1,
                      ),
                    );
                  } else {
                    cartUseCase.deleteCart(
                      request: CartUpdate(
                        productId: cartProduct.product.id,
                      ),
                    );
                  }
                },
                icon: Icon(
                  cartProduct.count == 1
                      ? Icons.remove_shopping_cart
                      : Icons.remove,
                ),
              ),
            ),
            Expanded(
              child: Checkbox(
                value: checked,
                onChanged: onSelect,
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () => cartUseCase.addProductCount(
                  request: CartUpdate(
                    productId: cartProduct.product.id,
                    count: cartProduct.count + 1,
                  ),
                ),
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
