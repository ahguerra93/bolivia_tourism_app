// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DestinationModel {

 String get id; String get name; String get country; String get description; String get imageUrl; double get lat; double get lng; DestinationDetailModel get destinationDetailModel;
/// Create a copy of DestinationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DestinationModelCopyWith<DestinationModel> get copyWith => _$DestinationModelCopyWithImpl<DestinationModel>(this as DestinationModel, _$identity);

  /// Serializes this DestinationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DestinationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.destinationDetailModel, destinationDetailModel) || other.destinationDetailModel == destinationDetailModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,country,description,imageUrl,lat,lng,destinationDetailModel);

@override
String toString() {
  return 'DestinationModel(id: $id, name: $name, country: $country, description: $description, imageUrl: $imageUrl, lat: $lat, lng: $lng, destinationDetailModel: $destinationDetailModel)';
}


}

/// @nodoc
abstract mixin class $DestinationModelCopyWith<$Res>  {
  factory $DestinationModelCopyWith(DestinationModel value, $Res Function(DestinationModel) _then) = _$DestinationModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String country, String description, String imageUrl, double lat, double lng, DestinationDetailModel destinationDetailModel
});


$DestinationDetailModelCopyWith<$Res> get destinationDetailModel;

}
/// @nodoc
class _$DestinationModelCopyWithImpl<$Res>
    implements $DestinationModelCopyWith<$Res> {
  _$DestinationModelCopyWithImpl(this._self, this._then);

  final DestinationModel _self;
  final $Res Function(DestinationModel) _then;

/// Create a copy of DestinationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? country = null,Object? description = null,Object? imageUrl = null,Object? lat = null,Object? lng = null,Object? destinationDetailModel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,destinationDetailModel: null == destinationDetailModel ? _self.destinationDetailModel : destinationDetailModel // ignore: cast_nullable_to_non_nullable
as DestinationDetailModel,
  ));
}
/// Create a copy of DestinationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DestinationDetailModelCopyWith<$Res> get destinationDetailModel {
  
  return $DestinationDetailModelCopyWith<$Res>(_self.destinationDetailModel, (value) {
    return _then(_self.copyWith(destinationDetailModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [DestinationModel].
extension DestinationModelPatterns on DestinationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DestinationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DestinationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DestinationModel value)  $default,){
final _that = this;
switch (_that) {
case _DestinationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DestinationModel value)?  $default,){
final _that = this;
switch (_that) {
case _DestinationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String country,  String description,  String imageUrl,  double lat,  double lng,  DestinationDetailModel destinationDetailModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DestinationModel() when $default != null:
return $default(_that.id,_that.name,_that.country,_that.description,_that.imageUrl,_that.lat,_that.lng,_that.destinationDetailModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String country,  String description,  String imageUrl,  double lat,  double lng,  DestinationDetailModel destinationDetailModel)  $default,) {final _that = this;
switch (_that) {
case _DestinationModel():
return $default(_that.id,_that.name,_that.country,_that.description,_that.imageUrl,_that.lat,_that.lng,_that.destinationDetailModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String country,  String description,  String imageUrl,  double lat,  double lng,  DestinationDetailModel destinationDetailModel)?  $default,) {final _that = this;
switch (_that) {
case _DestinationModel() when $default != null:
return $default(_that.id,_that.name,_that.country,_that.description,_that.imageUrl,_that.lat,_that.lng,_that.destinationDetailModel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DestinationModel implements DestinationModel {
  const _DestinationModel({required this.id, required this.name, required this.country, required this.description, required this.imageUrl, required this.lat, required this.lng, required this.destinationDetailModel});
  factory _DestinationModel.fromJson(Map<String, dynamic> json) => _$DestinationModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String country;
@override final  String description;
@override final  String imageUrl;
@override final  double lat;
@override final  double lng;
@override final  DestinationDetailModel destinationDetailModel;

/// Create a copy of DestinationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationModelCopyWith<_DestinationModel> get copyWith => __$DestinationModelCopyWithImpl<_DestinationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DestinationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.destinationDetailModel, destinationDetailModel) || other.destinationDetailModel == destinationDetailModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,country,description,imageUrl,lat,lng,destinationDetailModel);

@override
String toString() {
  return 'DestinationModel(id: $id, name: $name, country: $country, description: $description, imageUrl: $imageUrl, lat: $lat, lng: $lng, destinationDetailModel: $destinationDetailModel)';
}


}

/// @nodoc
abstract mixin class _$DestinationModelCopyWith<$Res> implements $DestinationModelCopyWith<$Res> {
  factory _$DestinationModelCopyWith(_DestinationModel value, $Res Function(_DestinationModel) _then) = __$DestinationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String country, String description, String imageUrl, double lat, double lng, DestinationDetailModel destinationDetailModel
});


@override $DestinationDetailModelCopyWith<$Res> get destinationDetailModel;

}
/// @nodoc
class __$DestinationModelCopyWithImpl<$Res>
    implements _$DestinationModelCopyWith<$Res> {
  __$DestinationModelCopyWithImpl(this._self, this._then);

  final _DestinationModel _self;
  final $Res Function(_DestinationModel) _then;

/// Create a copy of DestinationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? country = null,Object? description = null,Object? imageUrl = null,Object? lat = null,Object? lng = null,Object? destinationDetailModel = null,}) {
  return _then(_DestinationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,destinationDetailModel: null == destinationDetailModel ? _self.destinationDetailModel : destinationDetailModel // ignore: cast_nullable_to_non_nullable
as DestinationDetailModel,
  ));
}

/// Create a copy of DestinationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DestinationDetailModelCopyWith<$Res> get destinationDetailModel {
  
  return $DestinationDetailModelCopyWith<$Res>(_self.destinationDetailModel, (value) {
    return _then(_self.copyWith(destinationDetailModel: value));
  });
}
}

// dart format on
