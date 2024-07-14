// lib/di/di.dart

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:store/data/repository/products_repository.dart';
import 'di.config.dart';
import 'package:store/data/sources/remote_data_source.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String environment) =>
    getIt.init(environment: environment);

@module
abstract class RegisterModule {
  @lazySingleton
  RemoteDataSource get remoteDataSource => RemoteDataSource();

  @lazySingleton
  ProductRepository get productRepository =>
      ProductRepository(remoteDataSource);
}
