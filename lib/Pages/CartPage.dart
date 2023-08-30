import 'package:flutter/material.dart';
import '../home/subComponesnts/sideNavBar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: const [
            SideNavBar(),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
