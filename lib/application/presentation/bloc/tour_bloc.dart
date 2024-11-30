import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcome_tours/application/domain/models/tour_category.dart';
import 'package:welcome_tours/application/domain/repositories/tour_repository.dart';

import '../../domain/enums/tour_action.dart';

part 'tour_bloc.freezed.dart';
part 'tour_event.dart';
part 'tour_state.dart';

class TourBloc extends Bloc<TourEvent, TourState> {
  TourRepository repository;
  TourBloc(this.repository) : super(TourState.initial()) {
    on<TourEvent>((event, emit) async {
      await event.when(
        getTours: () => _getTours(emit),
      );
    });
  }

  _getTours(Emitter emit) async {
    emit(state.copyWith(
      action: TourAction.getToursLoading,
      tourCategories: [],
    ));
    final ans = await repository.getTours();

    if (ans.textError.isNotEmpty) {
      emit(state.copyWith(
        textError: ans.textError,
        action: TourAction.getToursError,
      ));
    } else {
      emit(state.copyWith(
        tourCategories: ans.data,
        action: TourAction.getTours,
      ));
    }
  }
}
