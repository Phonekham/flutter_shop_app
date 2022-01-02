import 'package:flutter/material.dart';
import 'package:flutter_shop_app/providers/products.dart';

import 'package:flutter_shop_app/widgets/product_grid.dart';
import 'package:flutter_shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorite, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavoriteData = false;
  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('MyShop'),
          actions: [
            PopupMenuButton(
                onSelected: (FilterOptions selectedValue) {
                  setState(() {
                    if (selectedValue == FilterOptions.Favorite) {
                      _showOnlyFavoriteData = true;
                    } else {
                      _showOnlyFavoriteData = false;
                    }
                  });
                },
                icon: Icon(Icons.more_vert),
                itemBuilder: (_) => [
                      PopupMenuItem(
                        child: Text('Only Favorites'),
                        value: FilterOptions.Favorite,
                      ),
                      PopupMenuItem(
                        child: Text('Show all'),
                        value: FilterOptions.All,
                      )
                    ])
          ],
        ),
        body: ProductGrid(_showOnlyFavoriteData));
  }
}
