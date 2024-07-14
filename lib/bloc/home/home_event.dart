import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadProducts extends HomeEvent {}

class ToggleFavorite extends HomeEvent {
  final int productIndex;

  const ToggleFavorite(this.productIndex);

  @override
  List<Object> get props => [productIndex];
}
