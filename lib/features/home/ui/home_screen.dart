import 'package:flutter/material.dart';
import 'package:mora/core/helpers/extentions.dart';
import 'package:mora/core/localization/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(context.localize.testMessage)));
  }
}
