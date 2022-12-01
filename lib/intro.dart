import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sampleui/home.dart';
class intro extends StatelessWidget {
  const intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home" : (context) => Home(),
      },
      home: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          scrollPhysics: BouncingScrollPhysics(
          ),
          pages: [
            PageViewModel(
              titleWidget: Text("WELCOME !!!",style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(top: 82),
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text('LETS GET STARTED',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                    ),
                  ),
                ),
              ),

              image: Padding(
                padding: const EdgeInsets.only(top:50),
                child: Image.asset('asset/hello.png',
                height:300,
                width: 400,),
              ),

            ),
            PageViewModel(
                titleWidget: Container(
                  color: Colors.black,
                  height: 200,
                  width: 900,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,bottom: 40),
                      child: Text("Introduction screen allow you to have a screen at launcher for example, where you can explain your app. This Widget is very customizable with a great design.",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                body: "CLICK NEXT",
                image: Image.asset('asset/ss.jpg',)
            ),
            PageViewModel(
                titleWidget: Container(
                  height: 100,
                  width:200,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,bottom:5),
                    child: Center(
                      child: Text('LETS BEGIN OUR \n       JOURNEY',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
                body:'click done',
                image:Padding(
                  padding: const EdgeInsets.only(left:240),
                  child: Image.asset('asset/sa.png'),
                )
            ),
          ],
          onDone:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home()));
          },
          onSkip: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
            );
          },
          showSkipButton: true,

          skip: Container(
            color: Colors.black,
            height: 30,
            width: 60,
            child: Center(
              child: Text('skip',style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          back: Text('BACK',style: TextStyle(
              color: Colors.red
          ),),
          done: Container(
            height: 30,
            width: 60,
            color: Colors.green,
            child: Center(
              child: Text('DONE',style: TextStyle(
                  color: Colors.black,
              ),),
            ),
          ),
          next: Container(
            height: 30,
            width: 60,
            color: Colors.green,
            child: Icon(
              Icons.navigate_next,color: Colors.black,
              size: 30,
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: Size.square(12.0),
          activeSize: Size(20,10),
            color:Colors.black,
            activeColor: Colors.green,
            spacing: EdgeInsets.symmetric(horizontal:8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )
          ),
        ) ,
      ),
    );
  }
}
