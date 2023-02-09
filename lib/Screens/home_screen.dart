import 'package:collectionpoint/Screens/hotel_screen.dart';
import 'package:collectionpoint/Screens/ticket_view.dart';
import 'package:collectionpoint/utils/app_info_list.dart';
import 'package:collectionpoint/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "iconmedia",
                        style: Styles.headLineStyle1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Making it happen",
                        style: Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 90,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                        // image: DecorationImage(
                        //     fit: BoxFit.cover,
                        //     image: AssetImage("assets/images/image1.png")),
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 202, 196, 178),
                    ),
                    Text(
                      "search",
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service Categories",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Text(
                      "view all",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: categories
                  .map((categories) => TicketView(categories: categories))
                  .toList()),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sample designs",
                style: Styles.headLineStyle2,
              ),
              InkWell(
                onTap: () {
                  print("Tapped");
                },
                child: Text(
                  "view all",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: hotelList
                  .map((hotels) => HotelScreen(
                        hotel: hotels,
                      ))
                  .toList()),
        ),
      ]),
    );
  }
}
