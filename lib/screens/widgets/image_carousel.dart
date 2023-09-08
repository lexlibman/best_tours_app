import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key, required this.imageUrls});

  final List? imageUrls;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CarouselSlider(
            carouselController: _carouselController,
            items: widget.imageUrls?.map((imageUrl) {
              return Builder(builder: (BuildContext context) {
                return Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                );
              });
            }).toList(),
            options: CarouselOptions(
              enlargeFactor: 0,
              viewportFraction: 1,
              padEnds: false,
              aspectRatio: 1.3,
              enlargeCenterPage: true,
              autoPlay: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIndicator(0),
                buildIndicator(1),
                buildIndicator(2),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: 8.0,
      height: 8.0,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index
            ? Colors.black
            : _currentIndex == index + 1 || _currentIndex == index - 1
                ? Colors.black45
                : Colors.black12,
      ),
    );
  }
}
