import 'package:flutter/material.dart';


const textStyle22White = TextStyle(
  fontSize: 22,
  color: Colors.white,
  fontWeight: FontWeight.w500,
  height: 24 / 22
);

const textStyle13grey = TextStyle(
    fontSize: 13,
    color: Color.fromRGBO(255, 255, 255, 0.5),
    fontWeight: FontWeight.w500,
    height: 15 / 13
);

const textStyle16White = TextStyle(
    fontSize: 16,
    color: Color.fromRGBO(255, 255, 255, 1),
    fontWeight: FontWeight.w500,
    height: 19 / 16
);

const textStyle16green = TextStyle(
    fontSize: 16,
    color: Color.fromRGBO(118, 212, 129, 1),
    fontWeight: FontWeight.w500,
    height: 19 / 16,
    decoration: TextDecoration.underline
);

const textStyle18White = TextStyle(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.w500,
  height: 1
);

const textStyle16grey = TextStyle(
  fontSize: 16,
  color: Color.fromRGBO(255, 255, 255, 0.44),
  fontWeight: FontWeight.w500,
  height: 19 / 16
);

const textStyle24White = TextStyle(
  fontSize: 24,
  color: Colors.white,
  fontWeight: FontWeight.w500,
  height: 29 / 24
);

const textStyle15White = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    height: 1
);

const textStyle14White = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    height: 1
);

const textStyle17White = TextStyle(
    fontSize: 17,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    height: 1
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget Circle(String color){
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color == 'green'?Color.fromRGBO(118, 212, 129, 1):Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child:Container(
              width: 467,
              height: 313,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(64, 64, 64, 1),
                  ),
                color: Colors.black87
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/icon-soil.png',width: 152,height: 118,),
                      Text('Soil',style: textStyle22White,),
                      SizedBox(height: 7,),
                      Text('Brand Name',style: textStyle13grey,),
                      Container(
                        width: 80,
                        height: 43,
                        margin: EdgeInsets.only(top: 25,bottom: 27),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Circle('white'),
                                SizedBox(width: 5,),
                                Text('Disuse',style: textStyle16White,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Circle('green'),
                                SizedBox(width: 5,),
                                Text('1148kwh',style: textStyle16green,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 26,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 39,),
                      Text('( Zone 1 )',style: textStyle18White,),
                      Container(
                        height: 48,
                        margin: EdgeInsets.only(top: 21),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('EC',style: textStyle16grey,),
                            Text('--',style: textStyle24White,),
                          ],
                        ),
                      ),
                      Container(
                        height: 48,
                        margin: EdgeInsets.only(top: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('PH',style: textStyle16grey,),
                            Text('--',style: textStyle24White,),
                          ],
                        ),
                      ),
                      Container(
                        height: 48,
                        margin: EdgeInsets.only(top: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Temperature',style: textStyle16grey,),
                            Text('--',style: textStyle24White,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
      )
    );

  }
}
