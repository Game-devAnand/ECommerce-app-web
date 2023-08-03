import 'package:flutter/material.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.ac_unit_outlined),
              onPressed: () {},
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavButton(
                    onTap: () {},
                    title: 'Product',
                  ),
                  NavButton(
                    onTap: () {},
                    title: 'Category',
                  ),
                  NavButton(
                    onTap: () {},
                    title: 'Orders',
                  ),
                  NavButton(
                    onTap: () {},
                    title: 'Cart',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Card(
                color: Colors.black12,
                child: Container(
                  color: Colors.brown,
                ),
              ),
            ),
            NavButton(
              onTap: () {},
              title: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  Function onTap;
  String title;

  NavButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          onTap();
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
