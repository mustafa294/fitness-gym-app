import 'package:fitness_gym_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  buildMain() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("${ImagePath.path}page-2-background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildGreeting(),
          buildTitle(),
          buildActivityHeader(),
          buildActivityPart()
        ],
      ),
    );
  }

  Container buildGreeting() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello",
            style: TextStyle(
              color: AppColor.whiteColor,
              fontSize: 15,
            ),
          ),
          Text(
            "Amanda",
            style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Container buildTitle() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "How are you doing?",
        style: TextStyle(
          color: AppColor.redAccentColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  buildActivityHeader() {
    return Container(
      child: Text(
        "Daily activity",
        style: TextStyle(
          color: AppColor.whiteColor,
          fontSize: 18,
        ),
      ),
    );
  }

  buildActivityPart() {
    return Expanded(
      child: ListView(
        children: [
          buildActivityContainer(3680, "steps", "foot.png"),
          buildActivityContainer(90, "bpm", "foot.png"),
          buildActivityContainer(960, "calories", "foot.png"),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "GOOD",
                      style: TextStyle(
                        color: AppColor.redAccentColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Performance",
                      style: TextStyle(
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  child: VerticalDivider(
                    thickness: 2,
                    color: AppColor.greyColor,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star, color: AppColor.redAccentColor),
                      Icon(Icons.star, color: AppColor.redAccentColor),
                      Icon(Icons.star, color: AppColor.redAccentColor),
                      Icon(Icons.star, color: AppColor.redAccentColor),
                      Icon(Icons.star, color: AppColor.greyColor),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildActivityContainer(int value, String title, String image) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value.toString(),
                style: TextStyle(
                  color: AppColor.redAccentColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                title,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 90,
            child: Container(child: Image.asset("${ImagePath.path}tower.png")),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 30,
            height: 30,
            child: Image.asset("${ImagePath.path}$image"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildMain(),
      ),
    );
  }
}
