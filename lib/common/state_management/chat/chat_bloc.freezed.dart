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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateChat value)?  createChat,TResult Function( _JoinChat value)?  joinChat,TResult Function( _MessageReceived value)?  messageReceived,TResult Function( _SendMessage value)?  sendMessage,TResult Function( _GetMessages value)?  getMessages,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateChat() when createChat != null:
return createChat(_that);case _JoinChat() when joinChat != null:
return joinChat(_that);case _MessageReceived() when messageReceived != null:
return messageReceived(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _GetMessages() when getMessages != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateChat value)  createChat,required TResult Function( _JoinChat value)  joinChat,required TResult Function( _MessageReceived value)  messageReceived,required TResult Function( _SendMessage value)  sendMessage,required TResult Function( _GetMessages value)  getMessages,}){
final _that = this;
switch (_that) {
case _CreateChat():
return createChat(_that);case _JoinChat():
return joinChat(_that);case _MessageReceived():
return messageReceived(_that);case _SendMessage():
return sendMessage(_that);case _GetMessages():
return getMessages(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateChat value)?  createChat,TResult? Function( _JoinChat value)?  joinChat,TResult? Function( _MessageReceived value)?  messageReceived,TResult? Function( _SendMessage value)?  sendMessage,TResult? Function( _GetMessages value)?  getMessages,}){
final _that = this;
switch (_that) {
case _CreateChat() when createChat != null:
return createChat(_that);case _JoinChat() when joinChat != null:
return joinChat(_that);case _MessageReceived() when messageReceived != null:
return messageReceived(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _GetMessages() when getMessages != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String recipientName,  String recipientId)?  createChat,TResult Function( String chatId)?  joinChat,TResult Function( MessageModel message)?  messageReceived,TResult Function( String message)?  sendMessage,TResult Function( String chatId)?  getMessages,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateChat() when createChat != null:
return createChat(_that.recipientName,_that.recipientId);case _JoinChat() when joinChat != null:
return joinChat(_that.chatId);case _MessageReceived() when messageReceived != null:
return messageReceived(_that.message);case _SendMessage() when sendMessage != null:
return sendMessage(_that.message);case _GetMessages() when getMessages != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String recipientName,  String recipientId)  createChat,required TResult Function( String chatId)  joinChat,required TResult Function( MessageModel message)  messageReceived,required TResult Function( String message)  sendMessage,required TResult Function( String chatId)  getMessages,}) {final _that = this;
switch (_that) {
case _CreateChat():
return createChat(_that.recipientName,_that.recipientId);case _JoinChat():
return joinChat(_that.chatId);case _MessageReceived():
return messageReceived(_that.message);case _SendMessage():
return sendMessage(_that.message);case _GetMessages():
return getMessages(_that.chatId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String recipientName,  String recipientId)?  createChat,TResult? Function( String chatId)?  joinChat,TResult? Function( MessageModel message)?  messageReceived,TResult? Function( String message)?  sendMessage,TResult? Function( String chatId)?  getMessages,}) {final _that = this;
switch (_that) {
case _CreateChat() when createChat != null:
return createChat(_that.recipientName,_that.recipientId);case _JoinChat() when joinChat != null:
return joinChat(_that.chatId);case _MessageReceived() when messageReceived != null:
return messageReceived(_that.message);case _SendMessage() when sendMessage != null:
return sendMessage(_that.message);case _GetMessages() when getMessages != null:
return getMessages(_that.chatId);case _:
  return null;

}
}

}

/// @nodoc


class _CreateChat implements ChatEvent {
  const _CreateChat({required this.recipientName, required this.recipientId});
  

 final  String recipientName;
 final  String recipientId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateChatCopyWith<_CreateChat> get copyWith => __$CreateChatCopyWithImpl<_CreateChat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateChat&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId));
}


@override
int get hashCode => Object.hash(runtimeType,recipientName,recipientId);

@override
String toString() {
  return 'ChatEvent.createChat(recipientName: $recipientName, recipientId: $recipientId)';
}


}

/// @nodoc
abstract mixin class _$CreateChatCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$CreateChatCopyWith(_CreateChat value, $Res Function(_CreateChat) _then) = __$CreateChatCopyWithImpl;
@useResult
$Res call({
 String recipientName, String recipientId
});




}
/// @nodoc
class __$CreateChatCopyWithImpl<$Res>
    implements _$CreateChatCopyWith<$Res> {
  __$CreateChatCopyWithImpl(this._self, this._then);

  final _CreateChat _self;
  final $Res Function(_CreateChat) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipientName = null,Object? recipientId = null,}) {
  return _then(_CreateChat(
recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _JoinChat implements ChatEvent {
  const _JoinChat({required this.chatId});
  

 final  String chatId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinChatCopyWith<_JoinChat> get copyWith => __$JoinChatCopyWithImpl<_JoinChat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinChat&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'ChatEvent.joinChat(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$JoinChatCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$JoinChatCopyWith(_JoinChat value, $Res Function(_JoinChat) _then) = __$JoinChatCopyWithImpl;
@useResult
$Res call({
 String chatId
});




}
/// @nodoc
class __$JoinChatCopyWithImpl<$Res>
    implements _$JoinChatCopyWith<$Res> {
  __$JoinChatCopyWithImpl(this._self, this._then);

  final _JoinChat _self;
  final $Res Function(_JoinChat) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_JoinChat(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MessageReceived implements ChatEvent {
  const _MessageReceived({required this.message});
  

 final  MessageModel message;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageReceivedCopyWith<_MessageReceived> get copyWith => __$MessageReceivedCopyWithImpl<_MessageReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageReceived&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatEvent.messageReceived(message: $message)';
}


}

/// @nodoc
abstract mixin class _$MessageReceivedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$MessageReceivedCopyWith(_MessageReceived value, $Res Function(_MessageReceived) _then) = __$MessageReceivedCopyWithImpl;
@useResult
$Res call({
 MessageModel message
});




}
/// @nodoc
class __$MessageReceivedCopyWithImpl<$Res>
    implements _$MessageReceivedCopyWith<$Res> {
  __$MessageReceivedCopyWithImpl(this._self, this._then);

  final _MessageReceived _self;
  final $Res Function(_MessageReceived) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_MessageReceived(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageModel,
  ));
}


}

/// @nodoc


class _SendMessage implements ChatEvent {
  const _SendMessage({required this.message});
  

 final  String message;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatEvent.sendMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SendMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetMessages implements ChatEvent {
  const _GetMessages({required this.chatId});
  

 final  String chatId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMessagesCopyWith<_GetMessages> get copyWith => __$GetMessagesCopyWithImpl<_GetMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMessages&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'ChatEvent.getMessages(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$GetMessagesCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$GetMessagesCopyWith(_GetMessages value, $Res Function(_GetMessages) _then) = __$GetMessagesCopyWithImpl;
@useResult
$Res call({
 String chatId
});




}
/// @nodoc
class __$GetMessagesCopyWithImpl<$Res>
    implements _$GetMessagesCopyWith<$Res> {
  __$GetMessagesCopyWithImpl(this._self, this._then);

  final _GetMessages _self;
  final $Res Function(_GetMessages) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_GetMessages(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MessageModel> chatModels)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.chatModels);case Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MessageModel> chatModels)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Loaded():
return loaded(_that.chatModels);case Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MessageModel> chatModels)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.chatModels);case Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements ChatState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.initial()';
}


}




/// @nodoc


class Loading implements ChatState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.loading()';
}


}




/// @nodoc


class Loaded implements ChatState {
  const Loaded({required final  List<MessageModel> chatModels}): _chatModels = chatModels;
  

 final  List<MessageModel> _chatModels;
 List<MessageModel> get chatModels {
  if (_chatModels is EqualUnmodifiableListView) return _chatModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatModels);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._chatModels, _chatModels));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chatModels));

@override
String toString() {
  return 'ChatState.loaded(chatModels: $chatModels)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<MessageModel> chatModels
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatModels = null,}) {
  return _then(Loaded(
chatModels: null == chatModels ? _self._chatModels : chatModels // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,
  ));
}


}

/// @nodoc


class Failure implements ChatState {
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
