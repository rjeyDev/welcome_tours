import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:welcome_tours/application/domain/models/tour_category.dart';
import 'package:welcome_tours/application/presentation/screens/tours/components/tour_card.dart';
import 'package:welcome_tours/application/presentation/screens/tours/components/tours_carousel.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_text_style.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_theme.dart';

import '../../../bloc/tour_bloc.dart';

class AllToursWidget extends StatelessWidget {
  const AllToursWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourBloc, TourState>(
      builder: (BuildContext context, state) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              ToursCarousel(
                tourCategories: state.tourCategories?.reversed.toList() ?? [],
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 133,
                  child: TourCard.horizontal(
                    tour: state.tourCategories!.last.tours!.first,
                    tourCategory: state.tourCategories!.last,
                  ),
                ),
              ),
              _nearbyTours(state.tourCategories!.first),
            ],
          ),
        );
      },
    );
  }

  _nearbyTours(TourCategory tourCategory) {
    return SizedBox(
      height: 317,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            top: 12,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                gradient: LinearGradient(
                  colors: [AppTheme.colorNearbyStoresGradient, AppTheme.white, AppTheme.white],
                  stops: [0, 0.45, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: -24,
            child: Image.asset(
              'assets/images/tree.png',
              width: 116,
            ),
          ),
          Positioned.fill(
            top: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 29),
                  child: Text(
                    'Nearby Tours 🔥',
                    style: AppTextStyle.s16w600PrimaryTextPoppins,
                  ),
                ),
                SizedBox(
                  height: 260,
                  child: PageView.builder(
                    controller: PageController(initialPage: 0, viewportFraction: 0.9),
                    pageSnapping: false,
                    itemCount: (tourCategory.tours!.length / 2).round(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 234,
                              child: TourCard.vertical(tour: tourCategory.tours![index * 2]),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: index * 2 + 1 <= tourCategory.tours!.length - 1
                                ? SizedBox(
                                    height: 234,
                                    child: TourCard.vertical(
                                      tour: tourCategory.tours![index * 2 + 1],
                                    ),
                                  )
                                : SizedBox(),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
