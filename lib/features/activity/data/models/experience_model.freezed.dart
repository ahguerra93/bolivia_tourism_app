// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExperienceModel {

 String get id; String get name; ExperienceType get type; double get lat; double get lng; String get description; String get imageUrl; ExperienceInfoModel get experienceInfoModel;
/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceModelCopyWith<ExperienceModel> get copyWith => _$ExperienceModelCopyWithImpl<ExperienceModel>(this as ExperienceModel, _$identity);

  /// Serializes this ExperienceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.experienceInfoModel, experienceInfoModel) || other.experienceInfoModel == experienceInfoModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,lat,lng,description,imageUrl,experienceInfoModel);

@override
String toString() {
  return 'ExperienceModel(id: $id, name: $name, type: $type, lat: $lat, lng: $lng, description: $description, imageUrl: $imageUrl, experienceInfoModel: $experienceInfoModel)';
}


}

/// @nodoc
abstract mixin class $ExperienceModelCopyWith<$Res>  {
  factory $ExperienceModelCopyWith(ExperienceModel value, $Res Function(ExperienceModel) _then) = _$ExperienceModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, ExperienceType type, double lat, double lng, String description, String imageUrl, ExperienceInfoModel experienceInfoModel
});


$ExperienceInfoModelCopyWith<$Res> get experienceInfoModel;

}
/// @nodoc
class _$ExperienceModelCopyWithImpl<$Res>
    implements $ExperienceModelCopyWith<$Res> {
  _$ExperienceModelCopyWithImpl(this._self, this._then);

  final ExperienceModel _self;
  final $Res Function(ExperienceModel) _then;

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? lat = null,Object? lng = null,Object? description = null,Object? imageUrl = null,Object? experienceInfoModel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExperienceType,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,experienceInfoModel: null == experienceInfoModel ? _self.experienceInfoModel : experienceInfoModel // ignore: cast_nullable_to_non_nullable
as ExperienceInfoModel,
  ));
}
/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExperienceInfoModelCopyWith<$Res> get experienceInfoModel {
  
  return $ExperienceInfoModelCopyWith<$Res>(_self.experienceInfoModel, (value) {
    return _then(_self.copyWith(experienceInfoModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExperienceModel].
extension ExperienceModelPatterns on ExperienceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceModel value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ExperienceType type,  double lat,  double lng,  String description,  String imageUrl,  ExperienceInfoModel experienceInfoModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.lat,_that.lng,_that.description,_that.imageUrl,_that.experienceInfoModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ExperienceType type,  double lat,  double lng,  String description,  String imageUrl,  ExperienceInfoModel experienceInfoModel)  $default,) {final _that = this;
switch (_that) {
case _ExperienceModel():
return $default(_that.id,_that.name,_that.type,_that.lat,_that.lng,_that.description,_that.imageUrl,_that.experienceInfoModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ExperienceType type,  double lat,  double lng,  String description,  String imageUrl,  ExperienceInfoModel experienceInfoModel)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.lat,_that.lng,_that.description,_that.imageUrl,_that.experienceInfoModel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExperienceModel implements ExperienceModel {
  const _ExperienceModel({required this.id, required this.name, required this.type, required this.lat, required this.lng, required this.description, required this.imageUrl, required this.experienceInfoModel});
  factory _ExperienceModel.fromJson(Map<String, dynamic> json) => _$ExperienceModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  ExperienceType type;
@override final  double lat;
@override final  double lng;
@override final  String description;
@override final  String imageUrl;
@override final  ExperienceInfoModel experienceInfoModel;

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceModelCopyWith<_ExperienceModel> get copyWith => __$ExperienceModelCopyWithImpl<_ExperienceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.experienceInfoModel, experienceInfoModel) || other.experienceInfoModel == experienceInfoModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,lat,lng,description,imageUrl,experienceInfoModel);

@override
String toString() {
  return 'ExperienceModel(id: $id, name: $name, type: $type, lat: $lat, lng: $lng, description: $description, imageUrl: $imageUrl, experienceInfoModel: $experienceInfoModel)';
}


}

/// @nodoc
abstract mixin class _$ExperienceModelCopyWith<$Res> implements $ExperienceModelCopyWith<$Res> {
  factory _$ExperienceModelCopyWith(_ExperienceModel value, $Res Function(_ExperienceModel) _then) = __$ExperienceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ExperienceType type, double lat, double lng, String description, String imageUrl, ExperienceInfoModel experienceInfoModel
});


@override $ExperienceInfoModelCopyWith<$Res> get experienceInfoModel;

}
/// @nodoc
class __$ExperienceModelCopyWithImpl<$Res>
    implements _$ExperienceModelCopyWith<$Res> {
  __$ExperienceModelCopyWithImpl(this._self, this._then);

  final _ExperienceModel _self;
  final $Res Function(_ExperienceModel) _then;

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? lat = null,Object? lng = null,Object? description = null,Object? imageUrl = null,Object? experienceInfoModel = null,}) {
  return _then(_ExperienceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExperienceType,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,experienceInfoModel: null == experienceInfoModel ? _self.experienceInfoModel : experienceInfoModel // ignore: cast_nullable_to_non_nullable
as ExperienceInfoModel,
  ));
}

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExperienceInfoModelCopyWith<$Res> get experienceInfoModel {
  
  return $ExperienceInfoModelCopyWith<$Res>(_self.experienceInfoModel, (value) {
    return _then(_self.copyWith(experienceInfoModel: value));
  });
}
}

// dart format on
