import 'package:flutter/material.dart';

class sebha extends StatefulWidget {
  const sebha({super.key});

  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  List<String> words=["سبحان الله","لا اله الا الله ","الحمد لله","الله اكبر"];
  int index=0;
  int counter=0;
  double rotations=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("اسلامي",style: TextStyle(fontSize: 30,color: Colors.black),),
        elevation: 0.0,

      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"),
          ),
        ),child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 85,),
          Expanded(
            child: AnimatedRotation(
              duration: Duration(microseconds: 400),
               turns:rotations,
              child: Image.asset("assets/images/Group 10.png")),),
          Expanded(
          child: Column(
            children: [
              const Text("عدد التسبيحات",style: TextStyle(fontSize: 25,color: Colors.black,
              fontWeight: FontWeight.normal,decoration: TextDecoration.none)),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFB7935F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("$counter",style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap:(){
                  setState(() {
                    counter++;
                    rotations=rotations+0.05;
                    if(counter>30){
                      counter =0;
                      index++;
                      if(index==words.length){
                        index=0;
                      }
                    }
                  });
                }
                  ,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:Color(0xFFB7935F),
                    borderRadius: BorderRadius.circular(50),

                  ),child: Text("${words[index]}",style: TextStyle(fontSize: 20,color:Colors.white),),
                ),
              )
            ],

          ),)
  ],
      ),
      ),
    );

 }
}

