import 'package:collectionpoint/utils/app_layout.dart';
import 'package:collectionpoint/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 400,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Color(0xFF687daf),
          boxShadow: [BoxShadow(color: Colors.grey)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 80, 109, 202),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/${hotel['image']}")))),
          SizedBox(
            height: 10,
          ),
          Text(
            "Created",
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          Text(
            "${hotel['created']}",
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
