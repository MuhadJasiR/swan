import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  _CarouselSliderState createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSliderWidget> {
  final PageController _pageController = PageController(
    viewportFraction: 0.6,
    initialPage: 1, // Set the initial page to 1
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        child: PageView.builder(
          controller: _pageController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return carouselItem(index);
          },
        ),
      ),
    );
  }

  Widget carouselItem(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page!;
          value = (value * 0.50).clamp(-0.5, 0.5);
        }

        // Determine opacity for the text based on how close the item is to the center
        double opacity = (1 - (value.abs())).clamp(0.0, 1.0);

        return Transform.rotate(
          angle: value,
          child: carouselCard(index, opacity),
        );
      },
      child: carouselCard(index, 0), // Default opacity
    );
  }

  Widget carouselCard(int index, double opacity) {
    return Column(
      children: [
        Container(
          height: 230,
          width: 180,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(3, 3),
              ),
            ],
          ),
        ),
        Opacity(
          opacity: opacity,
          child: Column(
            children: const [
              Text("Furla 1927 L Tote"),
              Text(
                "OMR 75.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
