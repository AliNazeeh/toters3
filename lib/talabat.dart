import 'package:flutter/material.dart';


class toters extends StatefulWidget {
  const toters({Key? key}) : super(key: key);

  @override
  State<toters> createState() => _totersState();
}

class _totersState extends State<toters> {
  List <String> foodnames =[ "Burger","KFC","Desert","Saj","Burger"

  ];
  List <String> foodimages = [
    "images/burger.jpg","images/KFC.png","images/desert.jpg","images/saj.jpg","images/burger.jpg",
  ];
  List <String> foodimages2 = [
    "images/plate1.jpg","images/plate.jpg","images/zarzor.png"
  ];
  List <String> restnames = [
    "Royal galaxy","Mado","Zarzor"
  ];

  List <String> appfeautures = [
    "All","Discount","Support the wallet","Talabaty Delevery"
  ];


  List<IconData> icons = [Icons.home, Icons.discount, Icons.wallet,Icons.delivery_dining,];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:AppBar( backgroundColor:Colors.white,
          leading: Icon( Icons.search,color:Colors.black,),
          actions: [ Icon(Icons.notifications_active_outlined,color: Colors.black,)],
          title: Row( mainAxisAlignment:MainAxisAlignment.center,
            children: [   Icon(Icons.keyboard_arrow_down_rounded,color:Colors.black,),
              Text("المنصور",style:TextStyle(color:Colors.black
              ),) ,

            ],
          ),
          elevation:0.0,
        ),
        body: Column( mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container( height:180,

              child:ListView.builder( scrollDirection:Axis.horizontal,
                itemCount:5,
                itemBuilder: (BuildContext context, int index) { return
                  Column( mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [       foodbox(foodimages[index]),

                      Text(foodnames[index])

                    ],
                  );

                },

              ),

            ),
            Text("Most popular places" ,),
            Padding(padding:EdgeInsets.only(bottom:8)),
            Container( color:Colors.black,
              height:2,width:200,
            ),
            Padding(padding: EdgeInsets.only(bottom:10)),
            Container( height:120
              ,

              child:ListView.builder( itemCount:5,
                  scrollDirection:Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) { return
                    Column( mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [       foodbox2(foodimages[index]),

                        Text(foodnames[index])

                      ],
                    );
                  }





              ),

            ),
            Container(
              height:50,
              child:ListView.builder( scrollDirection:Axis.horizontal,
                itemCount:4,
                itemBuilder: (BuildContext context, int index)

                { return
                  textbox(appfeautures[index],Colors.grey,icons[index]);


                },


              ),
            ),
            Padding(padding:EdgeInsets.only(top: 20)),

            Column( mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container( height:200,width:350,
                    child:ListView.builder( scrollDirection:Axis.vertical,
                      itemCount:3,
                      itemBuilder: (BuildContext context, int index) {
                        return
                          Column(
                            children: [
                              Stack(
                                  children:[ Container( height:160,width:400
                                    ,decoration:BoxDecoration( borderRadius:BorderRadius.circular(25),
                                      color:Colors.cyan,
                                      image:DecorationImage(image: AssetImage(foodimages2[index]),
                                        fit:BoxFit.cover,
                                      ),

                                    ),
                                  ),
                                    Positioned( top:15,right: 15,
                                      child:
                                      Container(
                                        height:50,width:50,
                                        child:Icon(Icons.pedal_bike_sharp),
                                        decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(15),
                                          color:Colors.white,
                                        ),
                                      ),
                                    ),
                                    Positioned ( top:15,right:75,
                                      child: Container(
                                        height: 50,width: 100,
                                        child:
                                        Center(child: Text("promo code")),
                                        decoration:BoxDecoration(
                                            borderRadius:BorderRadius.circular(15),
                                            color:Colors.white
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                              Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(restnames[index],style:TextStyle(fontSize:18,fontWeight:FontWeight.bold),),
                                  Text("minimum order 5000 IQD")
                                ],
                              ),

                              Padding(
                                padding:  EdgeInsets.only(top:10),
                                child: Row( mainAxisAlignment:MainAxisAlignment.start,
                                  children: [
                                    Text("AL-Mansour "),
                                    Icon(Icons.location_on),
                                    SizedBox(width:20,),
                                    Text("good"),
                                    Icon(Icons.emoji_emotions),
                                    SizedBox(width:30,),
                                    Text("2500 IQD delivery cost")
                                  ],
                                ),
                              ),

                            ],
                          );
                      },

                    ),
                  ),
                ),
              ],
            ),

          ],
        )


    );
  }

  Container foodbox(String image){
    return Container( height:150,width: 150, margin:EdgeInsets.symmetric(horizontal: 10),
      decoration:BoxDecoration( color:Colors.red,
          borderRadius:BorderRadius.circular(30),
          image:DecorationImage(image: AssetImage(image),
            fit:BoxFit.cover,

          )
      ),
    );


  }
  Container foodbox2(String image){
    return Container( height:80,width: 150, margin:EdgeInsets.symmetric(horizontal: 10),
      decoration:BoxDecoration( color:Colors.red,
          borderRadius:BorderRadius.circular(30),
          image:DecorationImage(image: AssetImage(image),
            fit:BoxFit.cover,

          )
      ),
    );


  }
  Container textbox(String te,var clr,var icon ){
    return Container(
      child:Row( mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Text(te,style:TextStyle(color:Colors.white),),
          Padding(padding:EdgeInsets.only(right: 3)),
          Icon(icon,color:Colors.white,)
        ],
      ),
      margin:EdgeInsets.symmetric(horizontal: 10),
      padding:EdgeInsets.all(10),
      decoration:BoxDecoration( color:clr,
        borderRadius:BorderRadius.circular(20),

      ),
    );


  }
}
