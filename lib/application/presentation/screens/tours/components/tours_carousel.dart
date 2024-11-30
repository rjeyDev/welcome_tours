import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_tours/application/domain/models/tour_category.dart';

import '../../../../../core/ui_kit/styles/app_text_style.dart';
import '../../../../../core/ui_kit/styles/app_theme.dart';
import '../../../../../core/utils/helpers.dart';
import '../../../../domain/models/tour.dart';

class ToursCarousel extends StatefulWidget {
  final List<TourCategory> tourCategories;

  const ToursCarousel({super.key, required this.tourCategories});

  @override
  _ToursCarouselState createState() => _ToursCarouselState();
}

class _ToursCarouselState extends State<ToursCarousel> {
  late final List<({Tour tour, String color})> tours;
  int activeCarouselItem = 0;

  @override
  void initState() {
    super.initState();
    _initializeTours();
  }

  void _initializeTours() {
    tours = [];
    for (var category in widget.tourCategories) {
      category.tours?.forEach((tour) {
        tours.add(
          (tour: tour, color: category.color ?? ''),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        SizedBox(
          height: 191,
          child: PageView.builder(
            controller: PageController(initialPage: (100 ~/ tours.length) * tours.length),
            onPageChanged: (value) => setState(() {
              activeCarouselItem = value % tours.length;
            }),
            allowImplicitScrolling: true,
            itemBuilder: (context, index) {
              var tourWithColor = tours[index % tours.length];
              return _carouselItem(tourWithColor);
            },
          ),
        ),
        const SizedBox(height: 12),
        _pageIndicator(),
      ],
    );
  }

  Widget _carouselItem(({Tour tour, String color}) tourWithColor) {
    final color = ColorHelper.fromString(tourWithColor.color);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 191,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: tourWithColor.tour.image ?? '',
                fit: BoxFit.cover,
                errorWidget: (context, value, _) => _errorWidget(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 29),
            decoration: _gradientDecoration(color),
            alignment: Alignment.centerLeft,
            child: _tourDetails(tourWithColor, color),
          ),
        ],
      ),
    );
  }

  Widget _errorWidget() {
    return Container(
      height: 191,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: AppTheme.colorSecondaryText.withOpacity(0.20),
      child: SvgPicture.asset('assets/images/logo.svg'),
    );
  }

  BoxDecoration _gradientDecoration(Color color) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          color,
          color.withOpacity(0.55),
          color.withOpacity(0),
          color.withOpacity(0),
        ],
        stops: const [0, 0.2, 0.6, 1],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }

  Widget _tourDetails(({Tour tour, String color}) tourWithColor, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${tourWithColor.tour.name ?? ''}\nTours',
          style: AppTextStyle.s18w500WhitePoppins,
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppTheme.white,
          ),
          child: Text(
            'Get It Now',
            style: AppTextStyle.s12w500DynamicPoppins(color: color),
          ),
        ),
      ],
    );
  }

  Widget _pageIndicator() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        tours.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: index == activeCarouselItem ? 12 : 4,
          height: 4,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: index == activeCarouselItem ? AppTheme.colorButtonText : AppTheme.gray,
          ),
        ),
      ),
    );
  }
}
