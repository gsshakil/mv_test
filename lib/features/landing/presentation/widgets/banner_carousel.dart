import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/features/landing/domain/entities/banner_entity.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({required this.bannerData, super.key});
  final List<BannerEntity> bannerData;

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 0.9,
                  autoPlay: false,
                  aspectRatio: 2.0,
                  scrollPhysics: const BouncingScrollPhysics(),
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: widget.bannerData
                  .map((item) => _buildCarouselItem(item, context))
                  .toList(),
            ),
          ),
          _buildIndicators(context),
        ],
      ),
    );
  }

  Container _buildCarouselItem(BannerEntity item, BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: item.bgColor, borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Positioned(
            bottom: -20,
            right: 20,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Image.asset(item.bgImagePath)),
          ),
          _buildText(item, context),
        ],
      ),
    );
  }

  Row _buildIndicators(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.bannerData.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: _current == entry.key ? 25 : 6.0,
            height: 6.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
                borderRadius: _current == entry.key
                    ? BorderRadius.circular(5)
                    : BorderRadius.circular(12),
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : const Color.fromARGB(255, 85, 85, 85))
                    .withOpacity(_current == entry.key ? 0.9 : 0.4)),
          ),
        );
      }).toList(),
    );
  }

  Padding _buildText(BannerEntity item, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                      height: 1.2,
                    ),
              ).padding(bottom: 8),
              Text(
                item.subTitle,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ).padding(bottom: 15),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 12,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Text(
                item.buttonText,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
