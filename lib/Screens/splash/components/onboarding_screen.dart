import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin_version1/Screens/authentication_screen/authentication_screen.dart';


import '../../../utils/AppColors.dart';
import '../../../utils/constants.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/onboard_nav_btn.dart';
import '../../Sign_In/sign_in_screen.dart';
import 'onboarding_info.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage : 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
        //double screenHeight = MediaQuery.of(context).size.height;
    //double screenWidth = MediaQuery.of(context).size.width;
      margin: EdgeInsets.only(right: Dimensions.width8),
      duration: const Duration(milliseconds: 400),
      height: 8,
      width: 12,
      decoration: BoxDecoration(
        gradient: currentPage == index ? kPrimaryGradientColor : kBlackGradientColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10)

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double sizeH = Dimensions.blockSizeH;
    double sizeV = Dimensions.blockSizeV;
    //print(sizeH);
    return Scaffold(
      backgroundColor: kWhiteColor,
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 21.176, vertical: screenHeight / 89.725), //top10,left=right=20
            child: Column(
              children:[
               Expanded(
                 flex: 9,
                    child:PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value){
                          setState(() {
                            currentPage = value;
                            });
                       },
                       itemCount: onboardingPages.length,
                       itemBuilder: (context,index) {
                         final OnboardingInfo page = onboardingPages[index];
                         final bool isEvenIndex = index % 2 == 0;
                         if (index % 2 == 0) {
                           return Column(
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SizedBox(height: screenHeight/44.862,), //height20
                                   index==4?OnBoardNavBtn(name: '', onPressed:(){}):OnBoardNavBtn(
                                     name: 'Skip',
                                     onPressed: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) => SignInScreen()));
                                     },
                                   ),
                                   SizedBox(
                                     height: screenHeight/7.47, //height120
                                   ),
                                   AutoSizeText(
                                     page.title,
                                     style: kH1Heading,
                                   ),
                                   SizedBox(
                                     height: screenHeight/89.725, //height10
                                   ),
                                   AutoSizeText(
                                     page.description,
                                     style: kH2Heading,
                                   ),
                                   Container(
                                     height: screenHeight/2.003, //height448
                                     child: Image.asset(
                                       page.imageAsset,
                                       //fit: BoxFit.contain,
                                       height: screenHeight/1.495,  //height600
                                       alignment: Alignment.topRight,
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           );
                         }
                         else {
                           return Column(
                             children: [
                               Column(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SizedBox(height: screenHeight/44.862,), //height20
                                   OnBoardNavBtn(
                                     name: 'Skip',
                                     onPressed: () {
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) => SignInScreen()));
                                     },
                                   ),
                                   SizedBox(
                                     height: screenHeight/22.431, //height40
                                   ),
                                   Container(
                                     height: screenHeight/2.003, //height448
                                     child: Image.asset(
                                       page.imageAsset,
                                       fit: BoxFit.contain,
                                     ),
                                   ),
                                   SizedBox(
                                     height: screenHeight/179.451, //height5
                                   ),
                                   AutoSizeText(
                                     page.title,
                                     style: kH1Heading,
                                   ),
                                   SizedBox(
                                     height: screenHeight/89.725, //height10
                                   ),
                                   AutoSizeText(
                                     page.description,
                                     style: kH2Heading,
                                   ),
                                   // SizedBox(
                                   //   height: sizeV * 5,
                                   // ),
                                 ],
                               ),
                             ],
                           );
                         }
                       }
                    ),
               ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      currentPage == onboardingPages.length - 1 ? DefaultButton(
                      text: 'Let\'s Get Started',
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AuthenticationScreen(),
                            ));
                        },
                      ) : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            onboardingPages.length,
                                (index) => dotIndicator(index),
                          ),
                        ),
                        MaterialButton(
                         onPressed: () {_pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut,);
                           },
                         //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
                          padding: EdgeInsets.only(right:0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.all(Radius.circular(screenWidth/4.23)),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                minWidth: screenWidth/7.058, //width60
                                minHeight: screenHeight/14.954, //height60
                              ), // min sizes for Material buttons
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: kWhiteColor,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
        ),
          ),
        ),
    );
  }
}


