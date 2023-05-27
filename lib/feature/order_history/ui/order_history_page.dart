import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/util/money_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/models/order.dart';
import '../manager/order_history_manager.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final manager = context.read<OrderHistoryManager>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          manager.isFarmer ? 'Заказы на сборку' : 'Мои заказы',
        ),
      ),
      body: SafeArea(
        child: StreamBuilder<List<Order>>(
          stream: manager.orderHistoryStream,
          builder: (_, snapshot) {
            final orders = snapshot.data;

            if (orders != null) {
              if (orders.isEmpty) {
                return Center(
                  child: Text(
                    'У вас пока нет заказов',
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorTheme.onBackground,
                    ),
                  ),
                );
              } else {
                return ListView.separated(
                  itemCount: orders.length,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  cacheExtent: 200,
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 20,
                  ),
                  itemBuilder: (context, index) {
                    final order = orders[index];

                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Заказ № ${order.id}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorTheme.onBackground,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Цена: ${order.full_price?.formatMoney() ?? ''}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorTheme.onBackground,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 120,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final item = order.items[index];

                                  return SizedBox(
                                    width: 100,
                                    height: 120,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              20,
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.contain,
                                            imageUrl: item.picture,
                                          ),
                                        ),
                                        Text(
                                          'Количество: ${item.count}',
                                          style: textTheme.bodySmall?.copyWith(
                                            color: colorTheme.onBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (_, __) => const SizedBox(
                                  width: 15,
                                ),
                                itemCount: order.items.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
