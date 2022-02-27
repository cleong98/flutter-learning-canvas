import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_canvas/paper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // confirm initialize
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]); // make sure device is landscape
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,overlays: []);
  runApp(const Paper());
}
