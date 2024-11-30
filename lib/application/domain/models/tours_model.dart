import 'package:json_annotation/json_annotation.dart';
import 'package:welcome_tours/application/domain/models/tour_category.dart';

part 'tours_model.g.dart';

@JsonSerializable()
class ToursModel {
  List<TourCategory>? data;

  ToursModel({
    this.data,
  });

  factory ToursModel.fromJson(Map<String, dynamic> json) => _$ToursModelFromJson(json);
}
