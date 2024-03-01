import 'package:equatable/equatable.dart';

import '../../model/carousel_model.dart';


abstract class CarouselState extends Equatable {
  const CarouselState();

  @override
  List<Object> get props => [];
}

class CarouselLoading extends CarouselState {}

class CarouselLoaded extends CarouselState {
  final List<CarouselItem> carouselItems;

  const CarouselLoaded(this.carouselItems);

  @override
  List<Object> get props => [carouselItems];
}

class CarouselError extends CarouselState {
  final String message;

  CarouselError({required this.message});
}