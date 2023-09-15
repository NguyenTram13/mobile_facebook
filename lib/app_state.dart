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

  dynamic _setting;
  dynamic get setting => _setting;
  set setting(dynamic _value) {
    _setting = _value;
  }

  String _currency = '\$';
  String get currency => _currency;
  set currency(String _value) {
    _currency = _value;
  }

  String _formatStyle = '0';
  String get formatStyle => _formatStyle;
  set formatStyle(String _value) {
    _formatStyle = _value;
  }

  dynamic _settingsOfFormatter;
  dynamic get settingsOfFormatter => _settingsOfFormatter;
  set settingsOfFormatter(dynamic _value) {
    _settingsOfFormatter = _value;
  }

  List<dynamic> _currencys = [];
  List<dynamic> get currencys => _currencys;
  set currencys(List<dynamic> _value) {
    _currencys = _value;
  }

  void addToCurrencys(dynamic _value) {
    _currencys.add(_value);
  }

  void removeFromCurrencys(dynamic _value) {
    _currencys.remove(_value);
  }

  void removeAtIndexFromCurrencys(int _index) {
    _currencys.removeAt(_index);
  }

  void updateCurrencysAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _currencys[_index] = updateFn(_currencys[_index]);
  }

  void insertAtIndexInCurrencys(int _index, dynamic _value) {
    _currencys.insert(_index, _value);
  }

  String _lang = 'en';
  String get lang => _lang;
  set lang(String _value) {
    _lang = _value;
  }

  String _unitDirection = 'left';
  String get unitDirection => _unitDirection;
  set unitDirection(String _value) {
    _unitDirection = _value;
  }

  String _formatStylee = '';
  String get formatStylee => _formatStylee;
  set formatStylee(String _value) {
    _formatStylee = _value;
  }

  String _domain = 'https://q-quantummania-cms.dev-tn.com';
  String get domain => _domain;
  set domain(String _value) {
    _domain = _value;
  }

  bool _display = false;
  bool get display => _display;
  set display(bool _value) {
    _display = _value;
  }

  dynamic _responseSettingGraphql;
  dynamic get responseSettingGraphql => _responseSettingGraphql;
  set responseSettingGraphql(dynamic _value) {
    _responseSettingGraphql = _value;
  }

  dynamic _responseSettingFormatter;
  dynamic get responseSettingFormatter => _responseSettingFormatter;
  set responseSettingFormatter(dynamic _value) {
    _responseSettingFormatter = _value;
  }

  dynamic _responseSettingStyle;
  dynamic get responseSettingStyle => _responseSettingStyle;
  set responseSettingStyle(dynamic _value) {
    _responseSettingStyle = _value;
  }

  dynamic _settingLayout;
  dynamic get settingLayout => _settingLayout;
  set settingLayout(dynamic _value) {
    _settingLayout = _value;
  }

  dynamic _optionSelectedFormatter;
  dynamic get optionSelectedFormatter => _optionSelectedFormatter;
  set optionSelectedFormatter(dynamic _value) {
    _optionSelectedFormatter = _value;
  }

  String _showPopup = '';
  String get showPopup => _showPopup;
  set showPopup(String _value) {
    _showPopup = _value;
  }

  String _settingDomain = 'https://setting-ff.dev-tn.com';
  String get settingDomain => _settingDomain;
  set settingDomain(String _value) {
    _settingDomain = _value;
  }

  dynamic _responseSettingGobal;
  dynamic get responseSettingGobal => _responseSettingGobal;
  set responseSettingGobal(dynamic _value) {
    _responseSettingGobal = _value;
  }

  int _time = 5;
  int get time => _time;
  set time(int _value) {
    _time = _value;
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
