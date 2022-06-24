import 'package:flexmed/application_bar.dart';
import 'package:flexmed/login_page.dart';
import 'package:flexmed/scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWidget(
      text: "Login Page",
      body: LoginPage(),
    );
  }
}
