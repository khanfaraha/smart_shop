import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteProvider extends ChangeNotifier {
  List<int> _favouriteIds = [];

  List<int> get favouriteIds => _favouriteIds;

  FavouriteProvider() {
    _loadFavourites();
  }

  void _loadFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final favList = prefs.getStringList('favourites') ?? [];
    _favouriteIds = favList.map(int.parse).toList();
    notifyListeners();
  }

  void toggleFavourite(int productId) async {
    final prefs = await SharedPreferences.getInstance();

    if (_favouriteIds.contains(productId)) {
      _favouriteIds.remove(productId);
    } else {
      _favouriteIds.add(productId);
    }

    prefs.setStringList(
      'favourites',
      _favouriteIds.map((id) => id.toString()).toList(),
    );
    notifyListeners();
  }

  bool isFavourite(int productId) {
    return _favouriteIds.contains(productId);
  }
}
