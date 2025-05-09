import 'package:e_com_app/common/styles/spacing_style.dart';
import 'package:e_com_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_com_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_com_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_com_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo,title & sub title
              const LoginHeader(),

              ///form
              const LoginForm(),

              ///Divider
              FormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
