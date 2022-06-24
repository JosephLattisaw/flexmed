import 'package:flexmed/application_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    Key? key,
    this.body,
    required this.text,
  }) : super(key: key);

  final Widget? body;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: ApplicationBar(
          text: text,
        ),
      ),
      body: body,
    );
  }
}
