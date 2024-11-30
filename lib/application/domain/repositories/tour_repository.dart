import 'package:welcome_tours/application/domain/models/tour_category.dart';

import '../../data/remote/api/http_service.dart';
import '../../data/remote/api/snapshot.dart';

abstract class TourRepository {
  HttpService service;

  TourRepository(this.service);

  Future<Snapshot<List<TourCategory>>> getTours();
}
