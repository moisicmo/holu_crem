class Categories {
  final int id;
  final String name;
  final String image;

  Categories({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<Categories> categories = [
  Categories(id: 0, name: 'Pasteles', image: 'assets/icons/birthday-cake.svg'),
  Categories(id: 1, name: 'Cup Cakes', image: 'assets/icons/cake.svg'),
  Categories(id: 2, name: 'Bombones', image: 'assets/icons/cupcake.svg'),
  Categories(id: 3, name: 'Postres', image: 'assets/icons/donut.svg'),
  Categories(id: 4, name: 'Tartaletas', image: 'assets/icons/cake01.svg'),
];
