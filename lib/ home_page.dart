import 'package:flutter/material.dart';
import 'package:testmulakat/const/product_list.dart';
import 'package:testmulakat/const/project_color.dart';
import 'package:testmulakat/login_page.dart';
import 'package:testmulakat/sandwich.dart';
import 'package:testmulakat/vegan_resto.dart';
import 'package:testmulakat/widgets/build_title.dart';
import 'package:testmulakat/widgets/buld_gesture_ice_cream.dart';
import 'package:testmulakat/widgets/png_image_item_widget.dart';
import 'package:testmulakat/widgets/png_image_widget.dart';
import 'package:testmulakat/widgets/search_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String title3 = 'Nearest Restaurant';
  final String title4 = 'Popular Menu';

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    LoginPage(),
    Sandwich(),
    Text(
      'Index 2: Shopping',
      style: optionStyle,
    ),
    Text(
      'Index 3: : Message',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xfF53E88B)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xfF53E88B)),
              label: 'Person',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined,
                  color: Color(0xfF53E88B)),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined, color: Color(0xfF53E88B)),
              label: 'Message',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildTitle(title: 'Find Your', title2: 'Favorite Food'),
                SizedBox(height: 18),
                buildSearchMenu(),
                SizedBox(height: 20),
                buildGestureBuy(context),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title3,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print("Tıklandı.");
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(color: Color(0xFFFF7C32)),
                        ))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VeganResto()));

                        },
                        child: PngImageWidget(
                            size: size,
                            pngText: 'Resturant_Image',
                            child: PngImageItemWidget(
                              title: 'Vegan Resto',minute: '12 Mins',)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sandwich()));

                        },
                        child: PngImageWidget(
                            size: size,
                            pngText: 'restaurant2',
                            child: PngImageItemWidget(
                              title: 'Healty Food',
                              minute: '12 Mins',
                            )),
                      ),
                      GestureDetector(
                        child: PngImageWidget(
                            size: size,
                            pngText: 'photomenu',
                            child: PngImageItemWidget(
                              title: 'Vegan Resto',minute: '12 Mins',)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title4,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print("Tıklandı.");
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(color: Color(0xFFFF7C32)),
                        ))
                  ],
                ),
                Column(
                  children: [
                    ProductList(size: size, pngText: 'photomenu',price: '15 TL',productName: 'Green Noddle'),
                    ProductList(size: size, pngText: 'photomenu',price: '15 TL',productName: 'Green Noddle'),
                    ProductList(size: size, pngText: 'photomenu',price: '15 TL',productName: 'Green Noddle'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }




}
