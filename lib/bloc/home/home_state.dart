import 'package:equatable/equatable.dart';
import 'package:store/data/models/product_model.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomePageLoaded extends HomeState {
  final List<Product> products;
  final bool isFav;

  const HomePageLoaded({required this.products, required this.isFav});

  @override
  List<Object> get props => [products, isFav];
}

class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object> get props => [message];
}
