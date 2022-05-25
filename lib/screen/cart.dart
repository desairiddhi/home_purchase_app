import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List image = [
    'assets/i_1.png',
    'assets/i_2.png',
    'assets/i_3.png',
  ];

  List name = [
    'Nordic recliner',
    'Nordic recliner',
    'Nordic Fashion Chair',
  ];
  List text = [
    'Dark Grey',
    'Black',
    'Sea blue',
  ];
  List price = [
    '\$399',
    '\$399',
    '\$299',
  ];
  List num = [
    '1',
    '1',
    '2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  const Text(
                    'Cart',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333)),
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
              SizedBox(
                height: 550,
                child: ListView.builder(
                    itemCount: price.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return listItem(
                          image: image[index],
                          name: name[index],
                          text: text[index],
                          price: price[index],
                          num: num[index]);
                    }),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  //SizedBox(height: 20),
                  Text(
                    'Total (3 items) :',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB8B8B8)),
                  ),
                  Text(
                    '\$1,695',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 80),
              Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Procced to checkout',
                      style: TextStyle(
                          color: Color(0xFFFEFEFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF9C9591),
                          borderRadius: BorderRadius.circular(7)),
                      child: const Icon(Icons.arrow_right_alt_rounded),
                    ),
                  ],
                ),
              )
            ])));
  }
}

Widget listItem(
    {String? image, String? name, String? text, String? price, String? num}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      height: 130,
      width: 400,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 226, 226),
                borderRadius: BorderRadius.circular(10)),
            child: Image(image: AssetImage(image!)),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 60, top: 20),
                child: Text(
                  name!,
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 128),
                child: Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Color(0xFFB9B9B9),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                ),
                child: Row(
                  children: [
                    Text(price!,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF272727))),
                    const SizedBox(width: 80),
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
                    Text(
                      num!,
                      style: const TextStyle(fontSize: 20),
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
              )
            ],
          )
        ],
      ),
    ),
  );
}
