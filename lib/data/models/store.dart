import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ltddnc/data/models/cart_item.dart';

import 'shoe.dart';

class Store extends ChangeNotifier {
  final List<Shoe> menu = [
    //air
    Shoe(
      name: 'Nike Air Froce 1',
      description: 'Giày Nike Air kết hợp trắng đen!',
      imagePath: 'assets/images/air/air_1.png',
      price: 2100000,
      category: ShoeCategory.Air,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Air Froce 2',
      description: 'Giày Nike Air đầy cá tính!',
      imagePath: 'assets/images/air/air_2.png',
      price: 2100000,
      category: ShoeCategory.Air,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Air Froce 3',
      description: 'Giày Nike Air đầy cá tính!',
      imagePath: 'assets/images/air/air_3.png',
      price: 2100000,
      category: ShoeCategory.Air,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Air Froce 4',
      description: 'Giày Nike Air đầy cá tính!',
      imagePath: 'assets/images/air/air_4.png',
      price: 2100000,
      category: ShoeCategory.Air,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Air Froce 5',
      description: 'Giày Nike Air đầy cá tính!',
      imagePath: 'assets/images/air/air_5.png',
      price: 2100000,
      category: ShoeCategory.Air,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),

    //football
    Shoe(
      name: 'Nike Football 1',
      description: 'Giày Nike Football siêu thoải mái!',
      imagePath: 'assets/images/football/football_1.png',
      price: 2100000,
      category: ShoeCategory.Football,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Football 2',
      description: 'Giày Nike Football siêu thoải mái!',
      imagePath: 'assets/images/football/football_2.png',
      price: 2100000,
      category: ShoeCategory.Football,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Football 3',
      description: 'Giày Nike Football siêu thoải mái!',
      imagePath: 'assets/images/football/football_3.png',
      price: 2100000,
      category: ShoeCategory.Football,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Football 4',
      description: 'Giày Nike Football siêu thoải mái!',
      imagePath: 'assets/images/football/football_4.png',
      price: 2100000,
      category: ShoeCategory.Football,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Football 5',
      description: 'Giày Nike Football siêu thoải mái!',
      imagePath: 'assets/images/football/football_5.png',
      price: 2100000,
      category: ShoeCategory.Football,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    //lifestyle
    Shoe(
      name: 'Nike Lifestyle Froce 1',
      description: 'Giày Nike Lifestyle đầy cá tính!',
      imagePath: 'assets/images/lifestyle/lifestyle_1.png',
      price: 2100000,
      category: ShoeCategory.Lifestyle,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Lifestyle Froce 2',
      description: 'Giày Nike Lifestyle đầy cá tính!',
      imagePath: 'assets/images/lifestyle/lifestyle_2.png',
      price: 2100000,
      category: ShoeCategory.Lifestyle,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Lifestyle Froce 3',
      description: 'Giày Nike Lifestyle đầy cá tính!',
      imagePath: 'assets/images/lifestyle/lifestyle_3.png',
      price: 2100000,
      category: ShoeCategory.Lifestyle,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Lifestyle Froce 4',
      description: 'Giày Nike Lifestyle đầy cá tính!',
      imagePath: 'assets/images/lifestyle/lifestyle_4.png',
      price: 2100000,
      category: ShoeCategory.Lifestyle,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Lifestyle Froce 5',
      description: 'Giày Nike Lifestyle đầy cá tính!',
      imagePath: 'assets/images/lifestyle/lifestyle_5.png',
      price: 2100000,
      category: ShoeCategory.Lifestyle,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    //running
    Shoe(
      name: 'Nike Running Froce 1',
      description: 'Giày Nike Running đầy mạnh mẽ!',
      imagePath: 'assets/images/running/running_1.png',
      price: 2100000,
      category: ShoeCategory.Running,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Running Froce 2',
      description: 'Giày Nike Running đầy mạnh mẽ!',
      imagePath: 'assets/images/running/running_2.png',
      price: 2100000,
      category: ShoeCategory.Running,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Running Froce 3',
      description: 'Giày Nike Running đầy mạnh mẽ!',
      imagePath: 'assets/images/running/running_3.png',
      price: 2100000,
      category: ShoeCategory.Running,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Running Froce 4',
      description: 'Giày Nike Running đầy mạnh mẽ!',
      imagePath: 'assets/images/running/running_4.png',
      price: 2100000,
      category: ShoeCategory.Running,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
    Shoe(
      name: 'Nike Running Froce 5',
      description: 'Giày Nike Running đầy mạnh mẽ!',
      imagePath: 'assets/images/running/running_5.png',
      price: 2100000,
      category: ShoeCategory.Running,
      availableSize: [
        Size(name: 'Size 39'),
        Size(name: 'Size 40'),
        Size(name: 'Size 41'),
        Size(name: 'Size 42'),
      ],
    ),
  ];

  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Shoe shoe, List<Size> selectedSize) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameShoe = item.shoe == shoe;

      bool isSameSize = ListEquality().equals(item.selectedSize, selectedSize);
      return isSameShoe && isSameSize;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          shoe: shoe,
          selectedSize: selectedSize,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price
  int getTotalPrice() {
    int total = 0;

    for (CartItem cartItem in _cart) {
      int? itemTotal = cartItem.shoe.price;

      for (Size size in cartItem.selectedSize) {
        itemTotal;
      }
      total += itemTotal! * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //HELPERS
  //generate total price
  String displayTotalPrice() {
    final totalPrice = StringBuffer();
    totalPrice.write(' ${_formatPrice(getTotalPrice())}');
    return totalPrice.toString();
  }

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('--Thông tin hóa đơn của bạn--');
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('-------------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.shoe.name} - ${_formatPrice(cartItem.shoe.price)}');
      if (cartItem.selectedSize.isNotEmpty) {
        receipt.writeln('Size: ${_formatSize(cartItem.selectedSize)}');
      }
      receipt.writeln();
    }
    receipt.writeln('-------------------');
    receipt.writeln();
    receipt.writeln('Số lượng sản phẩm: ${getTotalItemCount()}');
    receipt.writeln('Tổng giá hóa đơn: ${_formatPrice(getTotalPrice())}');

    return receipt.toString();
  }

  //format value into money
  String _formatPrice(int? price) {
    if (price != null) {
      return NumberFormat('###,###.### ₫').format(price.toInt());
    } else {
      // Handle null case
      return "Giá không xác định (₫)";
    }
  }

  //format list of size into a string summary
  String _formatSize(List<Size> sizes) {
    return sizes.map((size) => '${size.name} ').join('');
  }
}
