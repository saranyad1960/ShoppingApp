import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../repository/carousel_repo.dart';
import 'carousel_events.dart';
import 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  final CarouselRepository carouselRepository;

  CarouselBloc({required this.carouselRepository}) : super(CarouselLoading()) {
    on<LoadCarousel>((event, emit) async {
      try {
        await Future.delayed(Duration(seconds: 3));
        final carouselItems = carouselRepository.getCarouselItems();
        emit(CarouselLoaded(carouselItems));
      } catch (e) {

      }
    });
  }
}
