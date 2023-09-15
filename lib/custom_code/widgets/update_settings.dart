// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> updateSettings() async {
  print('in widget');
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  Dio dio = Dio();
  try {
    // get user's settings
    // Response userSettingsRes = await dio
    //     .get(FFAppState().domain + '/localization/api/v1/version-localization');
    // print(userSettingsRes);
    // if (userSettingsRes.statusCode == 200) {
    //   await prefs.setString('userSettings', userSettingsRes.toString());
    //   final userSettings =
    //       json.decode(prefs.getString('userSettings').toString());
    //   print(userSettings['version']);
    // }
    // get app's settings
    // Response response = await dio
    //     .get(FFAppState().domain + '/localization/api/v1/version-localization');
    // print(response);
    // if (response.statusCode == 200) {
    //   var currentVersion = double.parse(
    //       getDataFromLocalStorage('settingsVersion') != 'null' &&
    //               getDataFromLocalStorage('settingsVersion') != ''
    //           ? getDataFromLocalStorage('settingsVersion')
    //           : '0.0');
    //   var newVersion = double.parse(response.data['version']);

    //   const testRes = {"version": "1.2"};

    //   saveDataToLocalStorage('testSaveSetting', testRes.toString());
    //   var test = getDataFromLocalStorage('testSaveSetting');
    //   print('test');
    //   print(test);
    //   var testParsed = json.decode(test.toString());
    //   print('after decode');
    //   print(testParsed);
    //   print(testParsed['version']);

    //   if (newVersion > currentVersion) {
    //     //call api get new settings
    //     //if get new setting success -> save new version and new setting to local
    //     saveDataToLocalStorage('settingsVersion', newVersion.toString());

    //     print('lon hon');
    //     print('lon hon ${getDataFromLocalStorage('settingsVersion')}');
    //   } else {
    //     //do not thing
    //     print('nho hon or bang');
    //   }
    // }
  } catch (error) {
    print(error.toString());
  }
}

class UpdateSettings extends StatefulWidget {
  const UpdateSettings({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _UpdateSettingsState createState() => _UpdateSettingsState();
}

class _UpdateSettingsState extends State<UpdateSettings> {
  @override
  void initState() {
    super.initState();
    updateSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Text('');
  }
}
