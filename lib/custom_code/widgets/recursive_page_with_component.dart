// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../components/currency_widget.dart';
import '../../components/language_widget.dart';
import '../../components/style_widget.dart';
import '../../components/setting_formatter_widget.dart';

class RecursivePageWithComponent extends StatefulWidget {
  const RecursivePageWithComponent(
      {Key? key, this.width, this.height, required this.fileConfig})
      : super(key: key);

  final double? width;
  final double? height;
  final dynamic fileConfig;
  // Define the 'page' property

  @override
  _RecursivePageWithComponentState createState() =>
      _RecursivePageWithComponentState();
}

class _RecursivePageWithComponentState
    extends State<RecursivePageWithComponent> {
  @override
  void initState() {
    super.initState();
  }

  // Map<String, dynamic>? getPage1(List<Map<String, dynamic>> data, String slug) {
  //   return data.firstWhere((item) => item['slug'] == slug, orElse: () => {});
  // }

  @override
  Widget build(BuildContext context) {
    return getTreeComponents(widget.fileConfig);
  }

  Widget getTreeComponents(setting) {
    if (setting is String) {
      print('>>>>> setting is string');
      print(setting);
      return getWidget(widgetName: setting);
    } else {
      print('>>>>> setting not string');
      print(setting);
      switch (setting['type']) {
        case 'column':
          return Column(
            children: [
              ...setting['elements']
                  .map((item) => getTreeComponents(item))
                  .toList()
            ],
          );
        case 'row':
          return Row(
            children: [
              ...setting['elements']
                  .map((item) => getTreeComponents(item))
                  .toList()
            ],
          );
        case 'column_scroll':
          return SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
            ...setting['elements']
                .map((item) => getTreeComponents(item))
                .toList()
          ]));
        case 'row_scroll':
          return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                ...setting['elements']
                    .map((item) => getTreeComponents(item))
                    .toList()
              ]));
        default:
          return Text('');
      }
    }
  }

  Widget getWidget({String? widgetName = ''}) {
    switch (widgetName) {
      case "Style":
        return StyleWidget();
      case "Currency":
        return CurrencyWidget();
      case "Language":
        return LanguageWidget();
      case "SettingFormatter":
        return SettingFormatterWidget();
      default:
        return Text('');
    }
  }
}
