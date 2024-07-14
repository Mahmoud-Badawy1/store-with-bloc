// lib/pages/home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/bloc/home/Home_event.dart';
import 'package:store/bloc/home/Home_state.dart';
import 'package:store/di/di.dart';
import '../../bloc/home/home_bloc.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(FetchProducts()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HomeLoaded) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<HomeBloc>().add(FetchProducts());
                },
                child: ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return ListTile(
                      leading: Image.network(product.thumbnail),
                      title: Text(product.title),
                      subtitle: Text(product.description),
                      trailing: Text('\$${product.price}'),
                    );
                  },
                ),
              );
            } else if (state is HomeError) {
              return const Center(child: Text('Failed to fetch products'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
                                // onTap: () async {
                                //   context.pushNamed(
                                //     'ProductDetails',
                                //     queryParameters: {
                                //       'productId': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["id"]''',
                                //         ),
                                //         ParamType.int,
                                //       ),
                                //       'productImage': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["thumbnail"]''',
                                //         ).toString(),
                                //         ParamType.String,
                                //       ),
                                //       'productTitle': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["title"]''',
                                //         ).toString(),
                                //         ParamType.String,
                                //       ),
                                //       'productDescription': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["description"]''',
                                //         ).toString(),
                                //         ParamType.String,
                                //       ),
                                //       'productStock': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["stock"]''',
                                //         ),
                                //         ParamType.int,
                                //       ),
                                //       'productRating': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["rating"]''',
                                //         ),
                                //         ParamType.int,
                                //       ),
                                //       'discountPercentage': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["discountPercentage"]''',
                                //         ),
                                //         ParamType.int,
                                //       ),
                                //       'productPrice': serializeParam(
                                //         getJsonField(
                                //           productsItem,
                                //           r'''$["price"]''',
                                //         ),
                                //         ParamType.int,
                                //       ),
                                //     }.withoutNulls,
                                //   );
                                // },
