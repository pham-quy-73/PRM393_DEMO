import '../models/Product.dart';

class ProductDAO {
  // Dữ liệu mẫu
  static final List<Product> _products = [
    Product(
      id: 1,
      name: "iPhone 15",
      description: "ABC",
      price: 1000,
      discountPercent: 30,
      image:
          'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
    ),
    Product(
      id: 2,
      name: "Samsung S24",
      description: "ABC",
      price: 900,
      discountPercent: 5,
      image:
          'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
    ),
    Product(
      id: 3,
      name: "Realme C53",
      description: "ABC",
      price: 400,
      discountPercent: 15,
      image:
          'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
    ),
  ];

  List<Product> getAllProduct() => _products;

  List<Product> findProductByName(String keyword) {
    if (keyword.isEmpty) return _products;
    return _products
        .where((p) => p.name.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
  }
}
