import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    this.suffixIcon,
    required this.validator,
    this.obsecureText = false,
    super.key,
  });

  final String hintText;
  final IconButton? suffixIcon;
  final String? Function(String? input) validator;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: TextFormField(
        obscureText: obsecureText,
        validator: validator,
        decoration: InputDecoration(hintText: hintText, suffixIcon: suffixIcon),
      ),
    );
  }
}
