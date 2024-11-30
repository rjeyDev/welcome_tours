// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToursModel _$ToursModelFromJson(Map<String, dynamic> json) => ToursModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TourCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ToursModelToJson(ToursModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
