// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent()';
}


}

/// @nodoc
class $MessageEventCopyWith<$Res>  {
$MessageEventCopyWith(MessageEvent _, $Res Function(MessageEvent) __);
}


/// Adds pattern-matching-related methods to [MessageEvent].
extension MessageEventPatterns on MessageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MessageReceivedMessageEvent value)?  messageReceived,TResult Function( _SendMessageMessageEvent value)?  sendMessage,TResult Function( _GetMessagesMessageEvent value)?  getMessages,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageReceivedMessageEvent() when messageReceived != null:
return messageReceived(_that);case _SendMessageMessageEvent() when sendMessage != null:
return sendMessage(_that);case _GetMessagesMessageEvent() when getMessages != null:
return getMessages(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MessageReceivedMessageEvent value)  messageReceived,required TResult Function( _SendMessageMessageEvent value)  sendMessage,required TResult Function( _GetMessagesMessageEvent value)  getMessages,}){
final _that = this;
switch (_that) {
case _MessageReceivedMessageEvent():
return messageReceived(_that);case _SendMessageMessageEvent():
return sendMessage(_that);case _GetMessagesMessageEvent():
return getMessages(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MessageReceivedMessageEvent value)?  messageReceived,TResult? Function( _SendMessageMessageEvent value)?  sendMessage,TResult? Function( _GetMessagesMessageEvent value)?  getMessages,}){
final _that = this;
switch (_that) {
case _MessageReceivedMessageEvent() when messageReceived != null:
return messageReceived(_that);case _SendMessageMessageEvent() when sendMessage != null:
return sendMessage(_that);case _GetMessagesMessageEvent() when getMessages != null:
return getMessages(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MessageModel message)?  messageReceived,TResult Function( String message,  String chatId)?  sendMessage,TResult Function( String chatId)?  getMessages,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageReceivedMessageEvent() when messageReceived != null:
return messageReceived(_that.message);case _SendMessageMessageEvent() when sendMessage != null:
return sendMessage(_that.message,_that.chatId);case _GetMessagesMessageEvent() when getMessages != null:
return getMessages(_that.chatId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MessageModel message)  messageReceived,required TResult Function( String message,  String chatId)  sendMessage,required TResult Function( String chatId)  getMessages,}) {final _that = this;
switch (_that) {
case _MessageReceivedMessageEvent():
return messageReceived(_that.message);case _SendMessageMessageEvent():
return sendMessage(_that.message,_that.chatId);case _GetMessagesMessageEvent():
return getMessages(_that.chatId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MessageModel message)?  messageReceived,TResult? Function( String message,  String chatId)?  sendMessage,TResult? Function( String chatId)?  getMessages,}) {final _that = this;
switch (_that) {
case _MessageReceivedMessageEvent() when messageReceived != null:
return messageReceived(_that.message);case _SendMessageMessageEvent() when sendMessage != null:
return sendMessage(_that.message,_that.chatId);case _GetMessagesMessageEvent() when getMessages != null:
return getMessages(_that.chatId);case _:
  return null;

}
}

}

/// @nodoc


class _MessageReceivedMessageEvent implements MessageEvent {
  const _MessageReceivedMessageEvent({required this.message});
  

 final  MessageModel message;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageReceivedMessageEventCopyWith<_MessageReceivedMessageEvent> get copyWith => __$MessageReceivedMessageEventCopyWithImpl<_MessageReceivedMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageReceivedMessageEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageEvent.messageReceived(message: $message)';
}


}

/// @nodoc
abstract mixin class _$MessageReceivedMessageEventCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$MessageReceivedMessageEventCopyWith(_MessageReceivedMessageEvent value, $Res Function(_MessageReceivedMessageEvent) _then) = __$MessageReceivedMessageEventCopyWithImpl;
@useResult
$Res call({
 MessageModel message
});




}
/// @nodoc
class __$MessageReceivedMessageEventCopyWithImpl<$Res>
    implements _$MessageReceivedMessageEventCopyWith<$Res> {
  __$MessageReceivedMessageEventCopyWithImpl(this._self, this._then);

  final _MessageReceivedMessageEvent _self;
  final $Res Function(_MessageReceivedMessageEvent) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_MessageReceivedMessageEvent(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageModel,
  ));
}


}

/// @nodoc


class _SendMessageMessageEvent implements MessageEvent {
  const _SendMessageMessageEvent({required this.message, required this.chatId});
  

 final  String message;
 final  String chatId;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageMessageEventCopyWith<_SendMessageMessageEvent> get copyWith => __$SendMessageMessageEventCopyWithImpl<_SendMessageMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessageMessageEvent&&(identical(other.message, message) || other.message == message)&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,message,chatId);

@override
String toString() {
  return 'MessageEvent.sendMessage(message: $message, chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$SendMessageMessageEventCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$SendMessageMessageEventCopyWith(_SendMessageMessageEvent value, $Res Function(_SendMessageMessageEvent) _then) = __$SendMessageMessageEventCopyWithImpl;
@useResult
$Res call({
 String message, String chatId
});




}
/// @nodoc
class __$SendMessageMessageEventCopyWithImpl<$Res>
    implements _$SendMessageMessageEventCopyWith<$Res> {
  __$SendMessageMessageEventCopyWithImpl(this._self, this._then);

  final _SendMessageMessageEvent _self;
  final $Res Function(_SendMessageMessageEvent) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? chatId = null,}) {
  return _then(_SendMessageMessageEvent(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetMessagesMessageEvent implements MessageEvent {
  const _GetMessagesMessageEvent({required this.chatId});
  

 final  String chatId;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMessagesMessageEventCopyWith<_GetMessagesMessageEvent> get copyWith => __$GetMessagesMessageEventCopyWithImpl<_GetMessagesMessageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMessagesMessageEvent&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'MessageEvent.getMessages(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$GetMessagesMessageEventCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$GetMessagesMessageEventCopyWith(_GetMessagesMessageEvent value, $Res Function(_GetMessagesMessageEvent) _then) = __$GetMessagesMessageEventCopyWithImpl;
@useResult
$Res call({
 String chatId
});




}
/// @nodoc
class __$GetMessagesMessageEventCopyWithImpl<$Res>
    implements _$GetMessagesMessageEventCopyWith<$Res> {
  __$GetMessagesMessageEventCopyWithImpl(this._self, this._then);

  final _GetMessagesMessageEvent _self;
  final $Res Function(_GetMessagesMessageEvent) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_GetMessagesMessageEvent(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MessageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState()';
}


}

/// @nodoc
class $MessageStateCopyWith<$Res>  {
$MessageStateCopyWith(MessageState _, $Res Function(MessageState) __);
}


/// Adds pattern-matching-related methods to [MessageState].
extension MessageStatePatterns on MessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialMessageState value)?  initial,TResult Function( LoadingMessageState value)?  loading,TResult Function( LoadedMessageState value)?  loaded,TResult Function( ErrorMessageState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialMessageState() when initial != null:
return initial(_that);case LoadingMessageState() when loading != null:
return loading(_that);case LoadedMessageState() when loaded != null:
return loaded(_that);case ErrorMessageState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialMessageState value)  initial,required TResult Function( LoadingMessageState value)  loading,required TResult Function( LoadedMessageState value)  loaded,required TResult Function( ErrorMessageState value)  error,}){
final _that = this;
switch (_that) {
case InitialMessageState():
return initial(_that);case LoadingMessageState():
return loading(_that);case LoadedMessageState():
return loaded(_that);case ErrorMessageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialMessageState value)?  initial,TResult? Function( LoadingMessageState value)?  loading,TResult? Function( LoadedMessageState value)?  loaded,TResult? Function( ErrorMessageState value)?  error,}){
final _that = this;
switch (_that) {
case InitialMessageState() when initial != null:
return initial(_that);case LoadingMessageState() when loading != null:
return loading(_that);case LoadedMessageState() when loaded != null:
return loaded(_that);case ErrorMessageState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MessageModel> messages)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialMessageState() when initial != null:
return initial();case LoadingMessageState() when loading != null:
return loading();case LoadedMessageState() when loaded != null:
return loaded(_that.messages);case ErrorMessageState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MessageModel> messages)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case InitialMessageState():
return initial();case LoadingMessageState():
return loading();case LoadedMessageState():
return loaded(_that.messages);case ErrorMessageState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MessageModel> messages)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case InitialMessageState() when initial != null:
return initial();case LoadingMessageState() when loading != null:
return loading();case LoadedMessageState() when loaded != null:
return loaded(_that.messages);case ErrorMessageState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class InitialMessageState implements MessageState {
  const InitialMessageState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialMessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.initial()';
}


}




/// @nodoc


class LoadingMessageState implements MessageState {
  const LoadingMessageState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingMessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.loading()';
}


}




/// @nodoc


class LoadedMessageState implements MessageState {
  const LoadedMessageState({required final  List<MessageModel> messages}): _messages = messages;
  

 final  List<MessageModel> _messages;
 List<MessageModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedMessageStateCopyWith<LoadedMessageState> get copyWith => _$LoadedMessageStateCopyWithImpl<LoadedMessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedMessageState&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'MessageState.loaded(messages: $messages)';
}


}

/// @nodoc
abstract mixin class $LoadedMessageStateCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $LoadedMessageStateCopyWith(LoadedMessageState value, $Res Function(LoadedMessageState) _then) = _$LoadedMessageStateCopyWithImpl;
@useResult
$Res call({
 List<MessageModel> messages
});




}
/// @nodoc
class _$LoadedMessageStateCopyWithImpl<$Res>
    implements $LoadedMessageStateCopyWith<$Res> {
  _$LoadedMessageStateCopyWithImpl(this._self, this._then);

  final LoadedMessageState _self;
  final $Res Function(LoadedMessageState) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(LoadedMessageState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,
  ));
}


}

/// @nodoc


class ErrorMessageState implements MessageState {
  const ErrorMessageState({required this.message});
  

 final  String message;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorMessageStateCopyWith<ErrorMessageState> get copyWith => _$ErrorMessageStateCopyWithImpl<ErrorMessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorMessageState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorMessageStateCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $ErrorMessageStateCopyWith(ErrorMessageState value, $Res Function(ErrorMessageState) _then) = _$ErrorMessageStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorMessageStateCopyWithImpl<$Res>
    implements $ErrorMessageStateCopyWith<$Res> {
  _$ErrorMessageStateCopyWithImpl(this._self, this._then);

  final ErrorMessageState _self;
  final $Res Function(ErrorMessageState) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorMessageState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
