import 'package:flutter_application_1/models/food.dart';

const List<String> categories = ['All', 'Burgers', 'Pizza', 'Fast Food', 'Desi'];

const List<Food> foodList = [
  // ---------- Burgers ----------
  Food(
    name: 'Cheese Burger',
    price: 550,
    description: 'Juicy beef patty topped with double melted cheese, fresh lettuce and our secret sauce.',
    image: 'assets/images/cheese_burger.png',
    category: 'Burgers',
    rating: 4.8,
  ),
  Food(
    name: 'Simple Burger',
    price: 400,
    description: 'A classic burger with a crispy patty, fresh veggies and creamy mayo.',
    image: 'assets/images/simple_burger.png',
    category: 'Burgers',
    rating: 4.5,
  ),

  // ---------- Pizza ----------
  Food(
    name: 'Cheese Pizza',
    price: 1200,
    description: 'Large pizza loaded with extra mozzarella cheese on a golden crust.',
    image: 'assets/images/cheese_pizza.png',
    category: 'Pizza',
    rating: 4.7,
  ),
  Food(
    name: 'Chicken Pizza',
    price: 1100,
    description: 'Tender chicken chunks, onions and capsicum with a rich tomato base.',
    image: 'assets/images/chicken_pizza.png',
    category: 'Pizza',
    rating: 4.6,
  ),
  Food(
    name: 'Special Pizza',
    price: 1500,
    description: 'Our chef special with chicken, olives, mushrooms and extra cheese.',
    image: 'assets/images/special_pizza.png',
    category: 'Pizza',
    rating: 4.9,
  ),

  // ---------- Fast Food ----------
  Food(
    name: 'Chicken Nuggets',
    price: 450,
    description: 'Crispy golden nuggets served with garlic mayo dip.',
    image: 'assets/images/chicken_nuggets.png',
    category: 'Fast Food',
    rating: 4.4,
  ),
  Food(
    name: 'Chicken Sandwich',
    price: 350,
    description: 'Grilled chicken, fresh veggies and cheese between toasted bread.',
    image: 'assets/images/chicken_sandwich.png',
    category: 'Fast Food',
    rating: 4.3,
  ),
  Food(
    name: 'Fried Chicken',
    price: 700,
    description: 'Extra crispy spicy fried chicken pieces, served hot.',
    image: 'assets/images/fried_chicken.png',
    category: 'Fast Food',
    rating: 4.7,
  ),
  Food(
    name: 'Shawarma',
    price: 300,
    description: 'Soft pita filled with juicy chicken, salad and garlic sauce.',
    image: 'assets/images/shawarma.png',
    category: 'Fast Food',
    rating: 4.6,
  ),

  // ---------- Desi ----------
  Food(
    name: 'Chicken Biryani',
    price: 380,
    description: 'Aromatic basmati rice cooked with spiced chicken, served with raita.',
    image: 'assets/images/biryani.png',
    category: 'Desi',
    rating: 4.9,
  ),
  Food(
    name: 'Egg Biryani',
    price: 300,
    description: 'Flavourful biryani with boiled eggs and special masala.',
    image: 'assets/images/egg_biryani.png',
    category: 'Desi',
    rating: 4.2,
  ),
  Food(
    name: 'Chicken Karahi',
    price: 1800,
    description: 'Traditional karahi cooked in tomatoes, ginger and green chillies.',
    image: 'assets/images/chicken_karahi.png',
    category: 'Desi',
    rating: 4.8,
  ),
  Food(
    name: 'Seekh Kabab',
    price: 600,
    description: 'Minced meat kababs grilled on charcoal with mint chutney.',
    image: 'assets/images/kabab.png',
    category: 'Desi',
    rating: 4.5,
  ),
  Food(
    name: 'Daal Chawal',
    price: 250,
    description: 'Comforting homestyle daal with steamed rice.',
    image: 'assets/images/daal_chawal.png',
    category: 'Desi',
    rating: 4.1,
  ),
];