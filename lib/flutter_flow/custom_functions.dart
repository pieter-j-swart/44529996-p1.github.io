import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

LatLng? latLngToLatLng(
  String? latitude,
  String? longitude,
) {
  if (latitude != null && longitude != null) {
    try {
      final double latitudeDouble = double.parse(latitude);
      final double longitudeDouble = double.parse(longitude);
      return LatLng(latitudeDouble, longitudeDouble);
    } catch (e) {
      // Handle parsing errors here if necessary
      return null;
    }
  } else {
    return null;
  }
}
