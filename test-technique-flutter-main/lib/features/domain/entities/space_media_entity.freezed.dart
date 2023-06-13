// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'space_media_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpaceMediaEntity {
  String get media_type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpaceMediaEntityCopyWith<SpaceMediaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceMediaEntityCopyWith<$Res> {
  factory $SpaceMediaEntityCopyWith(
          SpaceMediaEntity value, $Res Function(SpaceMediaEntity) then) =
      _$SpaceMediaEntityCopyWithImpl<$Res, SpaceMediaEntity>;
  @useResult
  $Res call({String media_type, String title, String url});
}

/// @nodoc
class _$SpaceMediaEntityCopyWithImpl<$Res, $Val extends SpaceMediaEntity>
    implements $SpaceMediaEntityCopyWith<$Res> {
  _$SpaceMediaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media_type = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      media_type: null == media_type
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpaceMediaEntityCopyWith<$Res>
    implements $SpaceMediaEntityCopyWith<$Res> {
  factory _$$_SpaceMediaEntityCopyWith(
          _$_SpaceMediaEntity value, $Res Function(_$_SpaceMediaEntity) then) =
      __$$_SpaceMediaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String media_type, String title, String url});
}

/// @nodoc
class __$$_SpaceMediaEntityCopyWithImpl<$Res>
    extends _$SpaceMediaEntityCopyWithImpl<$Res, _$_SpaceMediaEntity>
    implements _$$_SpaceMediaEntityCopyWith<$Res> {
  __$$_SpaceMediaEntityCopyWithImpl(
      _$_SpaceMediaEntity _value, $Res Function(_$_SpaceMediaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media_type = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$_SpaceMediaEntity(
      media_type: null == media_type
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SpaceMediaEntity implements _SpaceMediaEntity {
  const _$_SpaceMediaEntity(
      {required this.media_type, required this.title, required this.url});

  @override
  final String media_type;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'SpaceMediaEntity(media_type: $media_type, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpaceMediaEntity &&
            (identical(other.media_type, media_type) ||
                other.media_type == media_type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media_type, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpaceMediaEntityCopyWith<_$_SpaceMediaEntity> get copyWith =>
      __$$_SpaceMediaEntityCopyWithImpl<_$_SpaceMediaEntity>(this, _$identity);
}

abstract class _SpaceMediaEntity implements SpaceMediaEntity {
  const factory _SpaceMediaEntity(
      {required final String media_type,
      required final String title,
      required final String url}) = _$_SpaceMediaEntity;

  @override
  String get media_type;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_SpaceMediaEntityCopyWith<_$_SpaceMediaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
