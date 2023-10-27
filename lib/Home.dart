

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("الصفحة الرئيسية",style: TextStyle(fontSize: 20, color: Color(0xff656565)),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SvgPicture.asset("assets/images/menu.svg",height: 16,width: 16,),
            ),
          ],
          leading:Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset("assets/images/search.svg",),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("مرحبا أميرة",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff484541)),),
                      Text("لنرى توصيات الفساتين لك....",style: TextStyle(color: Color(0xff979491)),)
                    ],
                  ),
                ),
                Stack(
                  children: [
                    SvgPicture.asset("assets/images/homeCardModel.svg"),
                    Container(
                      height: 142,
                      child: Card(
                        color: Color(0xffB59F7C),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("تاجر الآن واحصل على خصم فوري",style: TextStyle(color: Colors.white, fontSize: 12),),
                                Row(
                                  children: [
                                    Text("ابدأ الآن",style: TextStyle(color: Colors.white, fontSize: 12),),
                                    SvgPicture.asset("assets/images/arrowLeft.svg")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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
