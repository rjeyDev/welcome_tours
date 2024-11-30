import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_tours/application/domain/enums/tour_action.dart';
import 'package:welcome_tours/application/presentation/screens/tours/components/category_tab.dart';
import 'package:welcome_tours/application/presentation/screens/tours/components/tours_list.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_theme.dart';
import 'package:welcome_tours/core/ui_kit/widgets/progress_indicator.dart';

import '../../bloc/tour_bloc.dart';
import 'components/all_tours.dart';
import 'components/error_widget.dart';

class ToursHomeScreen extends StatefulWidget {
  const ToursHomeScreen({super.key});

  @override
  State<ToursHomeScreen> createState() => _ToursHomeScreenState();
}

class _ToursHomeScreenState extends State<ToursHomeScreen> with TickerProviderStateMixin {
  int activeTourCategoryIndex = 0;
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 1, vsync: this, animationDuration: Duration(milliseconds: 100));
    context.read<TourBloc>().add(TourEvent.getTours());
    tabController.addListener(_tabControllerListener);
    super.initState();
  }

  _tabControllerListener() {
    setState(() {
      activeTourCategoryIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TourBloc, TourState>(
      listener: (context, state) {
        if (state.action == TourAction.getTours) {
          tabController = TabController(length: (state.tourCategories?.length ?? 0) + 1, vsync: this, animationDuration: Duration(milliseconds: 300));
          tabController.addListener(_tabControllerListener);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppTheme.white,
          body: Column(
            children: [
              _header(state),
              Expanded(
                child: state.action == TourAction.getToursLoading
                    ? CircularProgressInCenter()
                    : state.action == TourAction.getToursError
                        ? ToursErrorWidget(error: state.textError)
                        : TabBarView(
                            controller: tabController,
                            children: List.generate(
                              tabController.length,
                              (index) => RefreshIndicator(
                                onRefresh: () {
                                  context.read<TourBloc>().add(TourEvent.getTours());
                                  activeTourCategoryIndex = 0;
                                  return Future.microtask(() => null);
                                },
                                child: index == 0 ? AllToursWidget() : ToursListWidget(tourCategory: state.tourCategories![index - 1]),
                              ),
                            ),
                          ),
              ),
            ],
          ),
        );
      },
    );
  }

  _header(TourState state) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(colors: [
          AppTheme.blue,
          AppTheme.lightBlue,
        ]),
        image: DecorationImage(
          image: AssetImage('assets/images/header_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          SizedBox(height: 28),
          if (state.tourCategories != null && state.tourCategories!.isNotEmpty)
            SizedBox(
              height: 33,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 11),
                itemCount: (state.tourCategories?.length ?? -1) + 1,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      if (activeTourCategoryIndex != index) {
                        activeTourCategoryIndex = index;
                        tabController.animateTo(index);
                      }
                    });
                  },
                  child: CategoryTab(
                    text: index == 0 ? 'All tours' : state.tourCategories?[index - 1].name ?? '',
                    isActive: index == activeTourCategoryIndex,
                  ),
                ),
              ),
            ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
