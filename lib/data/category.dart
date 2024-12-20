class Category {
  final int id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<Category> categories = [
  Category(id: 0, name: 'Todos', image: 'assets/icons/cupcake.svg'),
  Category(id: 1, name: 'Tortas', image: 'assets/icons/birthday-cake.svg'),
  Category(id: 2, name: 'Innovación', image: 'assets/icons/donut.svg'),
  // Categories(id: 1, name: 'Cup Cakes', image: 'assets/icons/cake.svg'),
  // Categories(id: 2, name: 'Bombones', image: 'assets/icons/cupcake.svg'),
  // Categories(id: 3, name: 'Postres', image: 'assets/icons/donut.svg'),
  Category(id: 3, name: 'Tartaletas', image: 'assets/icons/cake01.svg'),
];
