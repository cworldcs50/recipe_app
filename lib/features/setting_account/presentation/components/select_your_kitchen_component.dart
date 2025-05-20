import 'custom_continue_button.dart';
import 'package:flutter/material.dart';
import 'custom_kitchen_grid_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../views/selecting_categories_view.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/theme/app_colors/app_dark_colors.dart';
import '../../../../core/theme/app_colors/app_light_colors.dart';
import 'package:recipe_app/core/services/sevice_locator/app_module.dart';
import '../controllers/select_your_kitchen_bloc/select_your_country_bloc.dart';
import '../controllers/select_your_kitchen_bloc/select_your_country_event.dart';

class SelectYourKitchenComponent extends StatelessWidget {
  const SelectYourKitchenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectYourCountryBloc, bool>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Text(
                AppConstants.kSettingUpYourKitchen,
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
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 130.0),
              child: Text(
                AppConstants.kSelectYourPrefrences,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppDarkColors.kPurpleColor,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomKitchenGridComponent(
                  choosedKitchen: state,
                  onTap:
                      () =>
                          sl<SelectYourCountryBloc>()
                            ..add(const SelectYourCountryEvent()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: AbsorbPointer(
                absorbing: !state,
                child: CustomContinueButton(
                  btnColor:
                      state
                          ? AppDarkColors.kPurpleColor
                          : AppDarkColors.kPurpleColor.withValues(alpha: 0.7),
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectingCategoriesView(),
                        ),
                      ),
                  btnTitle: AppConstants.kContinue,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
