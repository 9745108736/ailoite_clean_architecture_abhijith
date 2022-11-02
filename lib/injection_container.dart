import 'package:flutter_task/features/rum_list/data/repostories/rum_repository_impl.dart';
import 'package:get_it/get_it.dart';

import 'features/rum_list/data/data_source/rum_list_remote_data_source.dart';
import 'features/rum_list/domain/repositories/rum_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<RumListDataSource>(
    () => RumListDataSourceImpl(dio: sl()),
  );

//repository
  sl.registerLazySingleton<RumRepository>(
    () => RumRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );
}
