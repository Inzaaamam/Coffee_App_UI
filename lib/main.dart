import 'package:coffee/color.dart';
import 'package:coffee/splash_screen/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      DevicePreview(
      enabled: false,
      tools: const [
        ...DevicePreview.defaultTools,
        // DevicePreview.appBuilder,
      ],
      builder: (context) => const MyApp(),
    ));
   
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
        // scaffoldBackgroundColor: AppColurs.splashButton,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColurs.splashScreen),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
