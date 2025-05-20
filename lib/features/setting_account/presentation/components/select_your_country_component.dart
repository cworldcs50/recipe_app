import '../views/selecting_kitchen_view.dart';
import 'custom_continue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/theme/app_colors/app_dark_colors.dart';
import '../controllers/select_your_country_bloc/select_you_country_bloc.dart';

class SelectYourCountryComponent extends StatelessWidget {
  const SelectYourCountryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectYouCountryBloc, bool>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder:
                    (context, index) => const Divider(
                      color: AppDarkColors.kPurpleColor,
                      endIndent: 33,
                      indent: 17,
                    ),
                itemBuilder: (context, index) {
                  return CustomCheckboxListTile(value: state, index: index);
                },
              ),
            ),
            AbsorbPointer(
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
                        builder: (context) => const SelectingKitchenView(),
                      ),
                    ),
                btnTitle: AppConstants.kContinue,
              ),
            ),
          ],
        );
      },
    );
  }
}

class CustomCheckboxListTile extends StatelessWidget {
  const CustomCheckboxListTile({
    super.key,
    required this.value,
    required this.index,
  });

  final bool value;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: AppDarkColors.kPurpleColor,
      checkColor: Colors.white,
      side: const BorderSide(color: AppDarkColors.kPurpleColor, width: 1.5),
      checkboxShape: RoundedRectangleBorder(
        side: const BorderSide(color: AppDarkColors.kPurpleColor),
        borderRadius: BorderRadius.circular(5),
      ),
      value: 10 - index == index,
      onChanged: (value) {
        context.read<SelectYouCountryBloc>().add(const SelectYouCountryEvent());
        value = this.value;
      },
      title: Text(
        "Egypt",
        style: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(color: AppDarkColors.kPurpleColor),
      ),
    );
  }
}
