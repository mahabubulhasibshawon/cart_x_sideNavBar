import 'package:cart_page/widgets/app_bar.dart';
import 'package:cart_page/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: height * .01,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('New order', style: TextStyle(fontWeight: FontWeight.bold, fontSize: height * .035),),
              Container(
                padding: EdgeInsets.all(height * .005),
                height: height * .04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF04842e),
                ),
                child: Center(child: Text('5 items', style: TextStyle(fontSize: height * .015, color: Colors.white),)),
              )
            ],),
            ItemListWidget()
          ],
        ),
      ),
    );
  }
}
