import 'package:e_com_app/features/authentication/screens/onboarding/widgets/onboarding_dot_nevigation.dart';
import 'package:e_com_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_com_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_com_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_com_app/utils/constants/colors.dart';
import 'package:e_com_app/utils/constants/image_strings.dart';
import 'package:e_com_app/utils/constants/sizes.dart';
import 'package:e_com_app/utils/device/device_utility.dart';
import 'package:e_com_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [

          ///horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.OnBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage3,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage2,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip button
          const OnBoardingSkip(),

          ///dot navigation  SmoothPageindicator

          const OnBoardingDotNavigation(),

          ///circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


