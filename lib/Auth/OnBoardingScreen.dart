import 'package:bse25_34_fyp/Auth/SignIn.dart';
import 'package:bse25_34_fyp/Theme.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Your One-stop Gig Platform',
            body: 'Have all your tasks handled in a flash',
            image: buildImage('assets/Images/ob_1.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Get to connect with professionals to further your career',
            body:
                'Connect with people who may assist you on your career advancement journey',
            image: buildImage1('assets/Images/ob_2.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Secure Gig connections with prompt payments',
            body:
                'Transparent transactions where everyone wins and satisfactotily.',
            image: buildImage2('assets/Images/ob_3.png'),
            decoration: getPageDecoration(),
          ),
        ],
        done: const Text(
          'Done',
          style: TextStyle(
              fontWeight: FontWeight.w500, color: AppColors.primary),
        ),
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SignIn()));
        },
        next: const Icon(Icons.arrow_forward_ios, color: AppColors.primary),
        dotsDecorator: getdotdecorator(),
      ),
    );
  }

  Widget buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/Images/ob_1.png', width: width);
  }

  Widget buildImage1(String assetName, [double width = 350]) {
    return Image.asset('assets/Images/ob_2.png', width: width);
  }

  Widget buildImage2(String assetName, [double width = 350]) {
    return Image.asset('assets/Images/ob_3.png', width: width);
  }

  DotsDecorator getdotdecorator() => const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: AppColors.secondary,
        color: Color(0xFFBDBDBD),
        activeSize: Size(42.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        bodyTextStyle: TextStyle(fontSize: 15, color: Colors.grey),
        bodyPadding: EdgeInsets.all(16),
        imagePadding: EdgeInsets.all(24),
      );
}
