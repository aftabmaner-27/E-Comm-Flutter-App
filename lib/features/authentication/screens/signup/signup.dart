import 'package:e_com_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_com_app/utils/constants/colors.dart';
import 'package:e_com_app/utils/constants/text_strings.dart';
import 'package:e_com_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../login/login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Title

                Text(TTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Form

                signup_form(),

                ///Divider
                FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

                const SizedBox(height: TSizes.spaceBtwSections),

                ///footer
                const SocialButtons(),
              ],
            ),
          ),
        ));
  }
}


