import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_constants.dart';

class CustomInputFieldTitle extends StatelessWidget {
  const CustomInputFieldTitle({required this.inputFieldTitle, super.key});
  final String inputFieldTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          inputFieldTitle,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          AppConstants.kStar,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
