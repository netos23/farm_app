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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('№ ${order.id}'),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(order.full_price?.formatMoney() ?? ''),
                            ],
                          ),
                          ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = order.items[index];

                              return SizedBox(
                                width: 60,
                                height: 80,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      item.picture,
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.contain,
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
                              height: 10,
                            ),
                            itemCount: order.items.length,
                          ),
                        ],
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
