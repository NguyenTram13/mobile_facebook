import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String formatAndTranslate(
  String value,
  String lang,
  String unitDirection,
  String currency,
  String formatStyle,
) {
  //<===============================start code==================================>
  // if (prefs == null) {
  if (false) {
    // initPrefs();
    // return 'Loading...';
  } else {
    const tygia = 23000;
    const vietnamese = {"Monday": "Thứ hai"};
    const english = {"Monday": "Monday"};

    // final userSettings =
    //     json.decode(prefs.getString('userSettings').toString());

    try {
      final double numberParsed = currency == '\$'
          ? double.parse(value.toString())
          : double.parse(value.toString()) * tygia;
      final localeChecked = formatStyle == '0' ||
              formatStyle == '1' ||
              formatStyle == 0 ||
              formatStyle == 1
          ? 'en'
          : 'az';

      var afterFormat = formatStyle == '0' ||
              formatStyle == '1' ||
              formatStyle == 0 ||
              formatStyle == 1
          ? NumberFormat.simpleCurrency(locale: localeChecked, decimalDigits: 2)
              .format(numberParsed)
              .substring(1)
          : NumberFormat.simpleCurrency(locale: localeChecked, decimalDigits: 2)
              .format(numberParsed)
              .substring(
                  0,
                  NumberFormat.simpleCurrency(
                          locale: localeChecked, decimalDigits: 2)
                      .format(numberParsed)
                      .indexOf('man'));
      return formatStyle == '1' ||
              formatStyle == '3' ||
              formatStyle == 1 ||
              formatStyle == 3
          ? '$afterFormat$currency'
          : '$currency$afterFormat';
    } catch (e) {
      return lang == 'en'
          ? english[value.toString()].toString()
          : vietnamese[value.toString()].toString();
    }
  }
  //<===============================end code====================================>
  return value;
}

String checkValue(
  String value,
  String defaultValue,
) {
  if (value != null && value != 'null' && value != '') {
    return value;
  } else {
    return defaultValue;
  }
}

bool convertToBoolean(dynamic value) {
  if (value == null ||
      value == 'null' ||
      value == '' ||
      value == 0 ||
      value == false) return false;
  return true;
}

String? convertColumnFromServer(String inputColumns) {
  String output = inputColumns
      .replaceAll('[', '')
      .replaceAll(']', '')
      .replaceAll('"', '')
      .replaceAll('\\', '')
      .replaceAll(',', ' ');
  return output;
}

String? convertDataGrapql(
  dynamic param1,
  dynamic param2,
  dynamic param3,
  dynamic param4,
  dynamic param5,
  dynamic param6,
) {
  try {
    Map<String, dynamic> combinedMap = {
      ...?param1,
      ...?param2,
      ...?param3,
      ...?param4,
      ...?param5,
      ...?param6
    };

    return json.encode(combinedMap);
  } catch (e) {
    print('error convertDataGraphql');
    print(e);
    return 'error';
  }
}

dynamic createKeyValueMap(
  String? key,
  String? value,
) {
  if (key == " " || key == "" || key == "null" || key == null) {
    return {};
  } else {
    return {
      key: value,
    };
  }
}

String? getSettingColumnFromServer(
  dynamic dataSetting,
  String? slugPage,
  String? slugSessionPage,
) {
  String result = '';

  for (int i = 0; i < dataSetting.length; i++) {
    var item = dataSetting[i];
    if (item['slug'] == slugPage) {
      for (int j = 0; j < item['session_page_graphql'].length; j++) {
        var item2 = item['session_page_graphql'][j];
        if (item2['slug'] == slugSessionPage) {
          result += item2['columns'];
        }
      }
    }
  }

  return result;
}

dynamic inputColumnQuery(
  String? column1,
  String? column2,
  String? column3,
  String? column4,
) {
  try {
    List<String?> stringList = [column1, column2, column3, column4];
    // Remove null values from the stringList
    stringList.removeWhere((element) => element == null);
    return stringList;
  } catch (e) {
    print(e);
    return 'error input';
  }
}

dynamic getSettingLayoutFF(
  dynamic fileConfig,
  String slugPageSetting,
) {
  dynamic result = null; // Initialize result with a default value

  for (int i = 0; i < fileConfig.length; i++) {
    var item = fileConfig[i];
    if (item['slug'] == slugPageSetting) {
      print(item['config']);
      result = item['config'];
    }
  }

  return result;
}

String stringToDateTime(
  String variable,
  String text,
) {
  final pattern = RegExp('<<$variable=(\\d+)>>');
  final now = DateTime.now();

  final replacedText = text.replaceAllMapped(pattern, (match) {
    final timestamp = int.parse(match.group(1)!);
    final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final formattedDate =
        DateFormat('dd/MM/yyyy hh:mm a').format(dateTime.toLocal());
    return formattedDate;
  });

  return replacedText;
}

double test(
  dynamic data,
  String name,
) {
  double number = 0.1;
  for (int i = 0; i < data["currency_rate"].length; i++) {
    var item = data["currency_rate"][i];
    if (item["currency"]["slug"] == name) {
      number = double.tryParse(item["rate"].toString())!;
      break;
    }
  }
  print('no rate');

  return number;
}

double setHeight(
  int index,
  double step,
) {
  return index * step;
}

int getLengthArray(List<dynamic> data) {
  return data.length;
}

dynamic getItemArray(
  List<dynamic> data,
  String keySearch,
) {
  dynamic result;
  for (int i = 0; i < data.length; i++) {
    if (data[i]["option_data"]["key"] == keySearch) {
      result = data[i];
      break;
    }
  }

  return result;
}

bool checkLike(
  List<dynamic> data,
  int userId,
) {
  bool result = false;

  for (int i = 0; i < data.length; i++) {
    if (data[i]["user_id"] == userId) {
      result = true;
      break;
    }
  }

  return result;
}

String getTimeAgo(String time) {
  final now = DateTime.now();
  final difference = now.difference(DateTime.parse(time));

  if (difference.inSeconds < 60) {
    return '${difference.inSeconds} seconds ago';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minutes ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hours ago';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} days ago';
  } else {
    final weeks = difference.inDays ~/ 7;
    if (weeks == 1) {
      return '1 week ago';
    } else {
      return '$weeks weeks ago';
    }
  }
}

bool checkFriendOfUser(
  List<dynamic> data,
  int userIdProfile,
) {
  bool result = false;

  for (int i = 0; i < data.length; i++) {
    if (data[i]["friend_user"]['id'] == userIdProfile) {
      result = true;
      break;
    }
  }

  return result;
}

bool checkUserRequestFriend(
  List<dynamic> data,
  int idUser,
) {
  bool result = false;

  for (int i = 0; i < data.length; i++) {
    if (data[i]["sender_data"]["id"] == idUser) {
      result = true;
    }
  }

  return result;
}

dynamic getoneDataRequestFriend(
  List<dynamic> data,
  int idUser,
) {
  dynamic result = null;
  for (int i = 0; i < data.length; i++) {
    if (data[i]["sender_data"]["id"] == idUser) {
      result = data[i];
      break;
    }
  }

  return result;
}

List<dynamic> updateDataComment(
  List<dynamic> dataOld,
  dynamic comment,
) {
  dataOld.add(comment);
  return dataOld;
}
