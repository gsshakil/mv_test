import 'package:flutter/material.dart';
import 'package:multivendor_test/core/di.dart';
import 'package:multivendor_test/features/cart/presentation/screens/cart_screen.dart';
import 'package:multivendor_test/features/cart/presentation/widgets/cart_bottom_sheet.dart';
import 'package:multivendor_test/features/category/presentation/blocs/category_cubit/category_cubit.dart';
import 'package:multivendor_test/features/feeds/presentation/screens/feed_screen.dart';
import 'package:multivendor_test/features/landing/presentation/screens/home_screen.dart';
import 'package:multivendor_test/features/likes/presentation/screens/likes_screen.dart';
import 'package:multivendor_test/features/products/data/dtos/product_dto.dart';
import 'package:multivendor_test/features/profile/presentation/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final cartItems = const [
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_1.png',
      category: 'SPEAKER',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: true,
      imagePath: 'assets/images/product_2.png',
      category: 'ELECTRONICS',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_3.png',
      category: 'SPEAKER',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_4.png',
      category: 'SPEAKER',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_1.png',
      category: 'EAR PHONE',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_2.png',
      category: 'EAR BUD',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
  ];

  final categoryCubit = injector<CategoryCubit>();
  @override
  void initState() {
    categoryCubit.getAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PersistentTabView(
          backgroundColor: Theme.of(context).colorScheme.surface,
          navBarHeight: 75,
          margin: EdgeInsets.zero,
          tabs: [
            PersistentTabConfig(
              screen: const HomeScreen(),
              item: ItemConfig(
                inactiveBackgroundColor:
                    Theme.of(context).colorScheme.surfaceContainer,
                inactiveForegroundColor:
                    Theme.of(context).colorScheme.surfaceBright,
                activeForegroundColor: Theme.of(context).colorScheme.onPrimary,
                activeColorSecondary:
                    Theme.of(context).colorScheme.surfaceContainer,
                icon: const Icon(Icons.home),
                title: "Home",
              ),
            ),
            PersistentTabConfig(
              screen: const FeedScreen(),
              item: ItemConfig(
                inactiveBackgroundColor:
                    Theme.of(context).colorScheme.surfaceContainer,
                inactiveForegroundColor:
                    Theme.of(context).colorScheme.surfaceBright,
                activeForegroundColor: Theme.of(context).colorScheme.onPrimary,
                icon: const Icon(Icons.location_on),
                title: "Feeds",
              ),
            ),
            PersistentTabConfig(
              screen: const LikesScreen(),
              item: ItemConfig(
                inactiveBackgroundColor:
                    Theme.of(context).colorScheme.surfaceContainer,
                inactiveForegroundColor:
                    Theme.of(context).colorScheme.surfaceBright,
                activeForegroundColor: Theme.of(context).colorScheme.onPrimary,
                icon: const Icon(Icons.favorite_border),
                title: "Likes",
              ),
            ),
            PersistentTabConfig(
              screen: const CartScreen(),
              item: ItemConfig(
                inactiveBackgroundColor:
                    Theme.of(context).colorScheme.surfaceContainer,
                inactiveForegroundColor:
                    Theme.of(context).colorScheme.surfaceBright,
                activeForegroundColor: Theme.of(context).colorScheme.onPrimary,
                icon: const Icon(Icons.shopping_cart),
                title: "Carts",
              ),
            ),
            PersistentTabConfig(
              screen: const ProfileScreen(),
              item: ItemConfig(
                inactiveBackgroundColor:
                    Theme.of(context).colorScheme.surfaceContainer,
                inactiveForegroundColor:
                    Theme.of(context).colorScheme.surfaceBright,
                activeForegroundColor: Theme.of(context).colorScheme.onPrimary,
                icon: const Icon(Icons.person_4_outlined),
                title: "Profile",
              ),
            ),
          ],
          navBarBuilder: (navBarConfig) => Style1BottomNavBar(
            navBarConfig: navBarConfig,
            navBarDecoration: NavBarDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: MediaQuery.of(context).size.width / 5,
          child: Card(
            surfaceTintColor: Colors.transparent,
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    isScrollControlled: true,
                    builder: (context) {
                      return CartBottomSheet(cartItems: cartItems);
                    });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.height / 12,
                color: Colors.transparent,
              ),
            ),
          ),
        )
      ],
    );
  }
}

