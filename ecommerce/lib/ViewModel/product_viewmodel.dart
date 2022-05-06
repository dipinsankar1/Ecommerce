import 'package:ecommerce/Model/productmodel.dart';

class ProductViewModel {
  final ProductModel product;

  ProductViewModel({required this.product});

  String get title {
    return product.title;
  }

  String get image {
    return product.image;
  }

  double get price {
    return product.price;
  }

  double get rating {
    return product.rating.rate;
  }
}
