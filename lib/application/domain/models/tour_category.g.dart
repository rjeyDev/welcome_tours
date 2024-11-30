// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TourCategory _$TourCategoryFromJson(Map<String, dynamic> json) => TourCategory(
      color: json['color'] as String?,
      name: json['name'] as String?,
      tours: (json['tours'] as List<dynamic>?)
          ?.map((e) => Tour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TourCategoryToJson(TourCategory instance) =>
    <String, dynamic>{
      'color': instance.color,
      'name': instance.name,
      'tours': instance.tours,
    };
