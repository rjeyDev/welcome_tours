// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TourEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTours,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourEvent value) getTours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TourEvent value)? getTours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourEvent value)? getTours,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourEventCopyWith<$Res> {
  factory $TourEventCopyWith(TourEvent value, $Res Function(TourEvent) then) =
      _$TourEventCopyWithImpl<$Res, TourEvent>;
}

/// @nodoc
class _$TourEventCopyWithImpl<$Res, $Val extends TourEvent>
    implements $TourEventCopyWith<$Res> {
  _$TourEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TourEventImplCopyWith<$Res> {
  factory _$$TourEventImplCopyWith(
          _$TourEventImpl value, $Res Function(_$TourEventImpl) then) =
      __$$TourEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TourEventImplCopyWithImpl<$Res>
    extends _$TourEventCopyWithImpl<$Res, _$TourEventImpl>
    implements _$$TourEventImplCopyWith<$Res> {
  __$$TourEventImplCopyWithImpl(
      _$TourEventImpl _value, $Res Function(_$TourEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TourEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TourEventImpl implements _TourEvent {
  const _$TourEventImpl();

  @override
  String toString() {
    return 'TourEvent.getTours()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TourEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTours,
  }) {
    return getTours();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTours,
  }) {
    return getTours?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTours,
    required TResult orElse(),
  }) {
    if (getTours != null) {
      return getTours();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourEvent value) getTours,
  }) {
    return getTours(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TourEvent value)? getTours,
  }) {
    return getTours?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourEvent value)? getTours,
    required TResult orElse(),
  }) {
    if (getTours != null) {
      return getTours(this);
    }
    return orElse();
  }
}

abstract class _TourEvent implements TourEvent {
  const factory _TourEvent() = _$TourEventImpl;
}

/// @nodoc
mixin _$TourState {
  List<TourCategory>? get tourCategories => throw _privateConstructorUsedError;
  String get textError => throw _privateConstructorUsedError;
  TourAction get action => throw _privateConstructorUsedError;

  /// Create a copy of TourState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourStateCopyWith<TourState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourStateCopyWith<$Res> {
  factory $TourStateCopyWith(TourState value, $Res Function(TourState) then) =
      _$TourStateCopyWithImpl<$Res, TourState>;
  @useResult
  $Res call(
      {List<TourCategory>? tourCategories,
      String textError,
      TourAction action});
}

/// @nodoc
class _$TourStateCopyWithImpl<$Res, $Val extends TourState>
    implements $TourStateCopyWith<$Res> {
  _$TourStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourCategories = freezed,
    Object? textError = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      tourCategories: freezed == tourCategories
          ? _value.tourCategories
          : tourCategories // ignore: cast_nullable_to_non_nullable
              as List<TourCategory>?,
      textError: null == textError
          ? _value.textError
          : textError // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TourAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourStateImplCopyWith<$Res>
    implements $TourStateCopyWith<$Res> {
  factory _$$TourStateImplCopyWith(
          _$TourStateImpl value, $Res Function(_$TourStateImpl) then) =
      __$$TourStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TourCategory>? tourCategories,
      String textError,
      TourAction action});
}

/// @nodoc
class __$$TourStateImplCopyWithImpl<$Res>
    extends _$TourStateCopyWithImpl<$Res, _$TourStateImpl>
    implements _$$TourStateImplCopyWith<$Res> {
  __$$TourStateImplCopyWithImpl(
      _$TourStateImpl _value, $Res Function(_$TourStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TourState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourCategories = freezed,
    Object? textError = null,
    Object? action = null,
  }) {
    return _then(_$TourStateImpl(
      tourCategories: freezed == tourCategories
          ? _value._tourCategories
          : tourCategories // ignore: cast_nullable_to_non_nullable
              as List<TourCategory>?,
      textError: null == textError
          ? _value.textError
          : textError // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TourAction,
    ));
  }
}

/// @nodoc

class _$TourStateImpl implements _TourState {
  const _$TourStateImpl(
      {final List<TourCategory>? tourCategories,
      required this.textError,
      required this.action})
      : _tourCategories = tourCategories;

  final List<TourCategory>? _tourCategories;
  @override
  List<TourCategory>? get tourCategories {
    final value = _tourCategories;
    if (value == null) return null;
    if (_tourCategories is EqualUnmodifiableListView) return _tourCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String textError;
  @override
  final TourAction action;

  @override
  String toString() {
    return 'TourState(tourCategories: $tourCategories, textError: $textError, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourStateImpl &&
            const DeepCollectionEquality()
                .equals(other._tourCategories, _tourCategories) &&
            (identical(other.textError, textError) ||
                other.textError == textError) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tourCategories), textError, action);

  /// Create a copy of TourState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourStateImplCopyWith<_$TourStateImpl> get copyWith =>
      __$$TourStateImplCopyWithImpl<_$TourStateImpl>(this, _$identity);
}

abstract class _TourState implements TourState {
  const factory _TourState(
      {final List<TourCategory>? tourCategories,
      required final String textError,
      required final TourAction action}) = _$TourStateImpl;

  @override
  List<TourCategory>? get tourCategories;
  @override
  String get textError;
  @override
  TourAction get action;

  /// Create a copy of TourState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourStateImplCopyWith<_$TourStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
