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
    this.userId,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int? userId;

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
        'https://chiase.shoppet.fun/',
        IO.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .build());

    socket.onConnect((_) {
      print('connect to socket');
      socket.on("getMessage", (data) async {
        print("getMessage $data");
      });
      socket.on("alertMessage", (data) async {
        print("alertMessage $data");
        FFAppState().update(() {
          FFAppState().alertMessage = data;

          FFAppState().turnOnNoti = true;
        });
        await Future.delayed(const Duration(seconds: 4));
        FFAppState().update(() => {FFAppState().turnOnNoti = false});
      });
      socket.emit("addUser", widget.userId);
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
