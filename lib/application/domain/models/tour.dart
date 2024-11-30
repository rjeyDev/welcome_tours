import 'package:json_annotation/json_annotation.dart';

part 'tour.g.dart';

@JsonSerializable()
class Tour {
  String? name;
  String? image;
  String? description;
  double? price;

  Tour({
    this.name,
    this.image,
    this.description,
    this.price,
  });

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}
