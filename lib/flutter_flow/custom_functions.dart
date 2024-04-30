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
        return int.parse(list[i][indexKey].toString());
      }
    }
  } else {
    for (int i = 0; i < list[keys].length; i++) {
      if (list[keys][i][subKeys] == value) {
        return int.parse(list[keys][i][indexKey].toString());
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

double? latitudeFuntion(LatLng latLong) {
  return latLong.latitude;
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
