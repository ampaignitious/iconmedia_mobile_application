import 'dart:ui';

import 'package:collectionpoint/utils/app_layout.dart';
import 'package:collectionpoint/utils/app_styles.dart';
import 'package:collectionpoint/utils/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> categories;
  const TicketView({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 156, 121, 253),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${categories['category']}",
                        style: Styles.headLineStyle3,
                      ),
                      Spacer(),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: Builder(builder: (context) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  5,
                                  (index) => Text(
                                        "-",
                                        style: TextStyle(color: Colors.white),
                                      )),
                            );
                          }),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ])),
                      ThickContainer(),
                      Spacer(),
                      Text(
                        "All types",
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Adobe Experts",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "300,000",
                        style: Styles.headLineStyle3.copyWith(
                            color: Color.fromARGB(255, 236, 236, 236)),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Contact us",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                              color: Color.fromARGB(255, 236, 236, 236)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        direction: Axis.horizontal,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => Text(
                                  " - ",
                                  style: TextStyle(color: Colors.white),
                                )),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(18),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Photoshop",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rating: 6/10",
                          style:
                              Styles.headLineStyle4.copyWith(color: Colors.red),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Text(
                          "Animate",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rating: 4/10",
                          style:
                              Styles.headLineStyle4.copyWith(color: Colors.red),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Illustrator",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rating: 8/10",
                          style:
                              Styles.headLineStyle4.copyWith(color: Colors.red),
                        )
                      ],
                    )
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
