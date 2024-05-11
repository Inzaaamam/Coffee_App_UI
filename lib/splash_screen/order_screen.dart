import 'package:coffee/color.dart';
import 'package:coffee/splash_screen/map.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30,0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      'Order',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColurs.orderContainer),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 54,
                              width: 153,
                              decoration: BoxDecoration(
                                  color: AppColurs.splashButton,
                                  borderRadius: BorderRadius.circular(14)),
                              child: const Center(
                                child: Text(
                                  'Deliver',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColurs.splashText),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 48,
                              width: 153,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14)),
                              child: const Center(
                                child: Text(
                                  'Pick Up',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColurs.fontColorBlack),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Delivery Address',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColurs.fontColorBlack),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Jl. Kpg Sutoyo',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColurs.fontColorBlack),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColurs.splashText2),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      height: 27,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColurs.splashText,
                          border: Border.all(
                              color: AppColurs.dividerColor, width: 1)),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              size: 17,
                              color: AppColurs.iconMenu,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Edit Address',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 27,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColurs.splashText,
                          border: Border.all(
                              color: AppColurs.dividerColor, width: 1)),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.description,
                              size: 17,
                              color: AppColurs.iconMenu,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Add Notes',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: AppColurs.dividerColor,
                ),
                const SizedBox(
                  height: 15,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                                image: AssetImage('images/Rectangle.png'),
                                fit: BoxFit.contain),
                          )),
                      const Spacer(
                        flex: 1,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cappucino',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColurs.fontColorBlack,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('with Chocolate',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColurs.splashText2,
                              ))
                        ],
                      ),
                      const Spacer(flex: 3),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ignore: sized_box_for_whitespace
                          Container(
                            height: 27,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: AppColurs.splashText,
                                        border: Border.all(
                                            color: AppColurs.dividerColor,
                                            width: 1)),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 17,
                                      color: AppColurs.dividerColor,
                                    )),
                                const SizedBox(
                                  width: 14,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColurs.fontColorBlack,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Container(
                                  height: 27,
                                  width: 27,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: AppColurs.splashText,
                                      border: Border.all(
                                          color: AppColurs.dividerColor,
                                          width: 1)),
                                  child: const Icon(
                                    Icons.add,
                                    size: 17,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 3.0,
                height: 4,
                color: AppColurs.dividerColor,
              ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30 , 0 ,30 ,0),
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border:
                          Border.all(color: AppColurs.dividerColor, width: 1)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 18, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.new_releases,
                            size: 17,
                            color: AppColurs.splashButton,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          // Spacer(),
                          Text(
                            '1 Discount is applied',
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColurs.fontColorBlack,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 17,
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Payment Summary',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColurs.fontColorBlack,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColurs.fontColorBlack),
                    ),
                    Text('\$4.53',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColurs.fontColorBlack,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Fee',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColurs.fontColorBlack),
                    ),
                    Text('\$2.0  \$1.0',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColurs.fontColorBlack,
                            fontWeight: FontWeight.w600)),
                    // Text('\$4.53'),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(
                  color: AppColurs.dividerColor,
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColurs.fontColorBlack),
                    ),
                    Text('\$5.53',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColurs.fontColorBlack,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.file_open,
                      color: AppColurs.splashButton,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 24,
                      width: 112,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColurs.dividerColor),
                      child: Row(children: [
                        Container(
                          height: 24,
                          width: 51,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColurs.splashButton),
                          child: const Center(
                            child: Text(
                              'Cash',
                              style: TextStyle(
                                  color: AppColurs.splashText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Container(
                          height: 24,
                          width: 51,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              '\$5.53',
                              style: TextStyle(
                                  color: AppColurs.fontColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    //  Spacer(),
                    //  Spacer(),
                    //  Spacer(),
                    const Icon(
                      Icons.pending,
                      color: AppColurs.iconMenu,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MapScreen()));
                  },
                  child: Container(
                    height: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: AppColurs.splashButton),
                    child: const Center(
                        child: Text(
                      'Order',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColurs.splashText,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
               ],),
             ) 
          
          ],
        ),
      ),
    );
  }
}
