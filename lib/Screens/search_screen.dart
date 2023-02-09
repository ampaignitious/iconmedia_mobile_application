import 'package:collectionpoint/utils/app_layout.dart';
import 'package:collectionpoint/utils/app_styles.dart';
import 'package:collectionpoint/widgets/double_text_widget.dart';
import 'package:collectionpoint/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "what are \nyou looking for",
            style: Styles.headLineStyle1.copyWith(
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Color.fromARGB(255, 202, 201, 201),
                  ),
                  width: size.width * 0.44,
                  child: Center(
                      child: Text(
                    "Category",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(50)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  width: size.width * 0.44,
                  child: Center(
                      child: Text(
                    "Sample designs",
                    style: TextStyle(color: Color.fromARGB(255, 170, 170, 170)),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // adding a widget
          AppIconText(
              icon: Icons.timer, text: "Working Hours  8:00a m - 5:30 pm"),
          SizedBox(
            height: 14,
          ),
          AppIconText(
              icon: Icons.date_range_outlined, text: "Working dates Mon - Fri"),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 33, 72, 243),
            ),
            child: Center(
                child: Text(
              "Contact Us",
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          //
          AppDoubleTextWidget(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 350,
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/embedded.png"))),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Solving the \nenvironmental\nchallenges",
                      style: Styles.headLineStyle2.copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Using sensors\n To read the\nEnvironment",
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Date\nBefore March",
                              style: Styles.headLineStyle4.copyWith(
                                  color: Color.fromARGB(255, 230, 182, 215)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -45,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 18, color: Colors.white),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    height: 185,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Show support",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 25),
                          ),
                          TextSpan(
                            text: '😜',
                            style: TextStyle(fontSize: 45),
                          ),
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 25),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
