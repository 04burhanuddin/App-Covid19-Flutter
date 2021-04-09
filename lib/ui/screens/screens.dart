// karena kita menggunakan materila maka yang di import
// adalah package material
import 'package:flutter/material.dart';
import 'dart:async';
// import dio untuk http client
import 'package:dio/dio.dart';
// import shareds.dart agar kita dapat menggunakan data yang ada
// pada shared_value contohnya adalah di snin saya menggunakan costum color
// yang di simpan pada shared_value.dart
import 'package:covid19_indonesia/shareds/shareds.dart';
// import data json yang sudah di convert kedalam dart
import 'package:covid19_indonesia/models/kasus_indonesia.dart';

// part untuk masing-masing file
part 'home.dart';
part 'splash.dart';
