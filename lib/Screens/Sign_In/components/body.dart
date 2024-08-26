import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/AppColors.dart';
import '../../../utils/constants.dart';
import '../../../widgets/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  String phone="";
  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    print("**********");
    print(countryController.text);
    super.initState();
  }
  bool _filled = false;
  String _errorMsg = "";

  // Future<String?> checkPhoneNumberExists(String phoneNumber) async {
  //   final http.Response response = await http.get(Uri.parse(UrlConstant.checkPhoneNumber.replaceAll("{phoneNumber}", phoneNumber)));
  //   // .then((http.Response response2) {
  //   //   if (response.statusCode == 200){
  //   //   String sessionId = response.headers['set-cookie'].split('; ')[0];
  //   //   String customHeader = response.headers['custom-header'];
  //   //   // do something with the session ID and custom header}
  //   // });;
  //   //var cookie="";
  //   print(response.statusCode);
  //   if (response.statusCode == 200) {
  //     print(response.headers);
  //     var responseBody = jsonDecode(response.body);
  //     var value = responseBody["apiErrorCode"];
  //     //cookie = responseBody["sessionId"];
  //     if(value != 1100) {
  //       final String cookieHeader = response.headers['set-cookie'].toString();
  //       if (cookieHeader != null) {
  //         final String sessionId = cookieHeader.split('=')[1];
  //         print(sessionId);
  //         return sessionId;
  //       }
  //     }
  //     else{
  //       print("phone no doesnot exist");
  //       return "";
  //     }
  //   } else {
  //     // Error response
  //     print('Login for phone number ${phoneNumber} failed with error code ${response.statusCode}');
  //     return "";
  //   }
  // }
  // //validator function
  Future<void> validatePhoneNumber(BuildContext ctx) async{
    print(MediaQuery.of(context).size.height);
    // setState(() {
    //   _filled=true;
    //   _errorMsg="";
    // });
    // if(CommonUtils.isNullOrBlank(phoneNumberController.text ) || phone.length<10){
    //   setState(() {
    //     _filled=false;
    //     _errorMsg="Please enter valid phone number!";
    //   });
    // }
    // else{
    //   String? sessionId = await checkPhoneNumberExists(phoneNumberController.text);
    //   if(sessionId != ""){
    //     _errorMsg="";
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(phoneNumber: phoneNumberController.text,countryCode: countryController.text,sessionId:sessionId!)));
    //   }
    //   else{
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(phoneNumber: phoneNumberController.text,)));
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kLightGrey,
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight/46.25,left:screenWidth/21.176,right:screenWidth/21.176), //top60,left=right=20
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: screenHeight/2.5635, //height350
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(screenWidth/42.35),  //width10
                  image:DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Boxes.jpg")
                  )),
            ),
            SizedBox(
              height: screenHeight/46.25, //height20
            ),
            Center(
              child: AutoSizeText(
                "Login",
                minFontSize: 20,
                style: kH1Heading,
              ),
            ),
            SizedBox(
              height: screenHeight/89.72, //height10
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176),
              child: AutoSizeText(
                "Enter your mobile number to get started and grab your first meal free.",
                style: kH2Heading,
                minFontSize: 12,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: screenHeight/20.83, //height30
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176,),
            //   child: Container(
            //     height: screenHeight/16.313,  //height55
            //     decoration: BoxDecoration(
            //       // border: Border.all(width: 1, color: Colors.white),
            //       borderRadius: BorderRadius.circular(screenWidth/42.352),
            //       color: kWhiteColor,
            //     ),
            //     child: Padding(
            //       padding: EdgeInsets.only(bottom:screenHeight/89.72,top: screenHeight/89.72), //height10
            //       child: Row(
            //         // mainAxisAlignment: MainAxisAlignment.start,
            //         // crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: screenWidth/43.352,
            //           ),
            //           SizedBox(
            //               width: screenWidth/14.11, //width30
            //               child: AutoSizeText("+91",style: kH2Heading,)
            //           ),
            //           SizedBox(
            //             width: screenWidth/105.88/2,//width2
            //             // child: Container(
            //             //   color: KDarkGrey,),
            //           ),
            //           Expanded(
            //             child: TextField(
            //               style:  kH2Heading,
            //               cursorColor: kBlackColor,
            //               controller: phoneNumberController,
            //               maxLength: 10,
            //               onChanged: (value)
            //               {
            //                 phone=value;
            //                 print(phone);
            //               },
            //               // validator: (value) {
            //               //   if (value.length != 10) {
            //               //     return 'Please enter a valid 10-digit phone number';
            //               //   }
            //               //   return null;
            //               // },
            //               // keyboardType: TextInputType.phone,
            //               decoration: InputDecoration(
            //                 contentPadding: EdgeInsets.only(left:screenWidth/42.35,bottom: screenHeight/93.464), //left10 bottom9.6
            //                 enabledBorder:InputBorder.none,
            //                 //border: InputBorder.none,
            //                 focusedBorder: InputBorder.none,
            //                 counterText: "",
            //                 border: InputBorder.none,
            //                 hintText: "Enter your phone number",
            //                 hintStyle: kH2Heading,
            //               ),
            //
            //               keyboardType: TextInputType.number, // set the keyboard type to number
            //               inputFormatters: [
            //                 FilteringTextInputFormatter.digitsOnly
            //               ],
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 21.176),
              child: Container(
                height: screenHeight / 16.313, // height55
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth / 42.352),
                  color: kWhiteColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight / 89.72), // height10
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center, // Ensure vertical alignment
                    children: [
                      SizedBox(
                        width: screenWidth / 43.352,
                      ),
                      // AutoSizeText(
                      //   "+91",
                      //   style: kH2Heading,
                      // ),
                      SizedBox(width: screenWidth / 42.352),
                      Expanded(
                        child: TextField(
                          style: kH2Heading,
                          cursorColor: kBlackColor,
                          controller: phoneNumberController,
                          maxLength: 10,
                          onChanged: (value) {
                            phone = value;
                            print(phone);
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: screenWidth / 42.35, bottom: screenHeight / 93.464), // left10 bottom9.6
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            counterText: "",
                            hintText: "Enter your phone number",
                            hintStyle: kH2Heading,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height:screenHeight/224.31,),//height4
            Padding(
              padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  _errorMsg,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight/20.83, //height30
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176),
              child: DefaultButton(
                text: 'Login',
                press:
                    ()=>validatePhoneNumber(context),
              ),
            ),
            SizedBox(
              height: screenHeight/89.725, //height10
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
              child: Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Color(0xFF808080),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Or continue with",
                      style: kB1BodyText,
                    ),
                  ),
                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Color(0xFF808080),
                  )),
                ],
              ),
            ),
            // AutoSizeText(
            //   "or continue with Google or Apple",
            //   style: kB1BodyText,),
            SizedBox(
              height: 10, //height20
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginWith(imageUrl: 'assets/images/google_logo.png',),
                SizedBox(
                  width: screenWidth/21.176, //width20
                ),
                loginWith(imageUrl: 'assets/images/appleLogo.png'),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText("Not a member?"),
                SizedBox(width: 5,),
                Text("Register Now"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
class loginWith extends StatelessWidget {
  const loginWith({
    required this.imageUrl,
  });

  final String imageUrl;
  //final double screenHeight;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){},
      child: Container(
        width:screenWidth/10.588, //width40
        height:screenHeight/22.431, //height40
        decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(width: 1, color: kWhiteColor),
          borderRadius: BorderRadius.circular(screenWidth/42.35),
        ),
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/84.745,right: screenWidth/84.745,top: screenHeight/179.450,bottom: screenHeight/179.450),
          child: Center(child: Image(image: AssetImage(imageUrl))),
        ),
      ),
    );
  }
}


