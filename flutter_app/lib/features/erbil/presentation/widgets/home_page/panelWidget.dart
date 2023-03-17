import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PanelWidget extends StatefulWidget {
  const PanelWidget({super.key});

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  final controller = CarouselController();
  int activateIndex = 0;
  final sliderImages = [
    'assets/s.jpg',
    'assets/s.jpg',
    'assets/s.jpg',
    'assets/s.jpg'
  ];
  Widget itemBuilder(p, n) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(18),
      splashColor: Colors.blue[900],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: Container(
          color: Colors.grey[200],
          child: Column(children: [
            Image.asset(
              p,
              fit: BoxFit.fill,
              width: w / 2.5,
              height: h / 6.3,
            ),
            Text(
              n,
              style: TextStyle(fontSize: h / 40, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }

  Widget builImage(String sliderImage, int index) => Container(
        color: Colors.grey,
        child: Image.asset(
          sliderImage,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      );
  void animateToSlide(int index) => controller.animateToPage(index);
  Widget buildIndicator() {
    final h = MediaQuery.of(context).size.height;
    return AnimatedSmoothIndicator(
      activeIndex: activateIndex,
      count: sliderImages.length,
      effect: SwapEffect(
          dotHeight: (h / 65), dotWidth: (h / 65), activeDotColor: Colors.cyan),
      onDotClicked: animateToSlide,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(children: [
        CarouselSlider.builder(
            carouselController: controller,
            itemCount: sliderImages.length,
            itemBuilder: (context, index, realIndex) {
              final sliderImage = sliderImages[index];
              return builImage(sliderImage, index);
            },
            options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: ((index, reason) =>
                    setState(() => activateIndex = index)),
                autoPlayInterval: Duration(seconds: 2))),
        Positioned(top: 170, left: 150, child: buildIndicator()),
      ]),
    );
  }
}
