import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/tourismfirst.dart';
import 'package:project1/tourismsecond.dart';

import 'dummy_tour.dart';


void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context){
        return MaterialApp(
            routes: {
              "second": (context) => Tour2(),
            },

            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: Tour1  ());
      }));
}
