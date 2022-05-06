import 'package:ecommerce/ViewModel/product_list_viewmodel.dart';
import 'package:ecommerce/Widgets/productlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProductListViewModel>(context, listen: false).fetchEvents();
//you can use anything you like or not use anything here. I call it just to have a content on the screen rather than having a blank screen
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ProductListViewModel>(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
                child: ProductList(
              products: vm.products,
            )) //we will create this further down
          ],
        ),
      ),
    );
  }
}
