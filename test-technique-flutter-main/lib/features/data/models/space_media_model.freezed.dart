// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'space_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpaceMediaModel _$SpaceMediaModelFromJson(Map<String, dynamic> json) {
  return _SpaceMediaModel.fromJson(json);
}

/// @nodoc
mixin _$SpaceMediaModel {
  @JsonKey(name: "media_type")
  String get media_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceMediaModelCopyWith<SpaceMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceMediaModelCopyWith<$Res> {
  factory $SpaceMediaModelCopyWith(
          SpaceMediaModel value, $Res Function(SpaceMediaModel) then) =
      _$SpaceMediaModelCopyWithImpl<$Res, SpaceMediaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "media_type") String media_type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$SpaceMediaModelCopyWithImpl<$Res, $Val extends SpaceMediaModel>
    implements $SpaceMediaModelCopyWith<$Res> {
  _$SpaceMediaModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SpaceMediaModelCopyWith<$Res>
    implements $SpaceMediaModelCopyWith<$Res> {
  factory _$$_SpaceMediaModelCopyWith(
          _$_SpaceMediaModel value, $Res Function(_$_SpaceMediaModel) then) =
      __$$_SpaceMediaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "media_type") String media_type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$_SpaceMediaModelCopyWithImpl<$Res>
    extends _$SpaceMediaModelCopyWithImpl<$Res, _$_SpaceMediaModel>
    implements _$$_SpaceMediaModelCopyWith<$Res> {
  __$$_SpaceMediaModelCopyWithImpl(
      _$_SpaceMediaModel _value, $Res Function(_$_SpaceMediaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media_type = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$_SpaceMediaModel(
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
@JsonSerializable()
class _$_SpaceMediaModel implements _SpaceMediaModel {
  const _$_SpaceMediaModel(
      {@JsonKey(name: "media_type") required this.media_type,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'url') required this.url});

  factory _$_SpaceMediaModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpaceMediaModelFromJson(json);

  @override
  @JsonKey(name: "media_type")
  final String media_type;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'SpaceMediaModel(media_type: $media_type, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpaceMediaModel &&
            (identical(other.media_type, media_type) ||
                other.media_type == media_type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, media_type, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpaceMediaModelCopyWith<_$_SpaceMediaModel> get copyWith =>
      __$$_SpaceMediaModelCopyWithImpl<_$_SpaceMediaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpaceMediaModelToJson(
      this,
    );
  }
}

abstract class _SpaceMediaModel implements SpaceMediaModel {
  const factory _SpaceMediaModel(
      {@JsonKey(name: "media_type") required final String media_type,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'url') required final String url}) = _$_SpaceMediaModel;

  factory _SpaceMediaModel.fromJson(Map<String, dynamic> json) =
      _$_SpaceMediaModel.fromJson;

  @override
  @JsonKey(name: "media_type")
  String get media_type;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_SpaceMediaModelCopyWith<_$_SpaceMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
