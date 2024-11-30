import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/ui_kit/styles/app_text_style.dart';
import '../../../../../core/ui_kit/styles/app_theme.dart';
import '../../../bloc/tour_bloc.dart';

class ToursErrorWidget extends StatelessWidget {
  final String error;
  const ToursErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            error,
            style: AppTextStyle.s16w500SecondaryTextPoppins,
          ),
          SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              context.read<TourBloc>().add(TourEvent.getTours());
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9.5),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppTheme.colorPrimary,
              ),
              alignment: Alignment.center,
              child: Text(
                'Try again',
                style: AppTextStyle.s11w600ButtonTextInter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
