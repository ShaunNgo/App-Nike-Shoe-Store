import 'package:ltddnc/data/models/shoe.dart';

class CartItem {
  Shoe shoe;
  List<Size> selectedSize;
  int quantity;

  CartItem({
    required this.shoe,
    required this.selectedSize,
    this.quantity = 1,
  });

  double get totalPrice {
    double sizePrice = selectedSize.fold(0, (sum, size) => sum);
    return (shoe.price! + sizePrice) * quantity;
  }
}
