/*
import 'package:app_3/layout/screens/get_started_screen.dart';
import 'package:app_3/utilities.dart';
import 'package:flutter/material.dart';
import '../widgets/basic_custom_button.dart';
import '../widgets/intro_slider.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            'Welcome!',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 500,
              child: CarouselSlider(
                items: <Widget>[
                  ///======================================================================================
                  /// Create An Automated CV   ... rafiki image
                  IntroSlider(
                    imageLink: 'assets/images/rafiki.png',
                    title: 'Create An Automated CV',
                    description:
                        'Our app helps you build an automated CV differently!',
                  ),

                  ///=====================================================================================
                  /// find your job ....bro image
                  IntroSlider(
                    imageLink: 'assets/images/bro.png',
                    title: 'Find Your Job',
                    description:
                        'It will also help you find a job remotely without recruiters.',
                  ),

                  ///======================================================================================
                  ///find Employess  ....business image
                  IntroSlider(
                    imageLink: 'assets/images/business.png',
                    title: 'Find Employees',
                    description: 'A Company Can Also Find Its Employees!',
                  ),

                  ///============================================================================================
                  ///Create a manual CV  ....rafikti image
                  IntroSlider(
                    imageLink: 'assets/images/rafikti.png',
                    title: 'Create A Manual CV',
                    description:
                        'Create your CV with yourself and customize it with any template that attracts you.',
                  ),
                ],
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: MediaQuery.of(context).size.height * 40 / 100),
              ),
            ),
         BasicCustomButton(text: 'Next', function: (){
           navigateTo(context: context, widget: const GetStartedScreen());
         })
          ],
        ),
      ),
    );
  }
}

*/
import 'package:app_3/layout/widgets/new_body.dart';
import 'package:app_3/size_config.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// you have to call it in the starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
