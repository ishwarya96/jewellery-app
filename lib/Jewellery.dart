class Jewellery {
  final int plantId;
  final int price;
  final double rating;
  final String category;
  final String jewelleryName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Jewellery(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.jewelleryName,
      required this.rating,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  
  static List<Jewellery> plantList = [
    Jewellery(
        plantId: 0,
        price: 4550,
        category: 'Platium',
        jewelleryName: 'Platium Collection',
        rating: 4.5,
        imageURL: 'assets/platinum.jpg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.',
        isSelected: false),
    Jewellery(
        plantId: 1,
        price: 5540,
        category: 'Bangles',
        jewelleryName: 'Gold Bangle',
        rating: 4.8,
        imageURL: 'assets/maxresdefault.jpg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.',
        isSelected: false),
    Jewellery(
        plantId: 2,
        price: 2200,
        category: 'Ring for Men',
        jewelleryName: 'Gold Ring For Men',
        rating: 4.7,
        imageURL:
            'assets/Gold-Rings-for-Men-25-Latest-and-Stylish-Designs-in-2021.jpg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.',
        isSelected: false),
    Jewellery(
        plantId: 3,
        price: 7851,
        category: 'Bracelet for women',
        jewelleryName: 'Bracele',
        rating: 4.5,
        imageURL: 'assets/bracelet.jpg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.',
        isSelected: false),
    Jewellery(
        plantId: 4,
        price: 9845,
        category: 'Bracelet For Men',
        jewelleryName: 'Bracelet',
        rating: 4.1,
        imageURL:
            'assets/Gold-Plated-Bracelet-For-Men-SDL437465760-2-9b927.jpeg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.',
        isSelected: false),
    Jewellery(
        plantId: 5,
        price: 8745,
        category: 'Necklace Collection',
        jewelleryName: 'Necklace',
        rating: 4.4,
        imageURL: 'assets/jimage.jpg',
        isFavorated: false,
        decription:
            "Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.",
        isSelected: false),
    Jewellery(
        plantId: 6,
        price: 4895,
        category: 'Diamond Collections',
        jewelleryName: 'Diamond',
        rating: 4.2,
        imageURL: 'assets/z fashion   1686.jpg',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Jewellery(
        plantId: 7,
        price: 8651,
        category: 'Sliver Collection',
        jewelleryName: 'Sliver Bangle',
        rating: 4.5,
        imageURL: 'assets/sliver.jpg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way.',
        isSelected: false),
    Jewellery(
        plantId: 8,
        price: 50000,
        category: 'Gold Ring',
        jewelleryName: 'Gold',
        rating: 4.7,
        imageURL: 'assets/ring.jpg',
        isFavorated: false,
        decription:
            'Imitation jewelry are accessories that are made using a variety of artificial materials. It is also called ‘fashion jewelry perhaps because this is the jewelry type that allows people to experiment with different styles and trends in the most cost-effective way',
        isSelected: false),
  ];

  
  static List<Jewellery> getFavoritedPlants() {
    List<Jewellery> _travelList = Jewellery.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }


  static List<Jewellery> addedToCartPlants() {
    List<Jewellery> _selectedPlants = Jewellery.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
