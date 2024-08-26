import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../utils/AppColors.dart';
class HomeScreen extends StatefulWidget {
  // HomeScreen({required this.statuscode});
  // final int statuscode;
  static String routeName = "/home";
  // late String sessionId;
  // HomeScreen({required this.sessionId});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  // final String sessionId;
  // _HomeScreenState(this.sessionId);
  //int status=statuscode;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kLightGrey,
        //drawer: NavigationDrawerWidget(),
        //appBar:PreferredSize(
        //  preferredSize:Size.fromHeight(Dimensions.height50),
        // child: AppBarWidget(),
        //),
        body: Text("HomePage"),
        //bottomNavigationBar:
      ),
    );
  }
}
