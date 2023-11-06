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
  color: Color.fromRGBO(255, 255, 255, 0.5),
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

  Widget Circle(){
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(118, 212, 129, 1)),
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
                      SizedBox(height: 9,),
                      Image.asset('images/icon-environment.png',width: 152,height: 105,),
                      Text('Environment',style: textStyle22White,),
                      SizedBox(height: 3,),
                      Text('Brand Name',style: textStyle13grey,),
                      Container(
                        width: 80,
                        height: 43,
                        margin: EdgeInsets.only(top: 25,bottom: 27),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Circle(),
                                SizedBox(width: 5,),
                                Text('ONline',style: textStyle16White,),
                              ],
                            ),
                            SizedBox(height: 1,),
                            Row(
                              children: [
                                Circle(),
                                SizedBox(width: 5,),
                                Text('1148kwh',style: textStyle16green,),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 34,
                        height: 34,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(136, 194, 144, 1),
                        ),
                        child: Icon(Icons.power_settings_new,size: 28,),
                      )
                    ],
                  ),
                  SizedBox(width: 26,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 39,),
                      Text('( Zone 1 )',style: textStyle18White,),
                      Container(
                        margin: EdgeInsets.only(top: 21),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Temperature',style: textStyle16grey,),
                            SizedBox(height: 2,),
                            Container(
                              height: 29,
                              child: Row(
                                children: [
                                  Text('24',style: textStyle24White,),
                                  Container(
                                    height: 29,
                                    padding: EdgeInsets.only(top: 2.5,left: 2),
                                    alignment: Alignment.topLeft,
                                    child: Text('\u2103',style: textStyle16White,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rainfall',style: textStyle16grey,),
                            SizedBox(height: 2,),
                            Container(
                              height: 29,
                              child: Row(
                                children: [
                                  Text('0.5',style: textStyle24White,),
                                  Container(
                                    height: 29,
                                    padding: EdgeInsets.only(left: 2,top: 0.5),
                                    alignment: Alignment.topLeft,
                                    child: Text('mm',style: textStyle15White,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Brightness',style: textStyle16grey,),
                            SizedBox(height: 2,),
                            Container(
                              height: 29,
                              child: Row(
                                children: [
                                  Text('200',style: textStyle24White,),
                                  Container(
                                    height: 29,
                                    padding: EdgeInsets.only(top: 3.5,left: 2),
                                    alignment: Alignment.topLeft,
                                    child: Text('Lx',style: textStyle14White,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 44,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 57,),
                      Container(
                        margin: EdgeInsets.only(top: 21),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Humidity',style: textStyle16grey,),
                            SizedBox(height: 2,),
                            Container(
                              height: 29,
                              child: Row(
                                children: [
                                  Text('80',style: textStyle24White,),
                                  Container(
                                    height: 29,
                                    padding: EdgeInsets.only(top: 4,left: 2),
                                    alignment: Alignment.topLeft,
                                    child: Text('%',style: textStyle17White,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Airflow',style: textStyle16grey,),
                            SizedBox(height: 2,),
                            Container(
                              height: 29,
                              child: Row(
                                children: [
                                  Text('3-4',style: textStyle24White,),
                                  Container(
                                    height: 29,
                                    padding: EdgeInsets.only(left: 2,top: 3),
                                    alignment: Alignment.topLeft,
                                    child: Text('Levle',style: textStyle14White,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pressure',style: textStyle16grey,),
                            SizedBox(height: 2,),
                            Container(
                              height: 29,
                              child: Row(
                                children: [
                                  Text('101',style: textStyle24White,),
                                  Container(
                                    height: 29,
                                    padding: EdgeInsets.only(top: 4,left: 2),
                                    alignment: Alignment.topLeft,
                                    child: Text('KPA',style: textStyle14White,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
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
