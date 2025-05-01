import 'package:flutter/material.dart';

class CustomContinueWithButton extends StatelessWidget {
  const CustomContinueWithButton({
    required this.onTap,
    required this.buttonTitle,
    required this.imagePath,
    super.key,
  });

  final void Function() onTap;
  final String buttonTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 15, top: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          spacing: 2,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath, width: 50, height: 50),
            Text(
              buttonTitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
