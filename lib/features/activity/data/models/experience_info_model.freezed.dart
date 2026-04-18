// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExperienceInfoModel {

 String get bestSeason; String get altitude; String get currency; List<String> get languages; String get transportInstructions; String get reminders; List<String> get tips; List<ContactLinkModel> get bookingLinks;
/// Create a copy of ExperienceInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceInfoModelCopyWith<ExperienceInfoModel> get copyWith => _$ExperienceInfoModelCopyWithImpl<ExperienceInfoModel>(this as ExperienceInfoModel, _$identity);

  /// Serializes this ExperienceInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceInfoModel&&(identical(other.bestSeason, bestSeason) || other.bestSeason == bestSeason)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.transportInstructions, transportInstructions) || other.transportInstructions == transportInstructions)&&(identical(other.reminders, reminders) || other.reminders == reminders)&&const DeepCollectionEquality().equals(other.tips, tips)&&const DeepCollectionEquality().equals(other.bookingLinks, bookingLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bestSeason,altitude,currency,const DeepCollectionEquality().hash(languages),transportInstructions,reminders,const DeepCollectionEquality().hash(tips),const DeepCollectionEquality().hash(bookingLinks));

@override
String toString() {
  return 'ExperienceInfoModel(bestSeason: $bestSeason, altitude: $altitude, currency: $currency, languages: $languages, transportInstructions: $transportInstructions, reminders: $reminders, tips: $tips, bookingLinks: $bookingLinks)';
}


}

/// @nodoc
abstract mixin class $ExperienceInfoModelCopyWith<$Res>  {
  factory $ExperienceInfoModelCopyWith(ExperienceInfoModel value, $Res Function(ExperienceInfoModel) _then) = _$ExperienceInfoModelCopyWithImpl;
@useResult
$Res call({
 String bestSeason, String altitude, String currency, List<String> languages, String transportInstructions, String reminders, List<String> tips, List<ContactLinkModel> bookingLinks
});




}
/// @nodoc
class _$ExperienceInfoModelCopyWithImpl<$Res>
    implements $ExperienceInfoModelCopyWith<$Res> {
  _$ExperienceInfoModelCopyWithImpl(this._self, this._then);

  final ExperienceInfoModel _self;
  final $Res Function(ExperienceInfoModel) _then;

/// Create a copy of ExperienceInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bestSeason = null,Object? altitude = null,Object? currency = null,Object? languages = null,Object? transportInstructions = null,Object? reminders = null,Object? tips = null,Object? bookingLinks = null,}) {
  return _then(_self.copyWith(
bestSeason: null == bestSeason ? _self.bestSeason : bestSeason // ignore: cast_nullable_to_non_nullable
as String,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,transportInstructions: null == transportInstructions ? _self.transportInstructions : transportInstructions // ignore: cast_nullable_to_non_nullable
as String,reminders: null == reminders ? _self.reminders : reminders // ignore: cast_nullable_to_non_nullable
as String,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as List<String>,bookingLinks: null == bookingLinks ? _self.bookingLinks : bookingLinks // ignore: cast_nullable_to_non_nullable
as List<ContactLinkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExperienceInfoModel].
extension ExperienceInfoModelPatterns on ExperienceInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bestSeason,  String altitude,  String currency,  List<String> languages,  String transportInstructions,  String reminders,  List<String> tips,  List<ContactLinkModel> bookingLinks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceInfoModel() when $default != null:
return $default(_that.bestSeason,_that.altitude,_that.currency,_that.languages,_that.transportInstructions,_that.reminders,_that.tips,_that.bookingLinks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bestSeason,  String altitude,  String currency,  List<String> languages,  String transportInstructions,  String reminders,  List<String> tips,  List<ContactLinkModel> bookingLinks)  $default,) {final _that = this;
switch (_that) {
case _ExperienceInfoModel():
return $default(_that.bestSeason,_that.altitude,_that.currency,_that.languages,_that.transportInstructions,_that.reminders,_that.tips,_that.bookingLinks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bestSeason,  String altitude,  String currency,  List<String> languages,  String transportInstructions,  String reminders,  List<String> tips,  List<ContactLinkModel> bookingLinks)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceInfoModel() when $default != null:
return $default(_that.bestSeason,_that.altitude,_that.currency,_that.languages,_that.transportInstructions,_that.reminders,_that.tips,_that.bookingLinks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExperienceInfoModel implements ExperienceInfoModel {
  const _ExperienceInfoModel({required this.bestSeason, required this.altitude, required this.currency, required final  List<String> languages, required this.transportInstructions, required this.reminders, required final  List<String> tips, required final  List<ContactLinkModel> bookingLinks}): _languages = languages,_tips = tips,_bookingLinks = bookingLinks;
  factory _ExperienceInfoModel.fromJson(Map<String, dynamic> json) => _$ExperienceInfoModelFromJson(json);

@override final  String bestSeason;
@override final  String altitude;
@override final  String currency;
 final  List<String> _languages;
@override List<String> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override final  String transportInstructions;
@override final  String reminders;
 final  List<String> _tips;
@override List<String> get tips {
  if (_tips is EqualUnmodifiableListView) return _tips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tips);
}

 final  List<ContactLinkModel> _bookingLinks;
@override List<ContactLinkModel> get bookingLinks {
  if (_bookingLinks is EqualUnmodifiableListView) return _bookingLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookingLinks);
}


/// Create a copy of ExperienceInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceInfoModelCopyWith<_ExperienceInfoModel> get copyWith => __$ExperienceInfoModelCopyWithImpl<_ExperienceInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceInfoModel&&(identical(other.bestSeason, bestSeason) || other.bestSeason == bestSeason)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.transportInstructions, transportInstructions) || other.transportInstructions == transportInstructions)&&(identical(other.reminders, reminders) || other.reminders == reminders)&&const DeepCollectionEquality().equals(other._tips, _tips)&&const DeepCollectionEquality().equals(other._bookingLinks, _bookingLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bestSeason,altitude,currency,const DeepCollectionEquality().hash(_languages),transportInstructions,reminders,const DeepCollectionEquality().hash(_tips),const DeepCollectionEquality().hash(_bookingLinks));

@override
String toString() {
  return 'ExperienceInfoModel(bestSeason: $bestSeason, altitude: $altitude, currency: $currency, languages: $languages, transportInstructions: $transportInstructions, reminders: $reminders, tips: $tips, bookingLinks: $bookingLinks)';
}


}

/// @nodoc
abstract mixin class _$ExperienceInfoModelCopyWith<$Res> implements $ExperienceInfoModelCopyWith<$Res> {
  factory _$ExperienceInfoModelCopyWith(_ExperienceInfoModel value, $Res Function(_ExperienceInfoModel) _then) = __$ExperienceInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String bestSeason, String altitude, String currency, List<String> languages, String transportInstructions, String reminders, List<String> tips, List<ContactLinkModel> bookingLinks
});




}
/// @nodoc
class __$ExperienceInfoModelCopyWithImpl<$Res>
    implements _$ExperienceInfoModelCopyWith<$Res> {
  __$ExperienceInfoModelCopyWithImpl(this._self, this._then);

  final _ExperienceInfoModel _self;
  final $Res Function(_ExperienceInfoModel) _then;

/// Create a copy of ExperienceInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bestSeason = null,Object? altitude = null,Object? currency = null,Object? languages = null,Object? transportInstructions = null,Object? reminders = null,Object? tips = null,Object? bookingLinks = null,}) {
  return _then(_ExperienceInfoModel(
bestSeason: null == bestSeason ? _self.bestSeason : bestSeason // ignore: cast_nullable_to_non_nullable
as String,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,transportInstructions: null == transportInstructions ? _self.transportInstructions : transportInstructions // ignore: cast_nullable_to_non_nullable
as String,reminders: null == reminders ? _self.reminders : reminders // ignore: cast_nullable_to_non_nullable
as String,tips: null == tips ? _self._tips : tips // ignore: cast_nullable_to_non_nullable
as List<String>,bookingLinks: null == bookingLinks ? _self._bookingLinks : bookingLinks // ignore: cast_nullable_to_non_nullable
as List<ContactLinkModel>,
  ));
}


}

// dart format on
