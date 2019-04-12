import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class AppConfig extends InheritedWidget{
  final String appTitle;
  final String buildFlavor;
  final Widget child;

  AppConfig({
    @required this.child,
    @required this.appTitle,
    @required this.buildFlavor});

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}