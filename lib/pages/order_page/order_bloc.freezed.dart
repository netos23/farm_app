// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderState {
  List<ProductWithCount> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(List<ProductWithCount> products,
            List<Delivery> deliveries, Delivery delivery, DateTime deliveryDate)
        deliveries,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        payments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate)?
        deliveries,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        payments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate)?
        deliveries,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        payments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveryOrderState value) deliveries,
    required TResult Function(PaymentsOrderState value) payments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveryOrderState value)? deliveries,
    TResult? Function(PaymentsOrderState value)? payments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveryOrderState value)? deliveries,
    TResult Function(PaymentsOrderState value)? payments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitOrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$InitOrderStateCopyWith(
          _$InitOrderState value, $Res Function(_$InitOrderState) then) =
      __$$InitOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class __$$InitOrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitOrderState>
    implements _$$InitOrderStateCopyWith<$Res> {
  __$$InitOrderStateCopyWithImpl(
      _$InitOrderState _value, $Res Function(_$InitOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$InitOrderState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ));
  }
}

/// @nodoc

class _$InitOrderState implements InitOrderState {
  const _$InitOrderState({required final List<ProductWithCount> products})
      : _products = products;

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrderState.init(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitOrderState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitOrderStateCopyWith<_$InitOrderState> get copyWith =>
      __$$InitOrderStateCopyWithImpl<_$InitOrderState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(List<ProductWithCount> products,
            List<Delivery> deliveries, Delivery delivery, DateTime deliveryDate)
        deliveries,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        payments,
  }) {
    return init(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate)?
        deliveries,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        payments,
  }) {
    return init?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate)?
        deliveries,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        payments,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveryOrderState value) deliveries,
    required TResult Function(PaymentsOrderState value) payments,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveryOrderState value)? deliveries,
    TResult? Function(PaymentsOrderState value)? payments,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveryOrderState value)? deliveries,
    TResult Function(PaymentsOrderState value)? payments,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitOrderState implements OrderState {
  const factory InitOrderState(
      {required final List<ProductWithCount> products}) = _$InitOrderState;

  @override
  List<ProductWithCount> get products;
  @override
  @JsonKey(ignore: true)
  _$$InitOrderStateCopyWith<_$InitOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliveryOrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$DeliveryOrderStateCopyWith(_$DeliveryOrderState value,
          $Res Function(_$DeliveryOrderState) then) =
      __$$DeliveryOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductWithCount> products,
      List<Delivery> deliveries,
      Delivery delivery,
      DateTime deliveryDate});

  $DeliveryCopyWith<$Res> get delivery;
}

/// @nodoc
class __$$DeliveryOrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$DeliveryOrderState>
    implements _$$DeliveryOrderStateCopyWith<$Res> {
  __$$DeliveryOrderStateCopyWithImpl(
      _$DeliveryOrderState _value, $Res Function(_$DeliveryOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveries = null,
    Object? delivery = null,
    Object? deliveryDate = null,
  }) {
    return _then(_$DeliveryOrderState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      deliveries: null == deliveries
          ? _value._deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc

class _$DeliveryOrderState implements DeliveryOrderState {
  const _$DeliveryOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required this.delivery,
      required this.deliveryDate})
      : _products = products,
        _deliveries = deliveries;

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Delivery> _deliveries;
  @override
  List<Delivery> get deliveries {
    if (_deliveries is EqualUnmodifiableListView) return _deliveries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveries);
  }

  @override
  final Delivery delivery;
  @override
  final DateTime deliveryDate;

  @override
  String toString() {
    return 'OrderState.deliveries(products: $products, deliveries: $deliveries, delivery: $delivery, deliveryDate: $deliveryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryOrderState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._deliveries, _deliveries) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_deliveries),
      delivery,
      deliveryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryOrderStateCopyWith<_$DeliveryOrderState> get copyWith =>
      __$$DeliveryOrderStateCopyWithImpl<_$DeliveryOrderState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(List<ProductWithCount> products,
            List<Delivery> deliveries, Delivery delivery, DateTime deliveryDate)
        deliveries,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        payments,
  }) {
    return deliveries(products, this.deliveries, delivery, deliveryDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate)?
        deliveries,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        payments,
  }) {
    return deliveries?.call(products, this.deliveries, delivery, deliveryDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate)?
        deliveries,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        payments,
    required TResult orElse(),
  }) {
    if (deliveries != null) {
      return deliveries(products, this.deliveries, delivery, deliveryDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveryOrderState value) deliveries,
    required TResult Function(PaymentsOrderState value) payments,
  }) {
    return deliveries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveryOrderState value)? deliveries,
    TResult? Function(PaymentsOrderState value)? payments,
  }) {
    return deliveries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveryOrderState value)? deliveries,
    TResult Function(PaymentsOrderState value)? payments,
    required TResult orElse(),
  }) {
    if (deliveries != null) {
      return deliveries(this);
    }
    return orElse();
  }
}

abstract class DeliveryOrderState implements OrderState {
  const factory DeliveryOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required final Delivery delivery,
      required final DateTime deliveryDate}) = _$DeliveryOrderState;

  @override
  List<ProductWithCount> get products;
  List<Delivery> get deliveries;
  Delivery get delivery;
  DateTime get deliveryDate;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryOrderStateCopyWith<_$DeliveryOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentsOrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$PaymentsOrderStateCopyWith(_$PaymentsOrderState value,
          $Res Function(_$PaymentsOrderState) then) =
      __$$PaymentsOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductWithCount> products,
      List<Delivery> deliveries,
      Delivery delivery,
      List<Payment> payments,
      Payment payment});

  $DeliveryCopyWith<$Res> get delivery;
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$PaymentsOrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$PaymentsOrderState>
    implements _$$PaymentsOrderStateCopyWith<$Res> {
  __$$PaymentsOrderStateCopyWithImpl(
      _$PaymentsOrderState _value, $Res Function(_$PaymentsOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveries = null,
    Object? delivery = null,
    Object? payments = null,
    Object? payment = null,
  }) {
    return _then(_$PaymentsOrderState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      deliveries: null == deliveries
          ? _value._deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$PaymentsOrderState implements PaymentsOrderState {
  const _$PaymentsOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required this.delivery,
      required final List<Payment> payments,
      required this.payment})
      : _products = products,
        _deliveries = deliveries,
        _payments = payments;

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Delivery> _deliveries;
  @override
  List<Delivery> get deliveries {
    if (_deliveries is EqualUnmodifiableListView) return _deliveries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveries);
  }

  @override
  final Delivery delivery;
  final List<Payment> _payments;
  @override
  List<Payment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final Payment payment;

  @override
  String toString() {
    return 'OrderState.payments(products: $products, deliveries: $deliveries, delivery: $delivery, payments: $payments, payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsOrderState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._deliveries, _deliveries) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_deliveries),
      delivery,
      const DeepCollectionEquality().hash(_payments),
      payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsOrderStateCopyWith<_$PaymentsOrderState> get copyWith =>
      __$$PaymentsOrderStateCopyWithImpl<_$PaymentsOrderState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(List<ProductWithCount> products,
            List<Delivery> deliveries, Delivery delivery, DateTime deliveryDate)
        deliveries,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        payments,
  }) {
    return payments(
        products, this.deliveries, delivery, this.payments, payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate)?
        deliveries,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        payments,
  }) {
    return payments?.call(
        products, this.deliveries, delivery, this.payments, payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate)?
        deliveries,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        payments,
    required TResult orElse(),
  }) {
    if (payments != null) {
      return payments(
          products, this.deliveries, delivery, this.payments, payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveryOrderState value) deliveries,
    required TResult Function(PaymentsOrderState value) payments,
  }) {
    return payments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveryOrderState value)? deliveries,
    TResult? Function(PaymentsOrderState value)? payments,
  }) {
    return payments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveryOrderState value)? deliveries,
    TResult Function(PaymentsOrderState value)? payments,
    required TResult orElse(),
  }) {
    if (payments != null) {
      return payments(this);
    }
    return orElse();
  }
}

abstract class PaymentsOrderState implements OrderState {
  const factory PaymentsOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required final Delivery delivery,
      required final List<Payment> payments,
      required final Payment payment}) = _$PaymentsOrderState;

  @override
  List<ProductWithCount> get products;
  List<Delivery> get deliveries;
  Delivery get delivery;
  List<Payment> get payments;
  Payment get payment;
  @override
  @JsonKey(ignore: true)
  _$$PaymentsOrderStateCopyWith<_$PaymentsOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDelivery,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Payment payment) selectPayment,
    required TResult Function(
            String name, String phone, String email, String comment)
        orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDelivery,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Payment payment)? selectPayment,
    TResult? Function(String name, String phone, String email, String comment)?
        orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDelivery,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Payment payment)? selectPayment,
    TResult Function(String name, String phone, String email, String comment)?
        orderCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveryOrderEvent value) loadDelivery,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDeliveryOrderEventCopyWith<$Res> {
  factory _$$LoadDeliveryOrderEventCopyWith(_$LoadDeliveryOrderEvent value,
          $Res Function(_$LoadDeliveryOrderEvent) then) =
      __$$LoadDeliveryOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDeliveryOrderEventCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$LoadDeliveryOrderEvent>
    implements _$$LoadDeliveryOrderEventCopyWith<$Res> {
  __$$LoadDeliveryOrderEventCopyWithImpl(_$LoadDeliveryOrderEvent _value,
      $Res Function(_$LoadDeliveryOrderEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDeliveryOrderEvent implements LoadDeliveryOrderEvent {
  const _$LoadDeliveryOrderEvent();

  @override
  String toString() {
    return 'OrderEvent.loadDelivery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDeliveryOrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDelivery,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Payment payment) selectPayment,
    required TResult Function(
            String name, String phone, String email, String comment)
        orderCreate,
  }) {
    return loadDelivery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDelivery,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Payment payment)? selectPayment,
    TResult? Function(String name, String phone, String email, String comment)?
        orderCreate,
  }) {
    return loadDelivery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDelivery,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Payment payment)? selectPayment,
    TResult Function(String name, String phone, String email, String comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (loadDelivery != null) {
      return loadDelivery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveryOrderEvent value) loadDelivery,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return loadDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return loadDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (loadDelivery != null) {
      return loadDelivery(this);
    }
    return orElse();
  }
}

abstract class LoadDeliveryOrderEvent implements OrderEvent {
  const factory LoadDeliveryOrderEvent() = _$LoadDeliveryOrderEvent;
}

/// @nodoc
abstract class _$$SelectDeliveryOrderEventCopyWith<$Res> {
  factory _$$SelectDeliveryOrderEventCopyWith(_$SelectDeliveryOrderEvent value,
          $Res Function(_$SelectDeliveryOrderEvent) then) =
      __$$SelectDeliveryOrderEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Delivery delivery});

  $DeliveryCopyWith<$Res> get delivery;
}

/// @nodoc
class __$$SelectDeliveryOrderEventCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SelectDeliveryOrderEvent>
    implements _$$SelectDeliveryOrderEventCopyWith<$Res> {
  __$$SelectDeliveryOrderEventCopyWithImpl(_$SelectDeliveryOrderEvent _value,
      $Res Function(_$SelectDeliveryOrderEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
  }) {
    return _then(_$SelectDeliveryOrderEvent(
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc

class _$SelectDeliveryOrderEvent implements SelectDeliveryOrderEvent {
  const _$SelectDeliveryOrderEvent({required this.delivery});

  @override
  final Delivery delivery;

  @override
  String toString() {
    return 'OrderEvent.selectDelivery(delivery: $delivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDeliveryOrderEvent &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDeliveryOrderEventCopyWith<_$SelectDeliveryOrderEvent>
      get copyWith =>
          __$$SelectDeliveryOrderEventCopyWithImpl<_$SelectDeliveryOrderEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDelivery,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Payment payment) selectPayment,
    required TResult Function(
            String name, String phone, String email, String comment)
        orderCreate,
  }) {
    return selectDelivery(delivery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDelivery,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Payment payment)? selectPayment,
    TResult? Function(String name, String phone, String email, String comment)?
        orderCreate,
  }) {
    return selectDelivery?.call(delivery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDelivery,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Payment payment)? selectPayment,
    TResult Function(String name, String phone, String email, String comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (selectDelivery != null) {
      return selectDelivery(delivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveryOrderEvent value) loadDelivery,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return selectDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return selectDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (selectDelivery != null) {
      return selectDelivery(this);
    }
    return orElse();
  }
}

abstract class SelectDeliveryOrderEvent implements OrderEvent {
  const factory SelectDeliveryOrderEvent({required final Delivery delivery}) =
      _$SelectDeliveryOrderEvent;

  Delivery get delivery;
  @JsonKey(ignore: true)
  _$$SelectDeliveryOrderEventCopyWith<_$SelectDeliveryOrderEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaymentOrderEventCopyWith<$Res> {
  factory _$$SelectPaymentOrderEventCopyWith(_$SelectPaymentOrderEvent value,
          $Res Function(_$SelectPaymentOrderEvent) then) =
      __$$SelectPaymentOrderEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Payment payment});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$SelectPaymentOrderEventCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SelectPaymentOrderEvent>
    implements _$$SelectPaymentOrderEventCopyWith<$Res> {
  __$$SelectPaymentOrderEventCopyWithImpl(_$SelectPaymentOrderEvent _value,
      $Res Function(_$SelectPaymentOrderEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$SelectPaymentOrderEvent(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$SelectPaymentOrderEvent implements SelectPaymentOrderEvent {
  const _$SelectPaymentOrderEvent({required this.payment});

  @override
  final Payment payment;

  @override
  String toString() {
    return 'OrderEvent.selectPayment(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaymentOrderEvent &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaymentOrderEventCopyWith<_$SelectPaymentOrderEvent> get copyWith =>
      __$$SelectPaymentOrderEventCopyWithImpl<_$SelectPaymentOrderEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDelivery,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Payment payment) selectPayment,
    required TResult Function(
            String name, String phone, String email, String comment)
        orderCreate,
  }) {
    return selectPayment(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDelivery,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Payment payment)? selectPayment,
    TResult? Function(String name, String phone, String email, String comment)?
        orderCreate,
  }) {
    return selectPayment?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDelivery,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Payment payment)? selectPayment,
    TResult Function(String name, String phone, String email, String comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (selectPayment != null) {
      return selectPayment(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveryOrderEvent value) loadDelivery,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return selectPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return selectPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (selectPayment != null) {
      return selectPayment(this);
    }
    return orElse();
  }
}

abstract class SelectPaymentOrderEvent implements OrderEvent {
  const factory SelectPaymentOrderEvent({required final Payment payment}) =
      _$SelectPaymentOrderEvent;

  Payment get payment;
  @JsonKey(ignore: true)
  _$$SelectPaymentOrderEventCopyWith<_$SelectPaymentOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderCreateOrderEventCopyWith<$Res> {
  factory _$$OrderCreateOrderEventCopyWith(_$OrderCreateOrderEvent value,
          $Res Function(_$OrderCreateOrderEvent) then) =
      __$$OrderCreateOrderEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phone, String email, String comment});
}

/// @nodoc
class __$$OrderCreateOrderEventCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$OrderCreateOrderEvent>
    implements _$$OrderCreateOrderEventCopyWith<$Res> {
  __$$OrderCreateOrderEventCopyWithImpl(_$OrderCreateOrderEvent _value,
      $Res Function(_$OrderCreateOrderEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? comment = null,
  }) {
    return _then(_$OrderCreateOrderEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderCreateOrderEvent implements OrderCreateOrderEvent {
  const _$OrderCreateOrderEvent(
      {required this.name,
      required this.phone,
      required this.email,
      required this.comment});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String comment;

  @override
  String toString() {
    return 'OrderEvent.orderCreate(name: $name, phone: $phone, email: $email, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateOrderEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone, email, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateOrderEventCopyWith<_$OrderCreateOrderEvent> get copyWith =>
      __$$OrderCreateOrderEventCopyWithImpl<_$OrderCreateOrderEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDelivery,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Payment payment) selectPayment,
    required TResult Function(
            String name, String phone, String email, String comment)
        orderCreate,
  }) {
    return orderCreate(name, phone, email, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDelivery,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Payment payment)? selectPayment,
    TResult? Function(String name, String phone, String email, String comment)?
        orderCreate,
  }) {
    return orderCreate?.call(name, phone, email, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDelivery,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Payment payment)? selectPayment,
    TResult Function(String name, String phone, String email, String comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (orderCreate != null) {
      return orderCreate(name, phone, email, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveryOrderEvent value) loadDelivery,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return orderCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return orderCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveryOrderEvent value)? loadDelivery,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (orderCreate != null) {
      return orderCreate(this);
    }
    return orElse();
  }
}

abstract class OrderCreateOrderEvent implements OrderEvent {
  const factory OrderCreateOrderEvent(
      {required final String name,
      required final String phone,
      required final String email,
      required final String comment}) = _$OrderCreateOrderEvent;

  String get name;
  String get phone;
  String get email;
  String get comment;
  @JsonKey(ignore: true)
  _$$OrderCreateOrderEventCopyWith<_$OrderCreateOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
