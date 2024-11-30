import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_tours/application/domain/models/tour_category.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_text_style.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_theme.dart';

import '../../../../../core/utils/helpers.dart';
import '../../../../domain/models/tour.dart';

class TourCard extends StatelessWidget {
  final Tour tour;
  final TourCategory? tourCategory;
  bool? isHorizontal;

  TourCard.horizontal({
    super.key,
    required this.tour,
    this.tourCategory,
  }) : isHorizontal = true;
  TourCard.vertical({
    super.key,
    required this.tour,
    this.tourCategory,
  }) : isHorizontal = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppTheme.colorCardBorder,
          ),
          boxShadow: [
            BoxShadow(
              color: AppTheme.colorCardShadow.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ]),
      child: isHorizontal ?? true ? _horizontalContent() : _verticalContent(),
    );
  }

  _horizontalContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _image(height: 113, width: 113),
        const SizedBox(width: 8),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _nameAndDescription(),
                    if (tourCategory != null && tourCategory?.name != null)
                      Container(
                        height: 27,
                        padding: EdgeInsets.symmetric(horizontal: 15.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: ColorHelper.fromString(tourCategory!.color),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          tourCategory!.name!,
                          style: AppTextStyle.s11w600DynamicInter(
                            color: ColorHelper.fromString(tourCategory!.color),
                          ),
                        ),
                      ),
                  ],
                ),
                _buyButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _verticalContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _image(height: 118),
        _nameAndDescription(),
        _buyButton(),
      ],
    );
  }

  _image({double? height, double? width}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl: tour.image ?? '',
        height: height,
        width: width,
        fit: BoxFit.cover,
        errorWidget: (context, value, _) {
          return Container(
            padding: EdgeInsets.all(16),
            color: AppTheme.colorSecondaryText.withOpacity(0.20),
            child: SvgPicture.asset('assets/images/logo.svg'),
          );
        },
        // errorWidget: ,
      ),
    );
  }

  _nameAndDescription() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tour.name ?? '',
            style: AppTextStyle.s16w600PrimaryTextPoppins,
          ),
          SizedBox(height: 4),
          Text(
            (tour.description ?? ''),
            textAlign: TextAlign.left,
            maxLines: 2,
            style: AppTextStyle.s10w400SecondaryTextPoppins,
          ),
        ],
      ),
    );
  }

  _buyButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppTheme.colorPrimary,
      ),
      alignment: Alignment.center,
      child: Text(
        '\$${tour.price?.simplify()}',
        style: AppTextStyle.s11w600ButtonTextInter,
      ),
    );
  }
}
