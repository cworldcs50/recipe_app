import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/cache/caching_bloc/has_seen_on_boarding_bloc.dart';
import '../../../../core/cache/caching_bloc/has_seen_on_boarding_events.dart';
import '../../../../core/blocs/visibility_bloc/visibility_bloc.dart';
import '../../../../core/blocs/visibility_bloc/visibility_event.dart';
import '../../../../core/blocs/visibility_bloc/visibility_states.dart';
import '../../../../core/theme/app_colors/app_light_colors.dart';

class RememberMeComponent extends StatelessWidget {
  const RememberMeComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocSelector<VisibilityBloc, VisibilityBaseState, bool>(
      selector: (state) => state.rememberState,
      builder: (context, state) {
        return Checkbox.adaptive(
          value: state,
          activeColor: AppLightColors.kPrimaryColor,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onChanged: (value) {
            context.read<VisibilityBloc>().add(RememberMeVisibilityEvent());
            //for now but in the future we need to add credientials
            context.read<CachingBloc>().add(
              RememberMeEvent(rememberMe: value!),
            );
          },
        );
      },
    );
  }
}
