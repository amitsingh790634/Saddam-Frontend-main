import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;

  OnboardingContents(
      {required this.title, required this.image,});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Now it’s easy to learn maths",
    image: "assets/images/math-book.png",
  ),
  OnboardingContents(
    title: "Earn money",
    image: "assets/images/money-bag.png",
  ),
];
