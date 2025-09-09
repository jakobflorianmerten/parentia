// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValueFailure<T> implements DiagnosticableTreeMixin {

 T get failedValue;
/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => _$ValueFailureCopyWithImpl<T, ValueFailure<T>>(this as ValueFailure<T>, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueFailure<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) _then) = _$ValueFailureCopyWithImpl;
@useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._self, this._then);

  final ValueFailure<T> _self;
  final $Res Function(ValueFailure<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_self.copyWith(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueFailure].
extension ValueFailurePatterns<T> on ValueFailure<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnexpectedFailure<T> value)?  unexpectedFailure,TResult Function( LongFullName<T> value)?  longFullName,TResult Function( InvalidUsername<T> value)?  invalidUsername,TResult Function( InvalidEmailAddress<T> value)?  invalidEmailAddress,TResult Function( InvalidPassword<T> value)?  invalidPassword,TResult Function( InvalidAddress<T> value)?  invalidAddress,TResult Function( InvalidMoneyFormat<T> value)?  invalidMoneyFormat,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnexpectedFailure() when unexpectedFailure != null:
return unexpectedFailure(_that);case LongFullName() when longFullName != null:
return longFullName(_that);case InvalidUsername() when invalidUsername != null:
return invalidUsername(_that);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that);case InvalidPassword() when invalidPassword != null:
return invalidPassword(_that);case InvalidAddress() when invalidAddress != null:
return invalidAddress(_that);case InvalidMoneyFormat() when invalidMoneyFormat != null:
return invalidMoneyFormat(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnexpectedFailure<T> value)  unexpectedFailure,required TResult Function( LongFullName<T> value)  longFullName,required TResult Function( InvalidUsername<T> value)  invalidUsername,required TResult Function( InvalidEmailAddress<T> value)  invalidEmailAddress,required TResult Function( InvalidPassword<T> value)  invalidPassword,required TResult Function( InvalidAddress<T> value)  invalidAddress,required TResult Function( InvalidMoneyFormat<T> value)  invalidMoneyFormat,}){
final _that = this;
switch (_that) {
case UnexpectedFailure():
return unexpectedFailure(_that);case LongFullName():
return longFullName(_that);case InvalidUsername():
return invalidUsername(_that);case InvalidEmailAddress():
return invalidEmailAddress(_that);case InvalidPassword():
return invalidPassword(_that);case InvalidAddress():
return invalidAddress(_that);case InvalidMoneyFormat():
return invalidMoneyFormat(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnexpectedFailure<T> value)?  unexpectedFailure,TResult? Function( LongFullName<T> value)?  longFullName,TResult? Function( InvalidUsername<T> value)?  invalidUsername,TResult? Function( InvalidEmailAddress<T> value)?  invalidEmailAddress,TResult? Function( InvalidPassword<T> value)?  invalidPassword,TResult? Function( InvalidAddress<T> value)?  invalidAddress,TResult? Function( InvalidMoneyFormat<T> value)?  invalidMoneyFormat,}){
final _that = this;
switch (_that) {
case UnexpectedFailure() when unexpectedFailure != null:
return unexpectedFailure(_that);case LongFullName() when longFullName != null:
return longFullName(_that);case InvalidUsername() when invalidUsername != null:
return invalidUsername(_that);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that);case InvalidPassword() when invalidPassword != null:
return invalidPassword(_that);case InvalidAddress() when invalidAddress != null:
return invalidAddress(_that);case InvalidMoneyFormat() when invalidMoneyFormat != null:
return invalidMoneyFormat(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T failedValue)?  unexpectedFailure,TResult Function( T failedValue)?  longFullName,TResult Function( T failedValue)?  invalidUsername,TResult Function( T failedValue)?  invalidEmailAddress,TResult Function( T failedValue)?  invalidPassword,TResult Function( T failedValue)?  invalidAddress,TResult Function( T failedValue)?  invalidMoneyFormat,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnexpectedFailure() when unexpectedFailure != null:
return unexpectedFailure(_that.failedValue);case LongFullName() when longFullName != null:
return longFullName(_that.failedValue);case InvalidUsername() when invalidUsername != null:
return invalidUsername(_that.failedValue);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that.failedValue);case InvalidPassword() when invalidPassword != null:
return invalidPassword(_that.failedValue);case InvalidAddress() when invalidAddress != null:
return invalidAddress(_that.failedValue);case InvalidMoneyFormat() when invalidMoneyFormat != null:
return invalidMoneyFormat(_that.failedValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T failedValue)  unexpectedFailure,required TResult Function( T failedValue)  longFullName,required TResult Function( T failedValue)  invalidUsername,required TResult Function( T failedValue)  invalidEmailAddress,required TResult Function( T failedValue)  invalidPassword,required TResult Function( T failedValue)  invalidAddress,required TResult Function( T failedValue)  invalidMoneyFormat,}) {final _that = this;
switch (_that) {
case UnexpectedFailure():
return unexpectedFailure(_that.failedValue);case LongFullName():
return longFullName(_that.failedValue);case InvalidUsername():
return invalidUsername(_that.failedValue);case InvalidEmailAddress():
return invalidEmailAddress(_that.failedValue);case InvalidPassword():
return invalidPassword(_that.failedValue);case InvalidAddress():
return invalidAddress(_that.failedValue);case InvalidMoneyFormat():
return invalidMoneyFormat(_that.failedValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T failedValue)?  unexpectedFailure,TResult? Function( T failedValue)?  longFullName,TResult? Function( T failedValue)?  invalidUsername,TResult? Function( T failedValue)?  invalidEmailAddress,TResult? Function( T failedValue)?  invalidPassword,TResult? Function( T failedValue)?  invalidAddress,TResult? Function( T failedValue)?  invalidMoneyFormat,}) {final _that = this;
switch (_that) {
case UnexpectedFailure() when unexpectedFailure != null:
return unexpectedFailure(_that.failedValue);case LongFullName() when longFullName != null:
return longFullName(_that.failedValue);case InvalidUsername() when invalidUsername != null:
return invalidUsername(_that.failedValue);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that.failedValue);case InvalidPassword() when invalidPassword != null:
return invalidPassword(_that.failedValue);case InvalidAddress() when invalidAddress != null:
return invalidAddress(_that.failedValue);case InvalidMoneyFormat() when invalidMoneyFormat != null:
return invalidMoneyFormat(_that.failedValue);case _:
  return null;

}
}

}

/// @nodoc


class UnexpectedFailure<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const UnexpectedFailure({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedFailureCopyWith<T, UnexpectedFailure<T>> get copyWith => _$UnexpectedFailureCopyWithImpl<T, UnexpectedFailure<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.unexpectedFailure'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedFailure<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.unexpectedFailure(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $UnexpectedFailureCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $UnexpectedFailureCopyWith(UnexpectedFailure<T> value, $Res Function(UnexpectedFailure<T>) _then) = _$UnexpectedFailureCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$UnexpectedFailureCopyWithImpl<T,$Res>
    implements $UnexpectedFailureCopyWith<T, $Res> {
  _$UnexpectedFailureCopyWithImpl(this._self, this._then);

  final UnexpectedFailure<T> _self;
  final $Res Function(UnexpectedFailure<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(UnexpectedFailure<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LongFullName<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const LongFullName({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LongFullNameCopyWith<T, LongFullName<T>> get copyWith => _$LongFullNameCopyWithImpl<T, LongFullName<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.longFullName'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LongFullName<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.longFullName(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $LongFullNameCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $LongFullNameCopyWith(LongFullName<T> value, $Res Function(LongFullName<T>) _then) = _$LongFullNameCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$LongFullNameCopyWithImpl<T,$Res>
    implements $LongFullNameCopyWith<T, $Res> {
  _$LongFullNameCopyWithImpl(this._self, this._then);

  final LongFullName<T> _self;
  final $Res Function(LongFullName<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(LongFullName<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidUsername<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const InvalidUsername({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith => _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidUsername'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidUsername<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidUsernameCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(InvalidUsername<T> value, $Res Function(InvalidUsername<T>) _then) = _$InvalidUsernameCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidUsernameCopyWithImpl<T,$Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(this._self, this._then);

  final InvalidUsername<T> _self;
  final $Res Function(InvalidUsername<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidUsername<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidEmailAddress<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const InvalidEmailAddress({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidEmailAddressCopyWith<T, InvalidEmailAddress<T>> get copyWith => _$InvalidEmailAddressCopyWithImpl<T, InvalidEmailAddress<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmailAddress'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmailAddress<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.invalidEmailAddress(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidEmailAddressCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailAddressCopyWith(InvalidEmailAddress<T> value, $Res Function(InvalidEmailAddress<T>) _then) = _$InvalidEmailAddressCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidEmailAddressCopyWithImpl<T,$Res>
    implements $InvalidEmailAddressCopyWith<T, $Res> {
  _$InvalidEmailAddressCopyWithImpl(this._self, this._then);

  final InvalidEmailAddress<T> _self;
  final $Res Function(InvalidEmailAddress<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidEmailAddress<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidPassword<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const InvalidPassword({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith => _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPassword'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidPassword<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidPasswordCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(InvalidPassword<T> value, $Res Function(InvalidPassword<T>) _then) = _$InvalidPasswordCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidPasswordCopyWithImpl<T,$Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(this._self, this._then);

  final InvalidPassword<T> _self;
  final $Res Function(InvalidPassword<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidPassword<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidAddress<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const InvalidAddress({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidAddressCopyWith<T, InvalidAddress<T>> get copyWith => _$InvalidAddressCopyWithImpl<T, InvalidAddress<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidAddress'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidAddress<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.invalidAddress(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidAddressCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidAddressCopyWith(InvalidAddress<T> value, $Res Function(InvalidAddress<T>) _then) = _$InvalidAddressCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidAddressCopyWithImpl<T,$Res>
    implements $InvalidAddressCopyWith<T, $Res> {
  _$InvalidAddressCopyWithImpl(this._self, this._then);

  final InvalidAddress<T> _self;
  final $Res Function(InvalidAddress<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidAddress<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidMoneyFormat<T> with DiagnosticableTreeMixin implements ValueFailure<T> {
  const InvalidMoneyFormat({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidMoneyFormatCopyWith<T, InvalidMoneyFormat<T>> get copyWith => _$InvalidMoneyFormatCopyWithImpl<T, InvalidMoneyFormat<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidMoneyFormat'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidMoneyFormat<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.invalidMoneyFormat(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidMoneyFormatCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidMoneyFormatCopyWith(InvalidMoneyFormat<T> value, $Res Function(InvalidMoneyFormat<T>) _then) = _$InvalidMoneyFormatCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidMoneyFormatCopyWithImpl<T,$Res>
    implements $InvalidMoneyFormatCopyWith<T, $Res> {
  _$InvalidMoneyFormatCopyWithImpl(this._self, this._then);

  final InvalidMoneyFormat<T> _self;
  final $Res Function(InvalidMoneyFormat<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidMoneyFormat<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
