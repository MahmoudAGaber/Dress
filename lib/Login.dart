

import 'package:dress/Registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background2.png",),
                fit: BoxFit.fill
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40, top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SvgPicture.asset("assets/images/logo.svg",height: 53,width: 67,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text('تسجيل الدخـول',style: TextStyle(fontSize: 32,color: Color(0xff656565)),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 12),
                          child: Text("البريد الالكتروني",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xff484541)),),
                        ),
                        Container(
                          height: 51,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.phone,
                            textDirection: TextDirection.rtl,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                             contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                fillColor: Colors.white,
                                filled: true,
                                hintTextDirection: TextDirection.rtl,
                                hintText: "بريدك الالكتروني",
                                hintStyle: TextStyle(color: Color(0xff484541),fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 12),
                          child: Text("كلمة المرور",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xff484541)),),
                        ),
                        Container(
                          height: 51,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.phone,
                            textDirection: TextDirection.rtl,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                fillColor: Colors.white,
                                filled: true,
                                hintTextDirection: TextDirection.rtl,
                                hintText: "كلمة المرور الخاصة بك",
                                hintStyle: TextStyle(color: Color(0xff484541),fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text("استعادة كلمة المرور",style: TextStyle(fontSize: 13,color: Color(0xff484541)),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 40,top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: (){},
                                child: Text("تسجيل دخول", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.white),),
                                style: TextButton.styleFrom(
                                  fixedSize: Size(279,59),
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                ))]),
                    ),

                    Text("أو تابع تسجيل الدخول عبر",style: TextStyle(fontSize: 13,color: Color(0xff484541)),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/apple.svg",height: 50,width: 50,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: SvgPicture.asset("assets/images/facebook.svg",height: 50,width: 50,),
                          ),
                          SvgPicture.asset("assets/images/google.svg",height: 50,width: 50,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (contex)=> Registration()));
                        },
                          child: Text("ليس لديك حساب؟ اشترك الآن",style: TextStyle(fontSize: 13,color: Color(0xff484541)),)),
                    ),
                  ],
                ),
              ),

             Expanded(
               child: Align(
                 alignment: Alignment.bottomCenter,
                   child: Image.asset("assets/images/test.png",)),
             )
            ],
          ),),
      ),
    );
  }
}
