import 'package:flutter/cupertino.dart';

import '../../constants.dart';
import '../../size_config.dart';

class NewWelcomeContent extends StatelessWidget {
  const NewWelcomeContent({
    Key? key,
   required this.description,
    required this.imageLink,
    required this.title,
  }) : super(key: key);
  final String? title, description, imageLink;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 2,
        ),

        Spacer(),
        Image.asset(
          imageLink!,
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenHeight(300),
        ),
        Spacer(flex: 2,),
        Text(
          title!,textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Center(child: Text(description!)),
        Spacer(flex: 2,),
      ],
    );
  }
}
