import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/select_your_country_component.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/theme/app_colors/app_dark_colors.dart';
import '../../../../core/theme/app_colors/app_light_colors.dart';
import '../../../../core/services/sevice_locator/app_module.dart';
import '../controllers/select_your_country_bloc/select_you_country_bloc.dart';

class SelectingCountryView extends StatelessWidget {
  const SelectingCountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(right: 130.0),
              child: Text(
                AppConstants.kSelectYourCountry,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppDarkColors.kPurpleColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 360,
              child: TextField(
                cursorColor: AppDarkColors.kGreyColor,
                decoration: InputDecoration(
                  hintText: AppConstants.kEnterYourCoutrysName,
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.redAccent,
                    size: 50,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => sl<SelectYouCountryBloc>(),
                child: const SelectYourCountryComponent(),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
