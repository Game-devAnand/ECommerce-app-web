import 'package:flutter/material.dart';




class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Popular Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
          ),
          BestProductView(),
          SizedBox(height:10),
          AdsProducts(),
          SizedBox(height:10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("All Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
          ),
          ProductGridView(),
        ],
      ),
    );
  }
}

class BestProductView extends StatefulWidget {
  const BestProductView({Key? key}) : super(key: key);

  @override
  _BestProductViewState createState() => _BestProductViewState();
}

class _BestProductViewState extends State<BestProductView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 250,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.offset - 200, // Adjust the value as per your requirement
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
              );
            },
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
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
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.offset + 200, // Adjust the value as per your requirement
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
              );
            },
          ),
        ],
      ),
    );
  }
}




class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: Center(
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 20,
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
      ),
    );
  }
}



class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Name"),
                        Text("discription"),
                        Text("\$20"),
                      ],
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Add to Cart'),
                                content: Card(
                                  child: Row(
                                    children: <Widget>[
                                      Card(
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      Card(

                                        elevation: 20,
                                        child: SizedBox(
                                          width: 300,
                                          height: 300,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Name'),
                                              Text('Dis'),
                                              Text('\$20'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  ElevatedButton(
                                    child: Text('Close'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text("ADD"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class AdsProducts extends StatelessWidget {
  const AdsProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 500,
      height: 200,
      child: Card(
        color: Colors.blueGrey,
      ),
    );
  }
}
