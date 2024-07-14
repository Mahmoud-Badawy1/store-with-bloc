import 'package:bloc/bloc.dart';
import 'package:store/data/repository/products_repository.dart';
import 'Home_event.dart';
import 'Home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductRepository productRepository;

  HomeBloc(this.productRepository) : super(HomeInitial()) {
    on<LoadProducts>(_onLoadProducts);
    on<ToggleFavorite>(_onToggleFavorite);
    on<FetchProducts>(_onFetchProducts);
  }

  void _onLoadProducts(LoadProducts event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final products = await productRepository.getProducts();
      emit(HomeLoaded(products: products, isFav: false));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

  void _onToggleFavorite(ToggleFavorite event, Emitter<HomeState> emit) {
    if (state is HomeLoaded) {
      final currentState = state as HomeLoaded;
      final isFav = !currentState.isFav;
      emit(HomeLoaded(products: currentState.products, isFav: isFav));
    }
  }

  void _onFetchProducts(FetchProducts event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final products = await productRepository.getProducts();
      emit(HomeLoaded(products: products, isFav: false));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}
