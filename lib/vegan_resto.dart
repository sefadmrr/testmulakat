import 'package:flutter/material.dart';
import 'package:testmulakat/const/product_list.dart';
import 'package:testmulakat/product/customicon.dart';
import 'package:testmulakat/widgets/image_widget.dart';
import 'package:testmulakat/widgets/png_image_item_widget.dart';
import 'package:testmulakat/widgets/png_image_widget.dart';
import 'package:testmulakat/widgets/popular/heart_widget.dart';
import 'package:testmulakat/widgets/popular/location_star.dart';
import 'package:testmulakat/widgets/popular/location_widget.dart';
import 'package:testmulakat/widgets/popular/paragraph.dart';
import 'package:testmulakat/widgets/popular/popular_text.dart';
import 'package:testmulakat/widgets/popular/testimonials.dart';
import 'package:testmulakat/widgets/popular/title_testimonials.dart';
import 'package:testmulakat/widgets/popular/title_wijie.dart';

class VeganResto extends StatefulWidget {
  const VeganResto({Key? key}) : super(key: key);

  @override
  State<VeganResto> createState() => _VeganRestoState();
}

class _VeganRestoState extends State<VeganResto> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*1,
            child: Stack(
              children: [
                ImageWidget(size: size, pngText: 'photorestaurant'),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.270,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PopularWidget(title: 'Popular',),
                              Row(
                                children: [
                                  LocationWidget(),
                                  HeartWidget(),
                                ],
                              )
                            ],
                          ),
                          TitleWijie(title: 'Wijie Bar and Resto'),
                          LocationStar(icon: CustomIcon().locationIcon, km: '19 KM', iconSecond: CustomIcon().starIcon, rating: '4.8 Rating'),
                          Paragraph(paragraph: 'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .'),
                          Padding(
                            padding: const EdgeInsets.only(left: 33,right: 30,top: 20),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular Menu',
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
                          ),
                          SingleChildScrollView(
                            padding: EdgeInsets.all(8.0),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                PngImageWidget(
                                      size: size,
                                      pngText: 'pizza',
                                      child: PngImageItemWidget(
                                        title: 'Spacy Fresh crab',minute: '12\$'),
                                ),
                                PngImageWidget(
                                  size: size,
                                  pngText: 'chicken',
                                  child: PngImageItemWidget(
                                      title: 'Spacy Fresh crab',minute: '16\$'),
                                ),
                                PngImageWidget(
                                  size: size,
                                  pngText: 'pizza',
                                  child: PngImageItemWidget(
                                      title: 'Spacy Fresh crab',minute: '12\$'),
                                ),
                              ],
                            ),
                          ),
                          TitleTestimonials(title: 'Testimonials'),
                          Testimonials(size: size,pngText: 'women',text: 'This Is great',name: 'Dianne Russell',textSecond: 'So delicious!',),
                          Testimonials(size: size,pngText: 'women',text: 'This Is great',name: 'Dianne Russell',textSecond: 'So delicious!',),
                          Testimonials(size: size,pngText: 'women',text: 'This Is great',name: 'Dianne Russell',textSecond: 'So delicious!',),
                          Testimonials(size: size,pngText: 'women',text: 'This Is great',name: 'Dianne Russell',textSecond: 'So delicious!',),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







