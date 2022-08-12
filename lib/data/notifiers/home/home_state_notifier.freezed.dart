// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<Character> characters) success,
    required TResult Function(bool? isConnectionError) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateStarted value) started,
    required TResult Function(HomeStateLoadInProgress value) loadInProgress,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$HomeStateStartedCopyWith<$Res> {
  factory _$$HomeStateStartedCopyWith(
          _$HomeStateStarted value, $Res Function(_$HomeStateStarted) then) =
      __$$HomeStateStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateStartedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateStartedCopyWith<$Res> {
  __$$HomeStateStartedCopyWithImpl(
      _$HomeStateStarted _value, $Res Function(_$HomeStateStarted) _then)
      : super(_value, (v) => _then(v as _$HomeStateStarted));

  @override
  _$HomeStateStarted get _value => super._value as _$HomeStateStarted;
}

/// @nodoc

class _$HomeStateStarted implements HomeStateStarted {
  const _$HomeStateStarted();

  @override
  String toString() {
    return 'HomeState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<Character> characters) success,
    required TResult Function(bool? isConnectionError) error,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateStarted value) started,
    required TResult Function(HomeStateLoadInProgress value) loadInProgress,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateError value) error,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HomeStateStarted implements HomeState {
  const factory HomeStateStarted() = _$HomeStateStarted;
}

/// @nodoc
abstract class _$$HomeStateLoadInProgressCopyWith<$Res> {
  factory _$$HomeStateLoadInProgressCopyWith(_$HomeStateLoadInProgress value,
          $Res Function(_$HomeStateLoadInProgress) then) =
      __$$HomeStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadInProgressCopyWith<$Res> {
  __$$HomeStateLoadInProgressCopyWithImpl(_$HomeStateLoadInProgress _value,
      $Res Function(_$HomeStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoadInProgress));

  @override
  _$HomeStateLoadInProgress get _value =>
      super._value as _$HomeStateLoadInProgress;
}

/// @nodoc

class _$HomeStateLoadInProgress implements HomeStateLoadInProgress {
  const _$HomeStateLoadInProgress();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<Character> characters) success,
    required TResult Function(bool? isConnectionError) error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateStarted value) started,
    required TResult Function(HomeStateLoadInProgress value) loadInProgress,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateError value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoadInProgress implements HomeState {
  const factory HomeStateLoadInProgress() = _$HomeStateLoadInProgress;
}

/// @nodoc
abstract class _$$HomeStateSuccessCopyWith<$Res> {
  factory _$$HomeStateSuccessCopyWith(
          _$HomeStateSuccess value, $Res Function(_$HomeStateSuccess) then) =
      __$$HomeStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$HomeStateSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateSuccessCopyWith<$Res> {
  __$$HomeStateSuccessCopyWithImpl(
      _$HomeStateSuccess _value, $Res Function(_$HomeStateSuccess) _then)
      : super(_value, (v) => _then(v as _$HomeStateSuccess));

  @override
  _$HomeStateSuccess get _value => super._value as _$HomeStateSuccess;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_$HomeStateSuccess(
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$HomeStateSuccess implements HomeStateSuccess {
  const _$HomeStateSuccess({required final List<Character> characters})
      : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'HomeState.success(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  _$$HomeStateSuccessCopyWith<_$HomeStateSuccess> get copyWith =>
      __$$HomeStateSuccessCopyWithImpl<_$HomeStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<Character> characters) success,
    required TResult Function(bool? isConnectionError) error,
  }) {
    return success(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
  }) {
    return success?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateStarted value) started,
    required TResult Function(HomeStateLoadInProgress value) loadInProgress,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeStateSuccess implements HomeState {
  const factory HomeStateSuccess({required final List<Character> characters}) =
      _$HomeStateSuccess;

  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$HomeStateSuccessCopyWith<_$HomeStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateErrorCopyWith<$Res> {
  factory _$$HomeStateErrorCopyWith(
          _$HomeStateError value, $Res Function(_$HomeStateError) then) =
      __$$HomeStateErrorCopyWithImpl<$Res>;
  $Res call({bool? isConnectionError});
}

/// @nodoc
class __$$HomeStateErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateErrorCopyWith<$Res> {
  __$$HomeStateErrorCopyWithImpl(
      _$HomeStateError _value, $Res Function(_$HomeStateError) _then)
      : super(_value, (v) => _then(v as _$HomeStateError));

  @override
  _$HomeStateError get _value => super._value as _$HomeStateError;

  @override
  $Res call({
    Object? isConnectionError = freezed,
  }) {
    return _then(_$HomeStateError(
      isConnectionError: isConnectionError == freezed
          ? _value.isConnectionError
          : isConnectionError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$HomeStateError implements HomeStateError {
  const _$HomeStateError({this.isConnectionError});

  @override
  final bool? isConnectionError;

  @override
  String toString() {
    return 'HomeState.error(isConnectionError: $isConnectionError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateError &&
            const DeepCollectionEquality()
                .equals(other.isConnectionError, isConnectionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isConnectionError));

  @JsonKey(ignore: true)
  @override
  _$$HomeStateErrorCopyWith<_$HomeStateError> get copyWith =>
      __$$HomeStateErrorCopyWithImpl<_$HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadInProgress,
    required TResult Function(List<Character> characters) success,
    required TResult Function(bool? isConnectionError) error,
  }) {
    return error(isConnectionError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
  }) {
    return error?.call(isConnectionError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadInProgress,
    TResult Function(List<Character> characters)? success,
    TResult Function(bool? isConnectionError)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isConnectionError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateStarted value) started,
    required TResult Function(HomeStateLoadInProgress value) loadInProgress,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateStarted value)? started,
    TResult Function(HomeStateLoadInProgress value)? loadInProgress,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeStateError implements HomeState {
  const factory HomeStateError({final bool? isConnectionError}) =
      _$HomeStateError;

  bool? get isConnectionError;
  @JsonKey(ignore: true)
  _$$HomeStateErrorCopyWith<_$HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
