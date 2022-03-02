import 'package:app_3/constants.dart';
import 'package:app_3/size_config.dart';
import 'package:flutter/material.dart';

import 'new_welcome_content_widget.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;


  List<Map> welcomeData = [


    ///============================================
    /// Create An Automated CV   ... rafiki image
    {
      "title": "Create An Automated CV",
      "description": "Our app helps you build an automated CV differently!",
      "image": "assets/images/rafiki.png"
    },

    ///=====================================================================================
    /// find your job ....bro image

    {
      "title": 'Find Your Job',
      "description":
          "It will also help you find a job remotely without recruiters.",
      "image": "assets/images/bro.png"
    },

    ///======================================================================================
    ///find Employess  ....business image

    {
      "title": "Find Employees",
      "description": "A Company Can Also Find Its Employees!",
      "image": "assets/images/business.png"
    },


    ///============================================================================================
    ///Create a manual CV  ....rafikti image

    {
      "title": "Create A Manual CV",
      "description": "Create your CV with yourself and customize it with any template that attracts you.",
      "image": "assets/images/rafikti.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.amber,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: welcomeData.length,
                  itemBuilder: (context, index) => NewWelcomeContent(
                    title: welcomeData[index]['title'],
                    description: welcomeData[index]['description'],
                    imageLink: welcomeData[index]['image'],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        welcomeData.length,
                        (index) => buildDot(
                          index: index,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(

                        ///button is here
                        ///
                        ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.grey : kPrimaryColor,
          borderRadius: BorderRadius.circular(3)),
      duration: kAnimationDuration,
    );
  }
}
