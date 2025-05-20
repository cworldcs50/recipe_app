import 'package:flutter/material.dart';

class CustomContinueButton extends StatelessWidget {
  const CustomContinueButton({
    required this.onPressed,
    required this.btnTitle,
    required this.btnColor,
    super.key,
  });

  final void Function() onPressed;
  final String btnTitle;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
        minimumSize: WidgetStateProperty.all(const Size(220, 50)),
        backgroundColor: WidgetStateProperty.all(btnColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        ),
        textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 25)),
      ),
      onPressed: onPressed,
      child: Text(btnTitle, style: const TextStyle(color: Colors.white)),
    );
  }
}
