// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dart_ipify/dart_ipify.dart';
import 'package:client_information/client_information.dart';
import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<void> addInfoDeviceToServer(String accessToken) async {
  ClientInformation info = await ClientInformation.fetch();
  Map<String, dynamic> data_post = {
    "deviceId": info.deviceId,
    "deviceName": info.deviceName,
    "osName": info.osName,
    "osVersion": info.osVersion,
    // Add other fields as needed
    "osVersionCode": info.osVersionCode,
    "applicationVersion": info.applicationVersion
  };
  List<Placemark> placemarks =
      await placemarkFromCoordinates(52.2165157, 6.9437819);
  final ipv6 = await Ipify.ipv64();
  print("ipv6 $ipv6");
  print("data_post $data_post");

// Assign the "ip" key with the IPv6 value as a string within the map
  data_post["ip"] = ipv6.toString();
  data_post["location"] = placemarks.toString();

  print("data_post $data_post");

  final Dio dio = Dio();
  dio.options.headers['Authorization'] = 'Bearer ${accessToken}';
  Response res = await dio.post(
      "https://chiase.shoppet.fun/api/auth/dashboard/addInfoDeviceUser",
      data: data_post,
      options:
          Options(headers: {Headers.contentTypeHeader: 'application/json'}));

  if (res.statusCode == 201) {
    print("Add info to server successfully");
  }
}
