import '../model/carousel_model.dart';

class CarouselRepository {
  List<CarouselItem> getCarouselItems() {
    return [
      CarouselItem(imagePath: 'lib/assets/Screenshot 2024-02-09 0829299.png'),
      CarouselItem(imagePath: 'lib/assets/Screenshot 2024-02-09 0830200.png'),
      CarouselItem(imagePath: 'lib/assets/Screenshot 2024-02-09 084220000.png'),
    ];
  }
}
