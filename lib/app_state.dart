import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    _accessToken = _value;
  }

  int _idUser = 0;
  int get idUser => _idUser;
  set idUser(int _value) {
    _idUser = _value;
  }

  dynamic _resProfile;
  dynamic get resProfile => _resProfile;
  set resProfile(dynamic _value) {
    _resProfile = _value;
  }

  List<dynamic> _resPostHome = [];
  List<dynamic> get resPostHome => _resPostHome;
  set resPostHome(List<dynamic> _value) {
    _resPostHome = _value;
  }

  void addToResPostHome(dynamic _value) {
    _resPostHome.add(_value);
  }

  void removeFromResPostHome(dynamic _value) {
    _resPostHome.remove(_value);
  }

  void removeAtIndexFromResPostHome(int _index) {
    _resPostHome.removeAt(_index);
  }

  void updateResPostHomeAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _resPostHome[_index] = updateFn(_resPostHome[_index]);
  }

  void insertAtIndexInResPostHome(int _index, dynamic _value) {
    _resPostHome.insert(_index, _value);
  }

  String _avatarDefault =
      'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1695739770/doraemon_fyestv.jpg';
  String get avatarDefault => _avatarDefault;
  set avatarDefault(String _value) {
    _avatarDefault = _value;
  }

  String _backgroundDefault =
      'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1695569923/home/cffi5e35l6al7ygkihm6.jpg';
  String get backgroundDefault => _backgroundDefault;
  set backgroundDefault(String _value) {
    _backgroundDefault = _value;
  }

  dynamic _resProfilePage;
  dynamic get resProfilePage => _resProfilePage;
  set resProfilePage(dynamic _value) {
    _resProfilePage = _value;
  }

  int _idDetailUser = 0;
  int get idDetailUser => _idDetailUser;
  set idDetailUser(int _value) {
    _idDetailUser = _value;
  }

  List<dynamic> _friendProfile = [];
  List<dynamic> get friendProfile => _friendProfile;
  set friendProfile(List<dynamic> _value) {
    _friendProfile = _value;
  }

  void addToFriendProfile(dynamic _value) {
    _friendProfile.add(_value);
  }

  void removeFromFriendProfile(dynamic _value) {
    _friendProfile.remove(_value);
  }

  void removeAtIndexFromFriendProfile(int _index) {
    _friendProfile.removeAt(_index);
  }

  void updateFriendProfileAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _friendProfile[_index] = updateFn(_friendProfile[_index]);
  }

  void insertAtIndexInFriendProfile(int _index, dynamic _value) {
    _friendProfile.insert(_index, _value);
  }

  dynamic _resAboutProfile;
  dynamic get resAboutProfile => _resAboutProfile;
  set resAboutProfile(dynamic _value) {
    _resAboutProfile = _value;
  }

  String _emoji = '';
  String get emoji => _emoji;
  set emoji(String _value) {
    _emoji = _value;
  }

  String _contentPost = '';
  String get contentPost => _contentPost;
  set contentPost(String _value) {
    _contentPost = _value;
  }

  dynamic _resNoti;
  dynamic get resNoti => _resNoti;
  set resNoti(dynamic _value) {
    _resNoti = _value;
  }

  List<dynamic> _resRequestFriend = [];
  List<dynamic> get resRequestFriend => _resRequestFriend;
  set resRequestFriend(List<dynamic> _value) {
    _resRequestFriend = _value;
  }

  void addToResRequestFriend(dynamic _value) {
    _resRequestFriend.add(_value);
  }

  void removeFromResRequestFriend(dynamic _value) {
    _resRequestFriend.remove(_value);
  }

  void removeAtIndexFromResRequestFriend(int _index) {
    _resRequestFriend.removeAt(_index);
  }

  void updateResRequestFriendAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _resRequestFriend[_index] = updateFn(_resRequestFriend[_index]);
  }

  void insertAtIndexInResRequestFriend(int _index, dynamic _value) {
    _resRequestFriend.insert(_index, _value);
  }

  List<dynamic> _listFriendUserOnline = [];
  List<dynamic> get listFriendUserOnline => _listFriendUserOnline;
  set listFriendUserOnline(List<dynamic> _value) {
    _listFriendUserOnline = _value;
  }

  void addToListFriendUserOnline(dynamic _value) {
    _listFriendUserOnline.add(_value);
  }

  void removeFromListFriendUserOnline(dynamic _value) {
    _listFriendUserOnline.remove(_value);
  }

  void removeAtIndexFromListFriendUserOnline(int _index) {
    _listFriendUserOnline.removeAt(_index);
  }

  void updateListFriendUserOnlineAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listFriendUserOnline[_index] = updateFn(_listFriendUserOnline[_index]);
  }

  void insertAtIndexInListFriendUserOnline(int _index, dynamic _value) {
    _listFriendUserOnline.insert(_index, _value);
  }

  String _contentComment = '';
  String get contentComment => _contentComment;
  set contentComment(String _value) {
    _contentComment = _value;
  }

  String _qrCode = '';
  String get qrCode => _qrCode;
  set qrCode(String _value) {
    _qrCode = _value;
  }

  String _pageHomeSelect = 'home';
  String get pageHomeSelect => _pageHomeSelect;
  set pageHomeSelect(String _value) {
    _pageHomeSelect = _value;
  }

  dynamic _alertMessage;
  dynamic get alertMessage => _alertMessage;
  set alertMessage(dynamic _value) {
    _alertMessage = _value;
  }

  bool _turnOnNoti = false;
  bool get turnOnNoti => _turnOnNoti;
  set turnOnNoti(bool _value) {
    _turnOnNoti = _value;
  }

  List<dynamic> _resConversation = [];
  List<dynamic> get resConversation => _resConversation;
  set resConversation(List<dynamic> _value) {
    _resConversation = _value;
  }

  void addToResConversation(dynamic _value) {
    _resConversation.add(_value);
  }

  void removeFromResConversation(dynamic _value) {
    _resConversation.remove(_value);
  }

  void removeAtIndexFromResConversation(int _index) {
    _resConversation.removeAt(_index);
  }

  void updateResConversationAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _resConversation[_index] = updateFn(_resConversation[_index]);
  }

  void insertAtIndexInResConversation(int _index, dynamic _value) {
    _resConversation.insert(_index, _value);
  }

  List<dynamic> _messageCurrently = [];
  List<dynamic> get messageCurrently => _messageCurrently;
  set messageCurrently(List<dynamic> _value) {
    _messageCurrently = _value;
  }

  void addToMessageCurrently(dynamic _value) {
    _messageCurrently.add(_value);
  }

  void removeFromMessageCurrently(dynamic _value) {
    _messageCurrently.remove(_value);
  }

  void removeAtIndexFromMessageCurrently(int _index) {
    _messageCurrently.removeAt(_index);
  }

  void updateMessageCurrentlyAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _messageCurrently[_index] = updateFn(_messageCurrently[_index]);
  }

  void insertAtIndexInMessageCurrently(int _index, dynamic _value) {
    _messageCurrently.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
