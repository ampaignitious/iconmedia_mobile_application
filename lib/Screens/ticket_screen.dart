import 'package:collectionpoint/utils/app_layout.dart';
import 'package:collectionpoint/utils/app_styles.dart';
import 'package:collectionpoint/widgets/double_text_widget.dart';
import 'package:collectionpoint/widgets/icon_text_widget.dart';
import 'package:collectionpoint/widgets/images_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ticketscreen extends StatelessWidget {
  const Ticketscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    width: 400,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 149, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Sample projects",
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -20,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 16,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Positioned(
                    left: -20,
                    bottom: -40,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 16,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 0.6, color: Color.fromARGB(255, 207, 201, 201)),
                ),
                child: Center(
                  child: Text(
                    "Photoshop designing",
                    style: Styles.headLineStyle2.copyWith(
                      color: Color.fromARGB(255, 207, 201, 201),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ImageSlider(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.8,
                    color: Colors.grey,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Illustrator designs",
                    style: Styles.headLineStyle2.copyWith(
                      color: Color.fromARGB(255, 207, 201, 201),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ImageSlider(),
              )
            ],
          )
        ],
      ),
    );
  }
}
