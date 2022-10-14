class Places {
  final String image;
  final String text;
  final String subText;
  final String price;

  Places({
    required this.image,
    required this.text,
    required this.subText,
    required this.price,
  });
}

final List<Places> demoPlaces = [
  Places(
    image: 'assets/images/Rectangle 5.png',
    text: 'Tanjung Aan',
    subText: 'Pujut, Lombok Tengah',
    price: '\$230',
  ),
  Places(
    image: 'assets/images/Rectangle 6.png',
    text: 'Tanjung Aan',
    subText: 'Pujut, Lombok Tengah',
    price: '\$240',
  ),
  Places(
    image: 'assets/images/Rectangle 5.png',
    text: 'Tanjung Aan',
    subText: 'Pujut, Lombok Tengah',
    price: '\$230',
  ),
  Places(
    image: 'assets/images/Rectangle 6.png',
    text: 'Tanjung Aan',
    subText: 'Pujut, Lombok Tengah',
    price: '\$240',
  ),
];
