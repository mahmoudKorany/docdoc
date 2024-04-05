import 'package:docdoc/core/helpers/extentions.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routs.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: ()
          {
            context.pushNamed(Routes.loginScreen);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )
            )
          ),
          child: Text('Get Started', style: TextStyles.font16WhiteMedium,),
        ),
      ],
    );
  }
}
