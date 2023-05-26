import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_page_model.dart';
import 'order_page_widget.dart';

abstract class IOrderPageWidgetModel extends IWidgetModel {
}

OrderPageWidgetModel defaultOrderPageWidgetModelFactory(BuildContext context) {
  return OrderPageWidgetModel(OrderPageModel());
}

// TODO: cover with documentation
/// Default widget model for OrderPageWidget
class OrderPageWidgetModel extends WidgetModel<OrderPageWidget, OrderPageModel>
    implements IOrderPageWidgetModel {

  OrderPageWidgetModel(OrderPageModel model) : super(model);
}
