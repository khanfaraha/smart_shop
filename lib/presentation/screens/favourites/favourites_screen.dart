import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../presentation/providers/favourite_provider.dart';
import '../../../presentation/providers/product_provider.dart';
import '../home/home_screen.dart';
import '../../widgets/app_drawer.dart';


class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final favProvider = Provider.of<FavouriteProvider>(context);

    final favProducts = productProvider.products
        .where((p) => favProvider.favouriteIds.contains(p.id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Favourites")),
      drawer: const AppDrawer(),
      body: favProducts.isEmpty
          ? const Center(child: Text("No favourites yet."))
          : GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: favProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: favProducts[index]);
        },
      ),
    );
  }
}
