import 'package:flexmed/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SelectPatientToolButton extends StatelessWidget {
  const SelectPatientToolButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
