import 'package:flutter/cupertino.dart';
import 'package:holu_crem/core/color.dart';

class Cakes {
  final String name;
  final String flavourl;
  final String image;
  final String price;
  final Color bgColor;
  final String destription;
  final double rating;

  Cakes({
    required this.name,
    required this.flavourl,
    required this.image,
    required this.price,
    required this.bgColor,
    required this.destription,
    required this.rating,
  });
}

List<Cakes> cakes = [
  Cakes(
    name: 'Cupcake de Pito Huayaca',
    flavourl: 'Tradicional',
    price: '250.60',
    image: 'assets/products/01.jpg',
    bgColor: pink01,
    destription:
        'Delicioso bizcocho de pito huayaca con un relleno exótico de tumbo, que combina lo mejor de la tradición y el sabor tropical.',
    rating: 4.5,
  ),
  Cakes(
    name: 'Bombones Rellenos de Motacú',
    flavourl: 'Exótico',
    price: '220.60',
    image: 'assets/products/02.jpg',
    bgColor: pink01,
    destription:
        'Pequeños bombones con un corazón relleno de motacú, perfectos para disfrutar un toque dulce y tropical.',
    rating: 4,
  ),
  Cakes(
    name: 'Entremet de Mango y Aricoma',
    flavourl: 'Gourmet',
    price: '450.60',
    image: 'assets/products/03.jpg',
    bgColor: pink01,
    destription:
        'Un elegante postre en capas, compuesto de mousse de mango, gelatina de aricoma y un delicado bizcocho. Perfecto para ocasiones especiales.',
    rating: 4.5,
  ),
  Cakes(
    name: 'Torta Tres Leches',
    flavourl: 'Clásico',
    price: '850.60',
    image: 'assets/products/04.jpeg',
    bgColor: pink01,
    destription:
        'Bizcocho suave y esponjoso, humedecido con una mezcla de tres leches: evaporada, condensada y leche natural. Un clásico irresistible.',
    rating: 5,
  ),
  Cakes(
    name: 'Tartaletas de Frutilla',
    flavourl: 'Frutal',
    price: '350.60',
    image: 'assets/products/05.jpeg',
    bgColor: pink01,
    destription:
        'Tartaletas de masa quebrada perfectamente horneada, con un delicioso relleno de crema suave y frutillas frescas.',
    rating: 4.5,
  ),
  Cakes(
    name: 'Relleno Crema Bariloche',
    flavourl: 'Chocolate',
    price: '150.60',
    image: 'assets/products/06.jpg',
    bgColor: pink01,
    destription:
        'Exquisita crema de chocolate con una textura suave y un sabor intenso, ideal para cualquier postre.',
    rating: 4.2,
  ),
  Cakes(
    name: 'Relleno Budín de Chocolate',
    flavourl: 'Chocolate',
    price: '180.60',
    image: 'assets/products/07.jpg',
    bgColor: pink01,
    destription:
        'Postre elaborado a base de chocolate, con una textura densa y un sabor profundo, perfecto para los amantes del cacao.',
    rating: 4.8,
  ),
  Cakes(
    name: 'Relleno Crema Pastelera de Moras',
    flavourl: 'Frutal',
    price: '200.60',
    image: 'assets/products/08.jpeg',
    bgColor: pink01,
    destription:
        'Una crema pastelera suave con un toque dulce y ácido de moras frescas, ideal para acompañar postres únicos.',
    rating: 4.7,
  ),
];

