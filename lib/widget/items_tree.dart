import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/cart.dart';
import 'package:reun_kra_jok/screen/decsrip_plant.dart';

class ListTree extends StatefulWidget {
  const ListTree({Key? key}) : super(key: key);

  @override
  State<ListTree> createState() => _ListTreeState();
}

class _ListTreeState extends State<ListTree> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Fiddle Fig",
      "price": "300 ฿",
      "images":
          "https://images.rawpixel.com/image_250/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BmLXM4OC1wbS0yMDQ4XzMuanBn.jpg",
    },
    {
      "title": "Eucalyptus",
      "price": "600 ฿",
      "images":
          "https://images.rawpixel.com/image_250/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BmLXM4OC1wbS0yMzI5LWtvaWdzeWN3LmpwZw.jpg"
    },
    {
      "title": "Philodendron",
      "price": "550 ฿",
      "images":
          "https://images.rawpixel.com/image_600/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BmLXM4OC1wbS0xOTcxXzIuanBn.jpg",
    },
    {
      "title": "Snake Plant",
      "price": "400 ฿",
      "images":
          "https://images.rawpixel.com/image_600/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtczg4LXBtLTIwMTRfMS5qcGc.jpg",
    },
    {
      "title": "Pencil cactus",
      "price": "560 ฿",
      "images":
          "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtczg4LXBtLTIyMjhfMS1rb2k1MTVqeC5qcGc.jpg",
    },
    {
      "title": "Alocasia Black Velvet",
      "price": "700 ฿",
      "images":
          "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BmLXM4OC1wbS0yMjAxXzQuanBn.jpg",
    },
    {
      "title": "Monstera",
      "price": "500 ฿",
      "images":
          "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BmLXM4OC1hay0xNjQwXzMuanBn.jpg",
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0, //column
        mainAxisSpacing: 18.0, //row
        mainAxisExtent: 330, //widht
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            primary: Colors.white,
            elevation: 0.0,

            // background,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DescPage();
              }));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              color: Color.fromARGB(255, 233, 233, 233),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //img
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    "${gridMap.elementAt(index)['images']}",
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                //ส่วนใส่ข้อความ ราคา
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['title']}",
                        style: Theme.of(context).textTheme.subtitle1!.merge(
                              const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 57, 57, 57)),
                            ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${gridMap.elementAt(index)['price']}",
                            style: Theme.of(context).textTheme.subtitle2!.merge(
                                  const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 103, 108, 105),
                                  ),
                                ),
                          ),
                          const SizedBox(
                            height: 0.8,
                          ),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 26)),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Cart();
                                  }));
                                },
                                icon: const Icon(
                                  CupertinoIcons.cart,
                                  size: 20,
                                  color: Color.fromARGB(255, 103, 108, 105),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
