import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:propotypefltutter/homepage.dart';
import 'package:propotypefltutter/register_2.dart';
import 'package:propotypefltutter/showscreen.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const ShowScreen(),
    );
  }
}
