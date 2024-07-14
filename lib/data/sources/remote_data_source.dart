// lib/data/sources/remote_data_source.dart

import 'package:http/http.dart' as http;
import 'dart:convert';

class RemoteDataSource {
  final http.Client client;

  RemoteDataSource(this.client);

  Future<Map<String, dynamic>> fetchProducts() async {
    final response =
        await client.get(Uri.parse('https://dummyjson.com/products#'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
