import 'package:e_com_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_com_app/features/authentication/screens/login/login.dart';
import 'package:e_com_app/utils/constants/image_strings.dart';
import 'package:e_com_app/utils/constants/sizes.dart';
import 'package:e_com_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                  image: AssetImage(TImages.email_verify),
                  width: THelperFunction.screenWidth() * 0.6),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Titale and subtitle
              Text(TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: TSizes.spaceBtwItems),
              Text('ecomapp@support.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTilte,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: TSizes.spaceBtwSections),

              ///button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() =>  SuccessScreen(
                            image: TImages.succes_account,
                            title: TTexts.AccountCreatedSuccessfully,
                        subtitle: TTexts.AccountSubTiletCreatedSuccessfully,
                        onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: Text(TTexts.tContinue))),
              SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: Text(TTexts.resendEamil))),
            ],
          ),
        ),
      ),
    );
  }
}
