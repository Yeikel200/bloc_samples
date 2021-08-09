// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  _CartProductAdded cartProductAdded() {
    return const _CartProductAdded();
  }

  _CartProductRemoved cartProductRemoved() {
    return const _CartProductRemoved();
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartProductAdded,
    required TResult Function() cartProductRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartProductAdded,
    TResult Function()? cartProductRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartProductAdded value) cartProductAdded,
    required TResult Function(_CartProductRemoved value) cartProductRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartProductAdded value)? cartProductAdded,
    TResult Function(_CartProductRemoved value)? cartProductRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$CartProductAddedCopyWith<$Res> {
  factory _$CartProductAddedCopyWith(
          _CartProductAdded value, $Res Function(_CartProductAdded) then) =
      __$CartProductAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartProductAddedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$CartProductAddedCopyWith<$Res> {
  __$CartProductAddedCopyWithImpl(
      _CartProductAdded _value, $Res Function(_CartProductAdded) _then)
      : super(_value, (v) => _then(v as _CartProductAdded));

  @override
  _CartProductAdded get _value => super._value as _CartProductAdded;
}

/// @nodoc

class _$_CartProductAdded implements _CartProductAdded {
  const _$_CartProductAdded();

  @override
  String toString() {
    return 'CartEvent.cartProductAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartProductAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartProductAdded,
    required TResult Function() cartProductRemoved,
  }) {
    return cartProductAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartProductAdded,
    TResult Function()? cartProductRemoved,
    required TResult orElse(),
  }) {
    if (cartProductAdded != null) {
      return cartProductAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartProductAdded value) cartProductAdded,
    required TResult Function(_CartProductRemoved value) cartProductRemoved,
  }) {
    return cartProductAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartProductAdded value)? cartProductAdded,
    TResult Function(_CartProductRemoved value)? cartProductRemoved,
    required TResult orElse(),
  }) {
    if (cartProductAdded != null) {
      return cartProductAdded(this);
    }
    return orElse();
  }
}

abstract class _CartProductAdded implements CartEvent {
  const factory _CartProductAdded() = _$_CartProductAdded;
}

/// @nodoc
abstract class _$CartProductRemovedCopyWith<$Res> {
  factory _$CartProductRemovedCopyWith(
          _CartProductRemoved value, $Res Function(_CartProductRemoved) then) =
      __$CartProductRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartProductRemovedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$CartProductRemovedCopyWith<$Res> {
  __$CartProductRemovedCopyWithImpl(
      _CartProductRemoved _value, $Res Function(_CartProductRemoved) _then)
      : super(_value, (v) => _then(v as _CartProductRemoved));

  @override
  _CartProductRemoved get _value => super._value as _CartProductRemoved;
}

/// @nodoc

class _$_CartProductRemoved implements _CartProductRemoved {
  const _$_CartProductRemoved();

  @override
  String toString() {
    return 'CartEvent.cartProductRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartProductRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartProductAdded,
    required TResult Function() cartProductRemoved,
  }) {
    return cartProductRemoved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartProductAdded,
    TResult Function()? cartProductRemoved,
    required TResult orElse(),
  }) {
    if (cartProductRemoved != null) {
      return cartProductRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartProductAdded value) cartProductAdded,
    required TResult Function(_CartProductRemoved value) cartProductRemoved,
  }) {
    return cartProductRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartProductAdded value)? cartProductAdded,
    TResult Function(_CartProductRemoved value)? cartProductRemoved,
    required TResult orElse(),
  }) {
    if (cartProductRemoved != null) {
      return cartProductRemoved(this);
    }
    return orElse();
  }
}

abstract class _CartProductRemoved implements CartEvent {
  const factory _CartProductRemoved() = _$_CartProductRemoved;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _FreezedCartState call({List<OrderItem> orderItems = const <OrderItem>[]}) {
    return _FreezedCartState(
      orderItems: orderItems,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<OrderItem> orderItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? orderItems = freezed,
  }) {
    return _then(_value.copyWith(
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc
abstract class _$FreezedCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$FreezedCartStateCopyWith(
          _FreezedCartState value, $Res Function(_FreezedCartState) then) =
      __$FreezedCartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderItem> orderItems});
}

/// @nodoc
class __$FreezedCartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$FreezedCartStateCopyWith<$Res> {
  __$FreezedCartStateCopyWithImpl(
      _FreezedCartState _value, $Res Function(_FreezedCartState) _then)
      : super(_value, (v) => _then(v as _FreezedCartState));

  @override
  _FreezedCartState get _value => super._value as _FreezedCartState;

  @override
  $Res call({
    Object? orderItems = freezed,
  }) {
    return _then(_FreezedCartState(
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$_FreezedCartState implements _FreezedCartState {
  const _$_FreezedCartState({this.orderItems = const <OrderItem>[]});

  @JsonKey(defaultValue: const <OrderItem>[])
  @override
  final List<OrderItem> orderItems;

  @override
  String toString() {
    return 'CartState(orderItems: $orderItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezedCartState &&
            (identical(other.orderItems, orderItems) ||
                const DeepCollectionEquality()
                    .equals(other.orderItems, orderItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderItems);

  @JsonKey(ignore: true)
  @override
  _$FreezedCartStateCopyWith<_FreezedCartState> get copyWith =>
      __$FreezedCartStateCopyWithImpl<_FreezedCartState>(this, _$identity);
}

abstract class _FreezedCartState implements CartState {
  const factory _FreezedCartState({List<OrderItem> orderItems}) =
      _$_FreezedCartState;

  @override
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FreezedCartStateCopyWith<_FreezedCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
