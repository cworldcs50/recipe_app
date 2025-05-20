import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/theme/app_colors/app_light_colors.dart';

class CustomKitchenCard extends StatelessWidget {
  const CustomKitchenCard({
    required this.choosedKitchen,
    required this.onTap,
    super.key,
  });

  final bool choosedKitchen;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
          color:
              choosedKitchen
                  ? AppLightColors.kKitchenCardColor
                  : AppLightColors.kKitchenCardColor.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ClipOval(
              child: Image.asset(
                AppConstants.kKitchenImagePath,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Indian",
              style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF103C4A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * SizedBox(
      width: 200,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomPaint(
            painter: CardWithBottomArcPainter(),
            child: Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
                bottom: 40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipOval(
                    child: Image.asset(
                      AppConstants.kKitchenImagePath,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Indian",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF103C4A),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  
 *  Positioned(
            bottom: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0XFF103C4A), Color(0XFF0DC0DE)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        
 */

class CardWithBottomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = AppLightColors.kKitchenCardColor
          ..style = PaintingStyle.fill;

    final Path path = Path();
    const double arcRadius = 20.0;

    path.moveTo(0, 0);
    path.lineTo(0, size.height - arcRadius);
    path.lineTo(size.width / 3 - arcRadius, size.height - arcRadius);

    path.arcToPoint(
      Offset(size.width / 2 + arcRadius, size.height - arcRadius),
      clockwise: true,
    );

    path.lineTo(size.width, size.height - arcRadius);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
