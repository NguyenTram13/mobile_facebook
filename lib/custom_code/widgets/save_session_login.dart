// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

import 'package:shared_preferences/shared_preferences.dart';
import 'package:setting_dashboard/index.dart';

class SaveSessionLogin extends StatefulWidget {
  const SaveSessionLogin({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SaveSessionLoginState createState() => _SaveSessionLoginState();
}

class _SaveSessionLoginState extends State<SaveSessionLogin> {
  String? _accessToken;
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _initPreferences();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  Future<void> _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _accessToken = _prefs.getString('accessToken');
    });
    print("_prefs.getString('idUser') ${_prefs.getString('idUser')}");
    if (_prefs.getString('accessToken') != null &&
        _prefs.getString('idUser') != null) {
      FFAppState().update(() {
        FFAppState().accessToken = _prefs.getString('accessToken')!;
        FFAppState().idUser = int.parse(_prefs.getString('idUser')!);
      });

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => HomePageWidget()));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
