import 'package:fitness_gym_app/utils/constants.dart';
import 'package:fitness_gym_app/widgets/CalenderContainer.dart';
import 'package:fitness_gym_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  final List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  final List<int> date = [8, 9, 10, 11, 12, 13, 14];

  Scaffold buildMain(double width) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.redAccentColor,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(title: "Weekly Activity"),
              SizedBox(height: 20),
              buildWeekCalendar(),
              SizedBox(height: 10),
              TitleText(title: "Weekly Points"),
              SizedBox(height: 10),
              buildPointPart(width),
              SizedBox(height: 20),
              buildBottomPart()
            ],
          ),
        ),
      ),
    );
  }

  Container buildWeekCalendar() {
    return Container(
      height: 70,
      color: Colors.transparent,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: 20),
        itemBuilder: (BuildContext context, int index) {
          return CalenderContainer(
            date: date[index],
            day: "${days[index]}",
          );
        },
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Column buildPointPart(double width) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.greyColor,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 5,
          width: width,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.redAccentColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: width * 0.9 - 50,
                height: 5,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "1780 pts",
              style: TextStyle(color: AppColor.redAccentColor),
            ),
            Text(
              "2000 pts",
              style: TextStyle(color: AppColor.greyColor),
            ),
          ],
        )
      ],
    );
  }

  Expanded buildBottomPart() {
    return Expanded(
      child: ListView(physics: BouncingScrollPhysics(), children: [
        BottomContainer(
          image: "running.png",
          exerciseName: "Running",
          subTitle: "30",
          trailing: " min",
        ),
        SizedBox(height: 20),
        BottomContainer(
          image: "ball-exercise.png",
          exerciseName: "Ball Exercise",
          subTitle: "15 x",
        ),
        SizedBox(height: 20),
        BottomContainer(
          image: "planking.png",
          exerciseName: "Planking",
          subTitle: "5",
          trailing: " min",
        ),
        SizedBox(height: 20),
        BottomContainer(
          image: "push-up.png",
          exerciseName: "Push up",
          subTitle: "20 x",
        ),
        SizedBox(height: 20),
        BottomContainer(
          image: "push-up.png",
          exerciseName: "Push up",
          subTitle: "20 x",
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return buildMain(width);
  }
}

// Bottom Part Container class carrying details of exercise
// parent widget is container
// this has a height of 60
class BottomContainer extends StatelessWidget {
  final String image;
  final String exerciseName;
  final String subTitle;
  final String trailing;

  BottomContainer({
    this.image,
    this.exerciseName,
    this.subTitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.whiteColor,
                ),
                child: Image.asset(
                  "${ImagePath.path}" + image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exerciseName,
                    style: TextStyle(
                      color: AppColor.greyColor,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        subTitle,
                        style: TextStyle(
                          color: AppColor.redAccentColor,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        trailing ?? "",
                        style: TextStyle(
                          color: AppColor.greyColor,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.timer, color: AppColor.greyColor),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.save_alt, color: AppColor.greyColor),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.star, color: AppColor.greyColor),
            ],
          )
        ],
      ),
    );
  }
}
