import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email =TextEditingController();
  TextEditingController password =TextEditingController();
  bool text= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding:  EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.end,
          children: [
               Center(child: Image.asset("images/talabaty.png",height:200,width: 200,)),
            SizedBox(height:20,),
            TextField(  textAlign:TextAlign.end,
                decoration:InputDecoration(  fillColor:Colors.grey.withOpacity(0.05),filled: true,
              hintText:"الاسم ",border:OutlineInputBorder(
              borderRadius:BorderRadius.circular(25)
            ),



            ),
 controller:email,
              onChanged:(val) {
        print("${email.text}");
              }

            ),
            SizedBox(height:20,),
            TextField(  textAlign:TextAlign.end,
                decoration:InputDecoration( fillColor:Colors.greenAccent.withOpacity(0.2),filled:true ,
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(25)
                ),
              hintText:"رقم الهاتف",
              labelStyle: TextStyle(fontSize:22,fontWeight:FontWeight.bold,color:Colors.black),

            ),
                controller:password,
                onChanged:(val) {
                  print("${password.text}");
                }

            ),



            SizedBox(height:20,),
            Row( crossAxisAlignment:CrossAxisAlignment.end,
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                Icon(Icons.arrow_drop_down_sharp),
                Text("اذا كان لديك مشاركة اضغط هنا"),

              ]
            ),
            TextField(  textAlign:TextAlign.end,
                decoration:InputDecoration( fillColor:Colors.greenAccent.withOpacity(0.2),filled:true ,
                  border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(25)
                  ),

                  hintText:"رقم المشاركة",
                  labelStyle: TextStyle(fontSize:22,fontWeight:FontWeight.bold,color:Colors.black),

                ),
                controller:password,
                onChanged:(val) {
                  print("${password.text}");
                }

            ),

            Container( height:50,width:400,
                  margin:EdgeInsets.all(20),

               child:ElevatedButton(

                 style: ButtonStyle(    backgroundColor: MaterialStateProperty.all(Colors.red),
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25),
                             side: BorderSide(color: Colors.red)
                         )
                     )
                 ),

                 onPressed: () {  },
                   child: Text("التالي",style:TextStyle(
                 fontSize:18,fontWeight:FontWeight.bold
               ),),



               ),
            )

          ],
        ),
      ),


    );
  }
}



