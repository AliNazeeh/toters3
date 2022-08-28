import 'dart:developer';

import 'package:flutter/material.dart';

class tot3 extends StatefulWidget {
  const tot3({Key? key}) : super(key: key);

  @override
  State<tot3> createState() => _tot3State();
}

class _tot3State extends State<tot3> {
  String radioItem = '';
  bool checkedValue = true;
  bool checkvalue2= false;
  int counter = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          Stack(
            clipBehavior:Clip.none,


            children: [
              Container(
                height:260,
                width:MediaQuery.of(context).size.width,
                child:Image.asset("images/burger.jpg"),
              ), Positioned( top:38,right:20,
                  child: Container( child:Icon(Icons.arrow_forward,color:Colors.black,),
                    height:50,width:50,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:Colors.white,
                    ),
                  ))

              ,Positioned( top:160,
                child: Container(
                  width:MediaQuery.of(context).size.width
                  ,height:650,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(25),
                    color:Colors.white,
                  ),
                  child:
                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Column( mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.end,
                      children: [
                        Text("برجرات",style:TextStyle(
                            fontSize:25,
                            fontWeight:FontWeight.bold,color:Colors.red
                        ),),
                        Row( mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.emoji_emotions ),
                            Text("جيد جدا",style:TextStyle(
                                fontSize:18
                            ),),
                            Text("سعر التوصبل : 1500  ",style:TextStyle(
                                fontSize:18
                            ),),
                            Column( mainAxisAlignment:MainAxisAlignment.start,
                              crossAxisAlignment:CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.directions_bike_rounded),
                                Text("د ع",style:TextStyle(
                                    fontSize:18
                                ),
                                ),
                              ],
                            )

                          ],
                        ),
                        Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("الحد الادنى للطلب :",style:TextStyle(
                                        fontSize:18
                                    ),),
                                    Text("5000 دع",style:TextStyle(
                                        fontSize:18
                                    ),)


                                  ],
                                ),
                              ],
                            ),

                            Row( mainAxisAlignment:MainAxisAlignment.end,
                              children: [

                                Text("المنصور",style:TextStyle(
                                    fontSize:18
                                ),),
                                Icon(Icons.location_on),

                              ],
                            ),


                          ],
                        ),
                        Row( mainAxisAlignment:MainAxisAlignment.end,
                          children: [

                            Text("وقت التوصيل المتوقع من ساعة الى نصف ساعة",
                              style:TextStyle(fontSize: 18),
                            ),
                            Icon(Icons.lock_clock),
                          ],
                        ),
                        Text("سندويج فيليه دجاج",style:TextStyle(fontSize:25,
                            fontWeight:FontWeight.bold,color:Colors.red
                        ),),
                        Container(
                          height:80,width:400,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(25),
                            color:Colors.grey.withOpacity(0.3),
                          ),
                          child:Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.keyboard_arrow_up_rounded),
                              Column( mainAxisAlignment:MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.end,
                                children: [
                                  Text("اضافات",style:TextStyle(fontSize: 20),),
                                  Text("اختياري",style:TextStyle(fontSize: 18),),

                                ],
                              ),

                            ],
                          ),
                        ),
                        Text("تعلمات خاصة",style:TextStyle(fontSize:25),),
                        Container(
                          height:80,width:400,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(25),
                            color:Colors.grey.withOpacity(0.3),
                          ),
                          child:Row( mainAxisAlignment:MainAxisAlignment.center,
                            children: [

                              Center(child: Text("اذا كان لديك ملاحضات ",style:TextStyle(color:Colors.grey),))

                            ],
                          ),
                        ),
                        // Padding(padding: EdgeInsets.only(top: 20)),

                      ],
                    ),
                  ),

                ),



              )


            ],


          ),
       Column( mainAxisAlignment:MainAxisAlignment.end,
         crossAxisAlignment:CrossAxisAlignment.end,
         children: [
          Container(
            height:425,
            child: Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: increament,
                  child:Icon(Icons.add),
backgroundColor: Colors.teal,
                ),
                Text("$counter",style:TextStyle(fontSize:20),),
                FloatingActionButton(
                  onPressed:decreament,
                  child:Icon(Icons.remove),
                  backgroundColor:Colors.teal,

                )
              ],
            ),
          ),
           Padding(padding: EdgeInsets.only(top:15)),
           Center(
             child: Container( child:
             Center(child: Text("اضف الى السلة",style:TextStyle(fontSize:20,color:Colors.white,))),
               height:50,width:300,
               decoration:BoxDecoration(
                 borderRadius:BorderRadius.circular(25),
                 color:Colors.red,

               ),
             ),
           )
         ],
       )
        ],
      )








    );

  }
 void increament(){
   setState(() {
     counter++;
   });
  }
 void decreament(){

    if(counter<1){
      return;
    }
    setState(() {
        counter--;

    });
  }
}
