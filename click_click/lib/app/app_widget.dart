import 'package:click_click/app/core/theme/app_theme.dart';
import 'package:click_click/app/data/boxes/boxes.dart';
import 'package:click_click/app/data/object_box.dart';
import 'package:click_click/app/module/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Click Click',
      theme: AppTheme.theme(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
