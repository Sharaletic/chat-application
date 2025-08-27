// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateChatChatEvent value)?  createChat,TResult Function( _JoinChatChatEvent value)?  joinChat,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateChatChatEvent() when createChat != null:
return createChat(_that);case _JoinChatChatEvent() when joinChat != null:
return joinChat(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateChatChatEvent value)  createChat,required TResult Function( _JoinChatChatEvent value)  joinChat,}){
final _that = this;
switch (_that) {
case _CreateChatChatEvent():
return createChat(_that);case _JoinChatChatEvent():
return joinChat(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateChatChatEvent value)?  createChat,TResult? Function( _JoinChatChatEvent value)?  joinChat,}){
final _that = this;
switch (_that) {
case _CreateChatChatEvent() when createChat != null:
return createChat(_that);case _JoinChatChatEvent() when joinChat != null:
return joinChat(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String recipientName,  String recipientId)?  createChat,TResult Function( String chatId)?  joinChat,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateChatChatEvent() when createChat != null:
return createChat(_that.recipientName,_that.recipientId);case _JoinChatChatEvent() when joinChat != null:
return joinChat(_that.chatId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String recipientName,  String recipientId)  createChat,required TResult Function( String chatId)  joinChat,}) {final _that = this;
switch (_that) {
case _CreateChatChatEvent():
return createChat(_that.recipientName,_that.recipientId);case _JoinChatChatEvent():
return joinChat(_that.chatId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String recipientName,  String recipientId)?  createChat,TResult? Function( String chatId)?  joinChat,}) {final _that = this;
switch (_that) {
case _CreateChatChatEvent() when createChat != null:
return createChat(_that.recipientName,_that.recipientId);case _JoinChatChatEvent() when joinChat != null:
return joinChat(_that.chatId);case _:
  return null;

}
}

}

/// @nodoc


class _CreateChatChatEvent implements ChatEvent {
  const _CreateChatChatEvent({required this.recipientName, required this.recipientId});
  

 final  String recipientName;
 final  String recipientId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateChatChatEventCopyWith<_CreateChatChatEvent> get copyWith => __$CreateChatChatEventCopyWithImpl<_CreateChatChatEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateChatChatEvent&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId));
}


@override
int get hashCode => Object.hash(runtimeType,recipientName,recipientId);

@override
String toString() {
  return 'ChatEvent.createChat(recipientName: $recipientName, recipientId: $recipientId)';
}


}

/// @nodoc
abstract mixin class _$CreateChatChatEventCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$CreateChatChatEventCopyWith(_CreateChatChatEvent value, $Res Function(_CreateChatChatEvent) _then) = __$CreateChatChatEventCopyWithImpl;
@useResult
$Res call({
 String recipientName, String recipientId
});




}
/// @nodoc
class __$CreateChatChatEventCopyWithImpl<$Res>
    implements _$CreateChatChatEventCopyWith<$Res> {
  __$CreateChatChatEventCopyWithImpl(this._self, this._then);

  final _CreateChatChatEvent _self;
  final $Res Function(_CreateChatChatEvent) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipientName = null,Object? recipientId = null,}) {
  return _then(_CreateChatChatEvent(
recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _JoinChatChatEvent implements ChatEvent {
  const _JoinChatChatEvent({required this.chatId});
  

 final  String chatId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinChatChatEventCopyWith<_JoinChatChatEvent> get copyWith => __$JoinChatChatEventCopyWithImpl<_JoinChatChatEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinChatChatEvent&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'ChatEvent.joinChat(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$JoinChatChatEventCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$JoinChatChatEventCopyWith(_JoinChatChatEvent value, $Res Function(_JoinChatChatEvent) _then) = __$JoinChatChatEventCopyWithImpl;
@useResult
$Res call({
 String chatId
});




}
/// @nodoc
class __$JoinChatChatEventCopyWithImpl<$Res>
    implements _$JoinChatChatEventCopyWith<$Res> {
  __$JoinChatChatEventCopyWithImpl(this._self, this._then);

  final _JoinChatChatEvent _self;
  final $Res Function(_JoinChatChatEvent) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_JoinChatChatEvent(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState()';
}


}

/// @nodoc
class $ChatStateCopyWith<$Res>  {
$ChatStateCopyWith(ChatState _, $Res Function(ChatState) __);
}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialChatState value)?  initial,TResult Function( LoadingChatState value)?  loading,TResult Function( LoadedChatState value)?  loaded,TResult Function( ErrorChatState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialChatState() when initial != null:
return initial(_that);case LoadingChatState() when loading != null:
return loading(_that);case LoadedChatState() when loaded != null:
return loaded(_that);case ErrorChatState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialChatState value)  initial,required TResult Function( LoadingChatState value)  loading,required TResult Function( LoadedChatState value)  loaded,required TResult Function( ErrorChatState value)  error,}){
final _that = this;
switch (_that) {
case InitialChatState():
return initial(_that);case LoadingChatState():
return loading(_that);case LoadedChatState():
return loaded(_that);case ErrorChatState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialChatState value)?  initial,TResult? Function( LoadingChatState value)?  loading,TResult? Function( LoadedChatState value)?  loaded,TResult? Function( ErrorChatState value)?  error,}){
final _that = this;
switch (_that) {
case InitialChatState() when initial != null:
return initial(_that);case LoadingChatState() when loading != null:
return loading(_that);case LoadedChatState() when loaded != null:
return loaded(_that);case ErrorChatState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ChatModel> chats)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialChatState() when initial != null:
return initial();case LoadingChatState() when loading != null:
return loading();case LoadedChatState() when loaded != null:
return loaded(_that.chats);case ErrorChatState() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ChatModel> chats)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case InitialChatState():
return initial();case LoadingChatState():
return loading();case LoadedChatState():
return loaded(_that.chats);case ErrorChatState():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ChatModel> chats)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case InitialChatState() when initial != null:
return initial();case LoadingChatState() when loading != null:
return loading();case LoadedChatState() when loaded != null:
return loaded(_that.chats);case ErrorChatState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class InitialChatState implements ChatState {
  const InitialChatState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.initial()';
}


}




/// @nodoc


class LoadingChatState implements ChatState {
  const LoadingChatState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.loading()';
}


}




/// @nodoc


class LoadedChatState implements ChatState {
  const LoadedChatState({required final  List<ChatModel> chats}): _chats = chats;
  

 final  List<ChatModel> _chats;
 List<ChatModel> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedChatStateCopyWith<LoadedChatState> get copyWith => _$LoadedChatStateCopyWithImpl<LoadedChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedChatState&&const DeepCollectionEquality().equals(other._chats, _chats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chats));

@override
String toString() {
  return 'ChatState.loaded(chats: $chats)';
}


}

/// @nodoc
abstract mixin class $LoadedChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $LoadedChatStateCopyWith(LoadedChatState value, $Res Function(LoadedChatState) _then) = _$LoadedChatStateCopyWithImpl;
@useResult
$Res call({
 List<ChatModel> chats
});




}
/// @nodoc
class _$LoadedChatStateCopyWithImpl<$Res>
    implements $LoadedChatStateCopyWith<$Res> {
  _$LoadedChatStateCopyWithImpl(this._self, this._then);

  final LoadedChatState _self;
  final $Res Function(LoadedChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chats = null,}) {
  return _then(LoadedChatState(
chats: null == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,
  ));
}


}

/// @nodoc


class ErrorChatState implements ChatState {
  const ErrorChatState({required this.message});
  

 final  String message;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorChatStateCopyWith<ErrorChatState> get copyWith => _$ErrorChatStateCopyWithImpl<ErrorChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorChatState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $ErrorChatStateCopyWith(ErrorChatState value, $Res Function(ErrorChatState) _then) = _$ErrorChatStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorChatStateCopyWithImpl<$Res>
    implements $ErrorChatStateCopyWith<$Res> {
  _$ErrorChatStateCopyWithImpl(this._self, this._then);

  final ErrorChatState _self;
  final $Res Function(ErrorChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorChatState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
