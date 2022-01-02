import 'package:flutter/material.dart';

import 'package:flutter_shop_app/widgets/product_grid.dart';
import 'package:flutter_shop_app/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyShop'),
        ),
        body: ProductGrid());
  }
}
