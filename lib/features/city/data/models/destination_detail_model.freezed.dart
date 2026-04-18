// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DestinationDetailModel {

 String get description; List<ContactLinkModel> get bookingLinks;
/// Create a copy of DestinationDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DestinationDetailModelCopyWith<DestinationDetailModel> get copyWith => _$DestinationDetailModelCopyWithImpl<DestinationDetailModel>(this as DestinationDetailModel, _$identity);

  /// Serializes this DestinationDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DestinationDetailModel&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.bookingLinks, bookingLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(bookingLinks));

@override
String toString() {
  return 'DestinationDetailModel(description: $description, bookingLinks: $bookingLinks)';
}


}

/// @nodoc
abstract mixin class $DestinationDetailModelCopyWith<$Res>  {
  factory $DestinationDetailModelCopyWith(DestinationDetailModel value, $Res Function(DestinationDetailModel) _then) = _$DestinationDetailModelCopyWithImpl;
@useResult
$Res call({
 String description, List<ContactLinkModel> bookingLinks
});




}
/// @nodoc
class _$DestinationDetailModelCopyWithImpl<$Res>
    implements $DestinationDetailModelCopyWith<$Res> {
  _$DestinationDetailModelCopyWithImpl(this._self, this._then);

  final DestinationDetailModel _self;
  final $Res Function(DestinationDetailModel) _then;

/// Create a copy of DestinationDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? bookingLinks = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bookingLinks: null == bookingLinks ? _self.bookingLinks : bookingLinks // ignore: cast_nullable_to_non_nullable
as List<ContactLinkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DestinationDetailModel].
extension DestinationDetailModelPatterns on DestinationDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DestinationDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DestinationDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DestinationDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _DestinationDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DestinationDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _DestinationDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  List<ContactLinkModel> bookingLinks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DestinationDetailModel() when $default != null:
return $default(_that.description,_that.bookingLinks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  List<ContactLinkModel> bookingLinks)  $default,) {final _that = this;
switch (_that) {
case _DestinationDetailModel():
return $default(_that.description,_that.bookingLinks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  List<ContactLinkModel> bookingLinks)?  $default,) {final _that = this;
switch (_that) {
case _DestinationDetailModel() when $default != null:
return $default(_that.description,_that.bookingLinks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DestinationDetailModel implements DestinationDetailModel {
  const _DestinationDetailModel({required this.description, required final  List<ContactLinkModel> bookingLinks}): _bookingLinks = bookingLinks;
  factory _DestinationDetailModel.fromJson(Map<String, dynamic> json) => _$DestinationDetailModelFromJson(json);

@override final  String description;
 final  List<ContactLinkModel> _bookingLinks;
@override List<ContactLinkModel> get bookingLinks {
  if (_bookingLinks is EqualUnmodifiableListView) return _bookingLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookingLinks);
}


/// Create a copy of DestinationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationDetailModelCopyWith<_DestinationDetailModel> get copyWith => __$DestinationDetailModelCopyWithImpl<_DestinationDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DestinationDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationDetailModel&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._bookingLinks, _bookingLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_bookingLinks));

@override
String toString() {
  return 'DestinationDetailModel(description: $description, bookingLinks: $bookingLinks)';
}


}

/// @nodoc
abstract mixin class _$DestinationDetailModelCopyWith<$Res> implements $DestinationDetailModelCopyWith<$Res> {
  factory _$DestinationDetailModelCopyWith(_DestinationDetailModel value, $Res Function(_DestinationDetailModel) _then) = __$DestinationDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String description, List<ContactLinkModel> bookingLinks
});




}
/// @nodoc
class __$DestinationDetailModelCopyWithImpl<$Res>
    implements _$DestinationDetailModelCopyWith<$Res> {
  __$DestinationDetailModelCopyWithImpl(this._self, this._then);

  final _DestinationDetailModel _self;
  final $Res Function(_DestinationDetailModel) _then;

/// Create a copy of DestinationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? bookingLinks = null,}) {
  return _then(_DestinationDetailModel(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bookingLinks: null == bookingLinks ? _self._bookingLinks : bookingLinks // ignore: cast_nullable_to_non_nullable
as List<ContactLinkModel>,
  ));
}


}

// dart format on
