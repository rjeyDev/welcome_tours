part of 'tour_bloc.dart';

@freezed
class TourState with _$TourState {
  const factory TourState({
    List<TourCategory>? tourCategories,
    required String textError,
    required TourAction action,
  }) = _TourState;

  factory TourState.initial() {
    return const TourState(
      textError: '',
      action: TourAction.getToursLoading,
    );
  }
}
