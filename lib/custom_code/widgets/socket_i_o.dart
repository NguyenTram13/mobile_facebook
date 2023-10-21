// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:http/http.dart' as http;
import 'dart:convert';

class SocketIO extends StatefulWidget {
  const SocketIO({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SocketIOState createState() => _SocketIOState();
}

class _SocketIOState extends State<SocketIO> {
  late IO.Socket socket;
  bool navigate = false;
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) => main());
    main();
  }

  // init state
  void main() async {
    socket = IO.io(
        'https://setting-ff.dev-tn.com/',
        IO.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .build());

    socket.onConnect((_) {
      print('connect to socket');

      socket.on("setting-style-uddate", (data) async {
        print("setting-style-uddate");
        var jsonData = json.decode(data);
        print(jsonData['data']);
        setState(() {});
      });
    });
    print('end socket');

    //When an event recieved from server, data is added to the stream
    socket.onDisconnect((_) => print('disconnect to socket'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Socket IO"),
    );
  }
}
