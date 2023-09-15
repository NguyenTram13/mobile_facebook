// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future<void> getAppSettings() async {
  print('get app\'s setting action');
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  Dio dio = Dio();
  try {
    // get user's settings
    Response appSettingsRes = await dio.get(
        'https://setting-ff.dev-tn.com//setting-ff/api/v1/setting-flutterflow');
    if (appSettingsRes.statusCode == 200) {
      // save user's setting to localStorage
      await prefs.setString('appSettings', appSettingsRes.toString());
      final appSettings =
          json.decode(prefs.getString('appSettings').toString());
      print(appSettings);
    }
  } catch (error) {
    print(error.toString());
  }
}
