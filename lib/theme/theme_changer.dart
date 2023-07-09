// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class ThemeChanger extends StatefulWidget {
  final Widget Function(BuildContext context, Brightness brightness) builder;

  final Brightness defaultBrightness;

  const ThemeChanger(
      {super.key, required this.builder, required this.defaultBrightness});

  @override
  _ThemeChangerState createState() => _ThemeChangerState();

  static _ThemeChangerState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeChangerState>();
  }
}

class _ThemeChangerState extends State<ThemeChanger> {
  late Brightness brightness;

  @override
  void initState() {
    super.initState();
    brightness = widget.defaultBrightness;
    if (mounted) {
      setState(() {});
    }
  }

  void changeTheme() {
    setState(() {
      brightness =
          brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, brightness);
  }
}
