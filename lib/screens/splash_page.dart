import 'package:fitness_gym_app/screens/homepage.dart';
import 'package:fitness_gym_app/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  // SignUp-login Button
  InkWell buildbuttonContainer({Color buttonColor, String title, context}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        width: 120,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("${ImagePath.path}page-1-background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                "${ImagePath.path}lock.png",
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "FLASH",
              style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 30,
                fontFamily: 'Jungle-Fever',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "GYM",
              style: TextStyle(
                color: AppColor.redAccentColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Get in shape quickly",
              style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            buildbuttonContainer(
              buttonColor: AppColor.redAccentColor,
              title: "Sign Up",
              context: context,
            ),
            SizedBox(
              height: 20,
            ),
            buildbuttonContainer(
              buttonColor: AppColor.greyColor.withOpacity(0.5),
              title: "Login",
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
