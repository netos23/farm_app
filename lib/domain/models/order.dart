import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
    factory Order({
      required int id,
      required List<ProductWithCount> products,
      required String user_name,
      required String user_phone,
      required String user_email,
      required String delivery_id,
      required String delivery_type,
      required String delivery_date,
      required String payment_id,
      required String payment_type,
      required String address,
      required String comment,
      required int repeated_days,
}) = _Order;

    factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}



@freezed
class OrderItem with _$OrderItem {
    factory OrderItem({

}) = _OrderItem;
    
    factory OrderItem.fromJson(Map<String, dynamic> json) = _$OrderItemFromJson(json);
}