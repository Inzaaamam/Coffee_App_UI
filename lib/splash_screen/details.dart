import 'package:coffee/color.dart';
import 'package:coffee/splash_screen/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawerScrimColor: AppColurs.splashButton,
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30,0),
        child: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 18,
                        )),
                    const Text(
                      'Detail',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const Icon(
                      Icons.favorite_border,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage(
                        'images/2a.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            // height: 20,
                            ),
                        Text(
                          'Cappucino',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColurs.fontColorBlack),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'with Chocolate',
                          style: TextStyle(
                              fontSize: 12, color: AppColurs.splashText2),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColurs.starColor,
                              size: 20,
                            ),
                            Text(
                              ' 4.8',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColurs.fontColorBlack,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '(230)',
                              style: TextStyle(
                                  fontSize: 12, color: AppColurs.splashText2),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 70,
                              ),
                              Container(
                                height: 44,
                                // width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: AppColurs.iconBG),
                                child: Image.asset(
                                  'images/2sr1.png',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 44,
                                // width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: AppColurs.iconBG),
                                child: Image.asset(
                                  'images/2sr2.png',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: AppColurs.dividerColor,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColurs.fontColorBlack,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReadMoreText(
                  'A cappuccino is an approximately approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.', style: TextStyle(color: AppColurs.splashText2,
                  fontSize: 14),
                  trimMode: TrimMode.Line,
                  trimLines: 3,
                  colorClickableText: AppColurs.splashButton,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  preDataTextStyle: TextStyle(color: AppColurs.splashText2),
                  postDataTextStyle: TextStyle(color: AppColurs.splashText2),
                  lessStyle: TextStyle(fontWeight: FontWeight.w600,
                    color: AppColurs.splashButton, fontSize: 14),
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColurs.splashButton),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Size',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColurs.fontColorBlack,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 43,
                      width: 96,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: AppColurs.dividerColor, width: 1),
                          color: AppColurs.splashText),
                      child: const Center(child: Text('S')),
                    ),
                    Container(
                      height: 43,
                      width: 96,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: AppColurs.splashButton, width: 1),
                          color: AppColurs.btgColor),
                      child: const Center(child: Text('M')),
                    ),
                    Container(
                      height: 43,
                      width: 96,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: AppColurs.dividerColor, width: 1),
                          color: AppColurs.splashText),
                      child: const Center(child: Text('L')),
                    ),

                    // ElevatedButton(onPressed: (){}, child: Center(child: Text('S')),),
                    // ElevatedButton(onPressed: (){}, child: Text('A'),),
                    // ElevatedButton(onPressed: (){}, child: Text('S'),),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14, color: AppColurs.splashText2)),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '\$ 4.53',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColurs.splashButton),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderScreen()));
                            },
                            child: Container(
                                height: 62,
                                width: 230,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: AppColurs.splashButton),
                                child: const Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      color: AppColurs.splashText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
