// lib/data/repositories/product_repository.dart

import '../models/product_model.dart';
import '../sources/remote_data_source.dart';

class ProductRepository {
  final RemoteDataSource remoteDataSource;

  ProductRepository(this.remoteDataSource);

  Future<List<Product>> getProducts() async {
    final response = await remoteDataSource.fetchProducts();
    return (response['data'] as List)
        .map((json) => Product.fromJson(json))
        .toList();
  }
}
