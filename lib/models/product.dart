class Product {
  final String parfumeName, price, size, path;
  Product(
      {required this.parfumeName,
      required this.path,
      required this.price,
      required this.size});
}

List<Product> products = [
  Product(
      parfumeName: 'Neroli Portofino',
      price: '\$349',
      size: '50 ML',
      path: 'asset/1.png'),
  Product(
      parfumeName: 'Tabacco Oud',
      price: '\$299',
      size: '60 ML',
      path: 'asset/2.png'),
  Product(
      parfumeName: 'Rose Prick',
      price: '\$229',
      size: '50 ML',
      path: 'asset/3.png'),
  Product(
      parfumeName: 'Bitter Peach',
      price: '\$199',
      size: '50 ML',
      path: 'asset/4.png'),
  Product(
      parfumeName: 'Noır de Noır',
      price: '\$159',
      size: '50 ML',
      path: 'asset/5.png'),
  Product(
      parfumeName: 'Lost Cherry',
      price: '\$249',
      size: '50 ML',
      path: 'asset/6.png'),
];
