import 'package:flutter/material.dart';
import 'package:four20society/global_widget/custom_product_cart_widget.dart';
import '../../../global_widget/app_drawar.dart';
class ProductWishListScreen extends StatefulWidget {
  const ProductWishListScreen({super.key});
  @override
  State<ProductWishListScreen> createState() => _ProductWishListScreen();
}

class _ProductWishListScreen extends State<ProductWishListScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      key: _scaffoldKey,
      drawer: customDrawer(context: context),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Wishlist",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const CustomProductCardWidget();

          }),
    );
  }

 
}
