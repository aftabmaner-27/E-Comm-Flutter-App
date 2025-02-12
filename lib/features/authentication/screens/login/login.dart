import 'package:e_com_app/common/styles/spacing_style.dart';
import 'package:e_com_app/utils/constants/image_strings.dart';
import 'package:e_com_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo,title & sub title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
