import 'package:flutter/material.dart';
import 'package:notion_barber/utils/constants/image_string.dart';
import 'package:notion_barber/utils/constants/sizes.dart';
import 'package:notion_barber/utils/constants/text_string.dart';
import 'package:notion_barber/utils/helpers/helper_function.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: AppHelperFunctions.screenWidth() * 0.8,
                    height: AppHelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(ImagensApp.OnboardingImage1),
                  ),
                  Text(
                    TextoApp.onBoardingTitle1, 
                    style: Theme.of(context).textTheme.headlineMedium, 
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TamanhosApp.espacoEntreItens,),
                  Text(
                    TextoApp.onBoardinSubTitle1, 
                    style: Theme.of(context).textTheme.bodyMedium, 
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
