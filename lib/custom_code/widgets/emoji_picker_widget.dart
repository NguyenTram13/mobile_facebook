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
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class EmojiPickerWidget extends StatefulWidget {
  const EmojiPickerWidget({
    Key? key,
    this.width,
    this.height,
    required this.page,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String page;

  @override
  _EmojiPickerWidgetState createState() => _EmojiPickerWidgetState();
}

class _EmojiPickerWidgetState extends State<EmojiPickerWidget> {
  String selectedEmoji = '';

  // Método para obter o emoji selecionado externamente
  String getSelectedEmoji() {
    return selectedEmoji;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 250,
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: EmojiPicker(
        onEmojiSelected: (category, emoji) {
          // Atualiza o estado local quando um emoji é selecionado
          setState(() {
            selectedEmoji = emoji.emoji!;
          });
          switch (widget.page) {
            case "create_post":
              FFAppState().update(() {
                FFAppState().contentPost =
                    FFAppState().contentPost + emoji.emoji!;
              });
              break;
            case "comment":
              FFAppState().update(() {
                FFAppState().contentComment =
                    FFAppState().contentComment + emoji.emoji!;
              });
              break;
            default:
              FFAppState().update(() {
                FFAppState().contentPost =
                    FFAppState().contentPost + emoji.emoji!;
              });
              break;
          }
        },
        config: Config(
          columns: 7,
          emojiSizeMax: 32.0,
          verticalSpacing: 0,
          horizontalSpacing: 0,
          initCategory: Category.RECENT,
          bgColor: const Color(0xFFF2F2F2),
          indicatorColor: Colors.blue,
          iconColor: Colors.grey,
          iconColorSelected: Colors.blue,
          backspaceColor: Colors.blue,
          categoryIcons: CategoryIcons(),
          buttonMode: ButtonMode.MATERIAL,
        ),
      ),
    );
  }
}
