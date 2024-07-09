import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int multiply2arg(
  int rentAmount,
  int rentMonth,
) {
  // Take 2 integer input and multiply them
  return rentAmount * rentMonth;
}

int? checkIndexint(
  dynamic list,
  String? value,
  String? keys,
  String? subKeys,
  String? indexKey,
  bool mainKeyYesorNo,
) {
  // from the list check the value at which index it is and return the index number
  if (mainKeyYesorNo == false) {
    for (int i = 0; i < list.length; i++) {
      if (list[i][subKeys] == value) {
        return list[i][indexKey];
      }
    }
  } else {
    for (int i = 0; i < list[keys].length; i++) {
      if (list[keys][i][subKeys] == value) {
        return list[keys][i][indexKey];
      }
    }
  }
  return null;
}

int? sub2arg(
  int fstArg,
  int scndarg,
) {
  // Subtract both agrgument
// Subtract both arguments and return the result
  return fstArg - scndarg;
}

String? sitedimensiondropdown(String dropdownValue) {
  if (dropdownValue == "Yes") {
    return "true";
  } else {
    return "false";
  }
}

double? latitudeFuntion(LatLng latLong) {
  return latLong.latitude;
}

int? radioButton(String dropdownvalue) {
  // in dropdown value is yes then show 1 or in dropdown values is no then show 0
  if (dropdownvalue == "Security Deposit" || dropdownvalue == "ONSITE") {
    return 1;
  } else {
    return 0;
  }
}

double longitudeFunction(LatLng latLong) {
  return latLong.longitude;
}

String? checkIndex(
  dynamic list,
  String? value,
  String? keys,
  String? subKeys,
  String? indexKey,
) {
  // from the list check the value at which index it is and return the index number
  for (int i = 0; i < list[keys].length; i++) {
    if (list[keys][i][subKeys] == value) {
      return list[keys][i][indexKey];
    }
  }
  return null;
}

dynamic jsonResponse(
  int? index,
  dynamic list,
) {
  return list[index];
}

int? dropdown(String dropdownValue) {
  if (dropdownValue == "Yes") {
    return 1;
  } else {
    return 0;
  }
}

int? dropdownsONSITE(String dropdownvalue) {
  // in dropdown value is yes then show 1 or in dropdown values is no then show 0
  if (dropdownvalue == "Onsite" || dropdownvalue == "Yes") {
    return 1;
  } else {
    return 0;
  }
}

String? newCustomFunction(String? state) {
  // if state is not select and user click any widget then show please select state
  if (state != 'select') {
    return null;
  } else {
    return 'please select state';
  }
}

dynamic filter(
  dynamic mainData,
  String? searchValue,
) {
  if (searchValue == null || searchValue.isEmpty) {
    return mainData['indents'].toList();
  }

  List<dynamic> filteredData = [];

  for (dynamic data in mainData['indents']) {
    String searchValueLowerCase = searchValue.toLowerCase();

    if (data['CustomerBank'].toLowerCase().contains(searchValueLowerCase)) {
      filteredData.add(data);
    }
  }

  return filteredData;
}

String? istatetostatevalue(
  dynamic list,
  String? value,
  String? keys,
  String? subKeys,
  String? indexKey,
) {
  // from the list check the value at which index it is and return the index number
  for (int i = 0; i < list[keys].length; i++) {
    if (list[keys][i][subKeys] == value) {
      return list[keys][i][indexKey];
    }
  }
  return null;
}
