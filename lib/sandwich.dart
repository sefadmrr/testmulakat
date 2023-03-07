import 'package:flutter/material.dart';
import 'package:testmulakat/product/customicon.dart';
import 'package:testmulakat/widgets/button.dart';
import 'package:testmulakat/widgets/popular/heart_widget.dart';
import 'package:testmulakat/widgets/popular/location_star.dart';
import 'package:testmulakat/widgets/popular/location_widget.dart';
import 'package:testmulakat/widgets/popular/popular_text.dart';
import 'package:testmulakat/widgets/popular/testimonials.dart';
import 'package:testmulakat/widgets/popular/title_wijie.dart';
import 'package:testmulakat/widgets/popular/paragraph.dart';

class Sandwich extends StatefulWidget {
  const Sandwich({Key? key}) : super(key: key);

  @override
  State<Sandwich> createState() => _SandwichState();
}

class _SandwichState extends State<Sandwich> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.3)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  expandedHeight: MediaQuery.of(context).size.height * 0.38,
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image(
                      image: AssetImage('assets/pasta.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(20),
                    child: Container(
                      width: double.infinity,
                      child: Text(''),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PopularWidget(title: 'Populer'),
                          Row(children: [
                            LocationWidget(),
                            HeartWidget(),
                          ],)
                        ],
                      ),
                      TitleWijie(title: 'Rainbow Sandwich\nSugarless'),
                      LocationStar(
                          icon: CustomIcon().locationIcon,
                          km: '19 KM',
                          iconSecond: CustomIcon().starIcon,
                          rating: '4.8 Rating'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Paragraph(paragraph: 'Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.'),
                          Paragraph(paragraph: 'Strowberry'),
                          Paragraph(paragraph: 'Cream'),
                          Paragraph(paragraph: 'Wheat'),
                          Paragraph(paragraph: 'Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.')
                        ],
                      ),
                      Testimonials(
                        size: size,
                        pngText: 'women',
                        text: 'This Is great',
                        name: 'Dianne Russell',
                        textSecond: 'So delicious!',
                      ),
                      Testimonials(
                        size: size,
                        pngText: 'women',
                        text: 'This Is great',
                        name: 'Dianne Russell',
                        textSecond: 'So delicious!',
                      ),
                      Testimonials(
                        size: size,
                        pngText: 'women',
                        text: 'This Is great',
                        name: 'Dianne Russell',
                        textSecond: 'So delicious!',
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonWidget(title: 'Add to Chart', onPressed: (){}),
            )
          ],
        ),
      ),
    );
  }
}




