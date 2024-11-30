import 'package:json_annotation/json_annotation.dart';
import 'package:welcome_tours/application/domain/models/tour.dart';

part 'tour_category.g.dart';

@JsonSerializable()
class TourCategory {
  String? color;
  String? name;
  List<Tour>? tours;

  TourCategory({
    this.color,
    this.name,
    this.tours,
  });

  factory TourCategory.fromJson(Map<String, dynamic> json) => _$TourCategoryFromJson(json);
}
