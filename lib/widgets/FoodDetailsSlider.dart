import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  String slideImage1;
  String slideImage2;
  String slideImage3;

  FoodDetailsSlider(
      {Key key,
      @required this.slideImage1,
      @required this.slideImage2,
      @required this.slideImage3})
      : super(key: key);

@override
Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Container(
      child: CarouselSlider(
        items: [
          Image.asset(
            slideImage1,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          // Можно добавить ещё слайды
          /*
          Image.asset(
            slideImage2,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Image.asset(
            slideImage3,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          */
        ],
        options: CarouselOptions(
          height: 200, // установи подходящую высоту
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 0.9,
        ),
      ),
    ),
  );
}

