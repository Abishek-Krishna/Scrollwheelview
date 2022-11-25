import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
            body:Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListWheelScrollView(
                  itemExtent: 250,
                    magnification: 20,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Text('ABISHEK',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Text('LOGESH ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Text('RAVI',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Text('Balaji',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Text('SPLENDER JOE',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
        ),
                ),
          ]  ),
            ),
        ),
    );
  }
}
