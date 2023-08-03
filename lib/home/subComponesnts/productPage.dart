import 'package:flutter/material.dart';




class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Text("data"),
            Text("  data"),
            Text("  data"),
          ],
        ),
        ProductGridView(),
      ],
    );
  }
}





class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: const [
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),
          ProductCard(),

        ],
      ),
    );
  }
}



class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 250,
      child: Card(
        child: Column(
          children: [
            Card(
              child: Container(
                width: 200,
                height: 150,
                color: Colors.black12,
              ),
            ),
            Column(
              children: const [
                Text("Name"),
                Text("discription"),
                Text("\$20"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
