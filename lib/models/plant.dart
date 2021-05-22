class Plant {
  String imageUrl;
  String name;
  String price;

  Plant({
    this.imageUrl,
    this.name,
    this.price,
  });
}

final List<Plant> plants = [
  Plant(
    imageUrl: 'assets/leaves/leaf1.png',
    name: 'Basil',
    price: 'RWF 12,000',
  ),
  Plant(
    imageUrl: 'assets/leaves/leaf2.png',
    name: 'Cyprus',
    price: 'RWF 8,000',
  ),
  Plant(
    imageUrl: 'assets/leaves/leaf3.png',
    name: 'Leaves',
    price: 'RWF 9,000',
  ),
  Plant(
    imageUrl: 'assets/leaves/leaf4.png',
    name: 'Leaves',
    price: 'RWF 3,000',
  ),
  Plant(
    imageUrl: 'assets/leaves/leaf5.png',
    name: 'Leaves',
    price: 'RWF 3,000',
  ),
];
