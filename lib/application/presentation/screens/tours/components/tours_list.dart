import 'package:flutter/material.dart';
import 'package:welcome_tours/application/domain/models/tour_category.dart';
import 'package:welcome_tours/application/presentation/screens/tours/components/tour_card.dart';
import 'package:welcome_tours/application/presentation/screens/tours/components/tours_carousel.dart';

class ToursListWidget extends StatelessWidget {
  final TourCategory tourCategory;

  const ToursListWidget({super.key, required this.tourCategory});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          ToursCarousel(tourCategories: [tourCategory]),
          SizedBox(height: 12),
          ..._tourList(),
        ],
      ),
    );
  }

  List<Widget> _tourList() {
    return List.generate(
      tourCategory.tours?.length ?? 0,
      (idx) => Padding(
        padding: const EdgeInsets.only(bottom: 17, left: 16, right: 16),
        child: SizedBox(
          height: 133,
          child: TourCard.horizontal(
            tour: tourCategory.tours![idx],
            tourCategory: tourCategory,
          ),
        ),
      ),
    );
  }
}
