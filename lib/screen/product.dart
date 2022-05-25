import 'package:flutter/material.dart';

import 'cart.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFfFEFEFF)),
                  child: const Icon(Icons.more_horiz),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      color: const Color(0xFfFEFEFF),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.shopping_bag),
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 390,
                      width: 350,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image.png'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 295, top: 20),
                      child: Container(
                        height: 190,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Color',
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Colors.purple, shape: BoxShape.circle),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF930101),
                                  shape: BoxShape.circle),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  const Text(
                    'Nordic Chair',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 65),
                  Container(
                    height: 20,
                    width: 20,
                    color: const Color(0xFfFEFEFF),
                    child: const Center(
                        child: Text(
                      '-',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    '1',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 20,
                    width: 20,
                    color: const Color(0xFfFEFEFF),
                    child: const Center(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Introduction',
                style: TextStyle(
                    color: Color(0xFF051E47),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 50),
              child: Text(
                'The high-back Nordic chair will provide the best comfort. The stylish design of the chair will allow you to decorate any room in your home.',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB7B7B7)),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                    color: const Color(0xFF9C9591),
                      borderRadius: BorderRadius.circular(7)),
                    child: const Icon(Icons.shopping_bag),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartPage()));
                      },
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                            color: Color(0xFFFEFEFF),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 45,
                    width: 2,
                    color: const Color(0xFF9C9591),
                  ),
                  const Text(
                    '\$399',
                    style: TextStyle(
                        color: Color(0xFFFEFEFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
