import 'package:e_com_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ///headings
              Text(
                TTexts.forgetPassTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.forgetSubPassTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems * 2),

              ///text flied

              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems * 2),

              ///submit button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.off(() => const ResetPassword()),
                      child: const Text(TTexts.submit))),
            ])));
  }
}
