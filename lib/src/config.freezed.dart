// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenaiConfig {
  String get apiKey => throw _privateConstructorUsedError;
  String get apiBaseUrl => throw _privateConstructorUsedError;
  String? get httpProxy => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)
        $default, {
    required TResult Function(String apiKey, String apiVersion,
            String apiBaseUrl, String? httpProxy)
        azure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)?
        $default, {
    TResult? Function(String apiKey, String apiVersion, String apiBaseUrl,
            String? httpProxy)?
        azure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)?
        $default, {
    TResult Function(String apiKey, String apiVersion, String apiBaseUrl,
            String? httpProxy)?
        azure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Openai value) $default, {
    required TResult Function(_Azure value) azure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Openai value)? $default, {
    TResult? Function(_Azure value)? azure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Openai value)? $default, {
    TResult Function(_Azure value)? azure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenaiConfigCopyWith<OpenaiConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenaiConfigCopyWith<$Res> {
  factory $OpenaiConfigCopyWith(
          OpenaiConfig value, $Res Function(OpenaiConfig) then) =
      _$OpenaiConfigCopyWithImpl<$Res, OpenaiConfig>;
  @useResult
  $Res call({String apiKey, String apiBaseUrl, String? httpProxy});
}

/// @nodoc
class _$OpenaiConfigCopyWithImpl<$Res, $Val extends OpenaiConfig>
    implements $OpenaiConfigCopyWith<$Res> {
  _$OpenaiConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? apiBaseUrl = null,
    Object? httpProxy = freezed,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      httpProxy: freezed == httpProxy
          ? _value.httpProxy
          : httpProxy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenaiImplCopyWith<$Res>
    implements $OpenaiConfigCopyWith<$Res> {
  factory _$$OpenaiImplCopyWith(
          _$OpenaiImpl value, $Res Function(_$OpenaiImpl) then) =
      __$$OpenaiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey,
      String? organizationId,
      String apiBaseUrl,
      String? httpProxy});
}

/// @nodoc
class __$$OpenaiImplCopyWithImpl<$Res>
    extends _$OpenaiConfigCopyWithImpl<$Res, _$OpenaiImpl>
    implements _$$OpenaiImplCopyWith<$Res> {
  __$$OpenaiImplCopyWithImpl(
      _$OpenaiImpl _value, $Res Function(_$OpenaiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? organizationId = freezed,
    Object? apiBaseUrl = null,
    Object? httpProxy = freezed,
  }) {
    return _then(_$OpenaiImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      httpProxy: freezed == httpProxy
          ? _value.httpProxy
          : httpProxy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OpenaiImpl extends _Openai {
  const _$OpenaiImpl(
      {required this.apiKey,
      this.organizationId,
      this.apiBaseUrl = Constants.kBaseUrl,
      this.httpProxy})
      : super._();

  @override
  final String apiKey;
  @override
  final String? organizationId;
  @override
  @JsonKey()
  final String apiBaseUrl;
  @override
  final String? httpProxy;

  @override
  String toString() {
    return 'OpenaiConfig(apiKey: $apiKey, organizationId: $organizationId, apiBaseUrl: $apiBaseUrl, httpProxy: $httpProxy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenaiImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.httpProxy, httpProxy) ||
                other.httpProxy == httpProxy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, organizationId, apiBaseUrl, httpProxy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenaiImplCopyWith<_$OpenaiImpl> get copyWith =>
      __$$OpenaiImplCopyWithImpl<_$OpenaiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)
        $default, {
    required TResult Function(String apiKey, String apiVersion,
            String apiBaseUrl, String? httpProxy)
        azure,
  }) {
    return $default(apiKey, organizationId, apiBaseUrl, httpProxy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)?
        $default, {
    TResult? Function(String apiKey, String apiVersion, String apiBaseUrl,
            String? httpProxy)?
        azure,
  }) {
    return $default?.call(apiKey, organizationId, apiBaseUrl, httpProxy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)?
        $default, {
    TResult Function(String apiKey, String apiVersion, String apiBaseUrl,
            String? httpProxy)?
        azure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(apiKey, organizationId, apiBaseUrl, httpProxy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Openai value) $default, {
    required TResult Function(_Azure value) azure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Openai value)? $default, {
    TResult? Function(_Azure value)? azure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Openai value)? $default, {
    TResult Function(_Azure value)? azure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Openai extends OpenaiConfig {
  const factory _Openai(
      {required final String apiKey,
      final String? organizationId,
      final String apiBaseUrl,
      final String? httpProxy}) = _$OpenaiImpl;
  const _Openai._() : super._();

  @override
  String get apiKey;
  String? get organizationId;
  @override
  String get apiBaseUrl;
  @override
  String? get httpProxy;
  @override
  @JsonKey(ignore: true)
  _$$OpenaiImplCopyWith<_$OpenaiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AzureImplCopyWith<$Res>
    implements $OpenaiConfigCopyWith<$Res> {
  factory _$$AzureImplCopyWith(
          _$AzureImpl value, $Res Function(_$AzureImpl) then) =
      __$$AzureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey, String apiVersion, String apiBaseUrl, String? httpProxy});
}

/// @nodoc
class __$$AzureImplCopyWithImpl<$Res>
    extends _$OpenaiConfigCopyWithImpl<$Res, _$AzureImpl>
    implements _$$AzureImplCopyWith<$Res> {
  __$$AzureImplCopyWithImpl(
      _$AzureImpl _value, $Res Function(_$AzureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? apiVersion = null,
    Object? apiBaseUrl = null,
    Object? httpProxy = freezed,
  }) {
    return _then(_$AzureImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      httpProxy: freezed == httpProxy
          ? _value.httpProxy
          : httpProxy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AzureImpl extends _Azure {
  const _$AzureImpl(
      {required this.apiKey,
      required this.apiVersion,
      required this.apiBaseUrl,
      this.httpProxy})
      : super._();

  @override
  final String apiKey;
  @override
  final String apiVersion;
  @override
  final String apiBaseUrl;
  @override
  final String? httpProxy;

  @override
  String toString() {
    return 'OpenaiConfig.azure(apiKey: $apiKey, apiVersion: $apiVersion, apiBaseUrl: $apiBaseUrl, httpProxy: $httpProxy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzureImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.httpProxy, httpProxy) ||
                other.httpProxy == httpProxy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, apiVersion, apiBaseUrl, httpProxy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzureImplCopyWith<_$AzureImpl> get copyWith =>
      __$$AzureImplCopyWithImpl<_$AzureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)
        $default, {
    required TResult Function(String apiKey, String apiVersion,
            String apiBaseUrl, String? httpProxy)
        azure,
  }) {
    return azure(apiKey, apiVersion, apiBaseUrl, httpProxy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)?
        $default, {
    TResult? Function(String apiKey, String apiVersion, String apiBaseUrl,
            String? httpProxy)?
        azure,
  }) {
    return azure?.call(apiKey, apiVersion, apiBaseUrl, httpProxy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String apiKey, String? organizationId, String apiBaseUrl,
            String? httpProxy)?
        $default, {
    TResult Function(String apiKey, String apiVersion, String apiBaseUrl,
            String? httpProxy)?
        azure,
    required TResult orElse(),
  }) {
    if (azure != null) {
      return azure(apiKey, apiVersion, apiBaseUrl, httpProxy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Openai value) $default, {
    required TResult Function(_Azure value) azure,
  }) {
    return azure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Openai value)? $default, {
    TResult? Function(_Azure value)? azure,
  }) {
    return azure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Openai value)? $default, {
    TResult Function(_Azure value)? azure,
    required TResult orElse(),
  }) {
    if (azure != null) {
      return azure(this);
    }
    return orElse();
  }
}

abstract class _Azure extends OpenaiConfig {
  const factory _Azure(
      {required final String apiKey,
      required final String apiVersion,
      required final String apiBaseUrl,
      final String? httpProxy}) = _$AzureImpl;
  const _Azure._() : super._();

  @override
  String get apiKey;
  String get apiVersion;
  @override
  String get apiBaseUrl;
  @override
  String? get httpProxy;
  @override
  @JsonKey(ignore: true)
  _$$AzureImplCopyWith<_$AzureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
