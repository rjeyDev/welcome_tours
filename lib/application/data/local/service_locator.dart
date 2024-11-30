import 'package:get_it/get_it.dart';

import '../../domain/repositories/tour_repository.dart';
import '../remote/api/http_service.dart';
import '../remote/repositories/tour_repo_impl.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerSingleton<HttpService>(HttpService());

  serviceLocator.registerSingleton<TourRepository>(TourRepositoryImpl(serviceLocator.get<HttpService>()));
}
