import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors/app_dark_colors.dart';
import '../../../../core/theme/app_colors/app_light_colors.dart';
import '../../../../core/utils/constants/app_constants.dart';

class SelectingCountryView extends StatelessWidget {
  const SelectingCountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Text(
              AppConstants.kSettingUpYourKitchen,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? AppLightColors.kSloganColor
                          : AppDarkColors.kGoldColor,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Text(
              AppConstants.kSelectYourCountry,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppDarkColors.kPurpleColor,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SearchAnchor(
              suggestionsBuilder: (context, searchController) {
                return [
                  CheckboxListTile(
                    value: true,
                    onChanged: (value) {},
                    title: const Text(
                      "Argentina",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ];
              },
              builder: (context, controller) {
                return TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: AppConstants.kEnterYourCoutrysName,
                    suffixIcon: const Icon(
                      Icons.search,
                      color: AppDarkColors.kPurpleColor,
                      size: 55,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
