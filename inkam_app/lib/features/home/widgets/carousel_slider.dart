import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:inkam_app/constants/global_variables.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderTab extends StatefulWidget {
  CarouselSliderTab({super.key});

  @override
  State<CarouselSliderTab> createState() => _CarouselSliderTabState();
}

class _CarouselSliderTabState extends State<CarouselSliderTab> {
  int activeIndex = 0;

  final urlImages = [
    'https://images.unsplash.com/photo-1681419801930-d21a0c9aef77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1661956601031-4cf09efadfce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1681470712645-c9a77f35cf5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1681140029717-094dacd4b0f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: urlImages.length,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, realIdx) {
            return Center(
                child: Image.network(
              urlImages[index],
              fit: BoxFit.cover,
            ));
          },
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: const JumpingDotEffect(
          strokeWidth: 1,
          paintStyle: PaintingStyle.stroke,
          dotHeight: 10,
          dotWidth: 10,
          dotColor: GlobalVariables.blue),
    );
  }
}
