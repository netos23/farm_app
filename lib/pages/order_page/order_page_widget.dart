import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_page_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderPage module
@RoutePage()
class OrderPageWidget extends ElementaryWidget<IOrderPageWidgetModel> {
  const OrderPageWidget({
    Key? key,
    this.productIds = const [],
    WidgetModelFactory wmFactory = defaultOrderPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final List<int> productIds;

  @override
  Widget build(IOrderPageWidgetModel wm) {
    return Container();
  }
}
