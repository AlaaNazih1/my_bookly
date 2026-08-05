import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_bookly/core/utils/api_service.dart';
import 'package:my_bookly/features/home/data/repos/home_repo_impl.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(
        Dio(),
      ));
  getIt.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl(getIt.get<ApiService>()));
}