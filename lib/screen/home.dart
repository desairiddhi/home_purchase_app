import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    'assets/image.png',
    'assets/image_two.png',
    'assets/image_four.png',
    'assets/chair.png',
  ];

  List name = [
    'Nordic chair',
    'Nordic sofa chair',
    'Armchair',
    'Velvet Armchair'
  ];

  List price = ['\$399', '\$699', '\$499', '\$999'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'home',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New arrival',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF252525),
                      fontSize: 25),
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: const Color(0xFfFEFEFF),
                  child: const Icon(Icons.arrow_right_alt),
                )
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  itemCount: price.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return listItem(
                        image: image[index],
                        name: name[index],
                        price: price[index],
                        context: context);
                  }),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommend',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_right_alt_rounded))
              ],
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                  itemCount: price.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return listItem(
                        image: image[index],
                        name: name[index],
                        price: price[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

Widget listItem(
    {String? image, String? name, String? price, BuildContext? context}) {
  return SizedBox(
    height: 400,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image!))),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 110),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                //  Navigator.push(context!, MaterialPageRoute(builder: (context)=>const ProductPage())
                // );
              },
              child: const Text('New'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 130),
            child: Text(
              name!,
              style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFf252525),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 80),
            child: Text('⭐ ⭐ ⭐ ⭐ ⭐'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, right: 120),
            child: Text(
              'Price',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Text(
              price!,
              style: const TextStyle(
                  color: Color(0xFFAFAFAF),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
}
