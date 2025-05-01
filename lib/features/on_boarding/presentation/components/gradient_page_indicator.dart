import 'package:flutter/material.dart';

class GradientPageIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;
  final double width;
  final double height;

  const GradientPageIndicator({
    required this.count,
    required this.currentIndex,
    this.width = 35,
    this.height = 8,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: index == currentIndex ? null : const Color(0XFFD9D9D9),
            gradient:
                index == currentIndex
                    ? const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFFFA9BB1), Color(0XFFF8C89A)],
                    )
                    : null,
          ),
        );
      }),
    );
  }
}
