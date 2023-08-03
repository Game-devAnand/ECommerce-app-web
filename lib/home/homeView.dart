import 'package:ecommerce_web_project/home/subComponesnts/productPage.dart';
import 'package:ecommerce_web_project/home/subComponesnts/sideNavBar.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: const [
            SideNavBar(),
            SizedBox(width: 20,),
            Expanded(child: ProductPage()),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}
