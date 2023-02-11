import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180,
          height: 340,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/connect.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Created november",
                style: Styles.headLineStyle2
                    .copyWith(color: Color.fromARGB(255, 68, 63, 63)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "12th Feb, 2023",
                style: Styles.headLineStyle2.copyWith(
                  fontSize: 20,
                  color: Color.fromARGB(255, 223, 221, 221),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 340,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/beauty.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Created november",
                style: Styles.headLineStyle2
                    .copyWith(color: Color.fromARGB(255, 68, 63, 63)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "12th Feb, 2023",
                style: Styles.headLineStyle2.copyWith(
                  fontSize: 20,
                  color: Color.fromARGB(255, 223, 221, 221),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 340,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/theman.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Created november",
                style: Styles.headLineStyle2
                    .copyWith(color: Color.fromARGB(255, 68, 63, 63)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "12th Feb, 2023",
                style: Styles.headLineStyle2.copyWith(
                  fontSize: 20,
                  color: Color.fromARGB(255, 223, 221, 221),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 340,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/beauty.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Created november",
                style: Styles.headLineStyle2
                    .copyWith(color: Color.fromARGB(255, 68, 63, 63)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "12th Feb, 2023",
                style: Styles.headLineStyle2.copyWith(
                  fontSize: 20,
                  color: Color.fromARGB(255, 223, 221, 221),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
