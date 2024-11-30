import 'package:welcome_tours/application/data/remote/api/snapshot.dart';
import 'package:welcome_tours/application/data/remote/api/url_config.dart';
import 'package:welcome_tours/application/domain/repositories/tour_repository.dart';

import '../../../domain/models/tour_category.dart';
import '../api/http_response.dart';

class TourRepositoryImpl extends TourRepository {
  TourRepositoryImpl(super.service);

  @override
  Future<Snapshot<List<TourCategory>>> getTours() async {
    final result = await service.get(url: '${UrlConfig.rootUrl}/${UrlConfig.tours}');

    if (result is FailResponse) {
      return Snapshot(
        textError: result.statusMessage ?? 'Not Found',
      );
    }

    List<TourCategory> tours = [];

    result.data.forEach((json) {
      tours.add(TourCategory.fromJson(json));
    });

    return Snapshot(data: tours);
  }
}
