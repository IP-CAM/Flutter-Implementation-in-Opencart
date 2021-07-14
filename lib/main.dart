import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opencart/elements.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';

Color primary = Color(0xFF5C3882);
Color indigo = Color(0xFFCF8FFF);
Color blue = Color(0xFF20DEFF);
Color pink = Color(0xFFFF7EA6);


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenCart(),
    );
  }
}


class OpenCart extends StatefulWidget {
  @override
  _OpenCartState createState() => _OpenCartState();
}

class _OpenCartState extends State<OpenCart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'gilroy'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Row(
            children: [
              //SideBar
              Container(
                width: 280,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 40, right: 40, top: 60),
                            child: Text('Opencart', style: TextStyle(fontFamily: 'gilroyS', fontWeight: FontWeight.bold, fontSize: 30, color: primary),),
                          ),
                          SizedBox(height: 60,),
                          //NavItems
                          NavList(title: 'Dashboard', color: primary, image: 'images/dashboard.png'),
                          SizedBox(height: 10,),
                          Nav(title: 'Profile', icon: Icon(CupertinoIcons.profile_circled, color: primary,)),
                          SizedBox(height: 10,),
                          Nav(title: 'Statement', icon: Icon(Icons.description, color: primary,)),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Image.asset('images/stat.png')
                  ],
                ),
              ),
              //MainArea
              Container(
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width -300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: blue.withOpacity(0.1),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 50,
                            width: 320,
                            child: TextField(
                              style: TextStyle(fontFamily: 'gilroyS', color: primary.withOpacity(0.5)),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 5, left: 10),
                                suffixIcon: Icon(CupertinoIcons.search, color: primary.withOpacity(0.5),),
                                hintText: 'Search',
                                hintStyle: TextStyle(fontFamily: 'gilroyS', color: primary.withOpacity(0.3)),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: primary
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 50,),
                          Container(
                          height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: blue,
                              image: DecorationImage(
                                image: AssetImage('images/bit.png'),
                                fit: BoxFit.fill
                              )
                            ),
                            //child: Image.asset('images/bit.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    //Heading
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cost Management', style: TextStyle(color: primary, fontSize: 60, fontFamily: 'gilroy', fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text('View report based on current progresses.', style: TextStyle(color: primary.withOpacity(0.6), fontSize: 20),)
                          ],
                        ),
                        Expanded(child: SizedBox(width: 100,)),
                        Button(text: 'Your pro', width: 150),
                        SizedBox(width: 50,),
                        Container(
                          height: 50,
                          width: 150,
                          child: Center(
                            child: Text(
                              'Your portfolio',
                              style: TextStyle(color: primary.withOpacity(0.5), fontFamily: 'gilroyS'),
                            ),
                          ),
                        ),
                        SizedBox(width: 50,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.more_horiz, color: primary,),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    //Info Area
                    Row(
                      children: [
                        Container(
                          height: 500,
                          width: 820,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 300,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 30, top: 30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Payment Queue', style: TextStyle(fontFamily: 'gilroyS', color: primary.withOpacity(0.4), fontSize: 20)),
                                          SizedBox(height: 10,),
                                          Text('\$ 938.00', style: TextStyle(fontSize: 40, color: primary, fontFamily: 'gilroyL'),),
                                          SizedBox(height: 40,),
                                          //Bars
                                          Row(
                                            children: [
                                              Container(
                                                width: 150,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('January', style: TextStyle(color: primary),),
                                                        Text('614', style: TextStyle(color: primary.withOpacity(0.4), fontFamily: 'gilroyM'),)
                                                      ],
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Stack(children: [
                                                      Container(
                                                        height: 7,
                                                        width: 150,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey[200],
                                                          borderRadius: BorderRadius.circular(10)
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 7,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            color: indigo,
                                                            borderRadius: BorderRadius.circular(10)
                                                        ),
                                                      ),
                                                    ],),
                                                    SizedBox(width: 20,),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 30,),
                                              Container(
                                                width: 150,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('February', style: TextStyle(color: primary),),
                                                        Text('1,277', style: TextStyle(color: primary.withOpacity(0.4), fontFamily: 'gilroyM'),)
                                                      ],
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Stack(children: [
                                                      Container(
                                                        height: 7,
                                                        width: 150,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey[200],
                                                            borderRadius: BorderRadius.circular(10)
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 7,
                                                        width: 70,
                                                        decoration: BoxDecoration(
                                                            color: blue,
                                                            borderRadius: BorderRadius.circular(10)
                                                        ),
                                                      ),
                                                    ],),
                                                    SizedBox(width: 20,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 40,),
                                          Row(
                                            children: [
                                              Button(text: 'View All', width: 150),
                                              SizedBox(width: 50,),
                                              Icon(CupertinoIcons.back, color: primary.withOpacity(0.3),),
                                              SizedBox(width: 60,),
                                              Icon(CupertinoIcons.forward, color: primary.withOpacity(0.3),)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                                      padding: EdgeInsets.all(15),
                                      height: 250,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: pink.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('System costs', style: TextStyle(fontFamily: 'gilroyM', color: primary),),
                                              Icon(Icons.more_vert, color: primary,)
                                            ],),
                                          Expanded(child: SizedBox(height: 50,)),
                                          Icon(CupertinoIcons.news, color: primary, size: 40,),
                                          SizedBox(height: 15,),
                                          Text('February', style: TextStyle(color: primary, fontFamily: 'gilroyM', fontSize: 15),),
                                          SizedBox(height: 15,),
                                          Text('\$76.00', style: TextStyle(fontFamily: 'gilroyL', color: primary, fontSize: 35),)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 30, right: 30),
                                      padding: EdgeInsets.all(15),
                                      height: 250,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: blue.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Operation costs', style: TextStyle(fontFamily: 'gilroyM', color: primary),),
                                              Icon(Icons.more_vert, color: primary,)
                                            ],),
                                          Expanded(child: SizedBox(height: 50,)),
                                          Icon(CupertinoIcons.news, color: primary, size: 40,),
                                          SizedBox(height: 15,),
                                          Text('February', style: TextStyle(color: primary, fontFamily: 'gilroyM', fontSize: 15),),
                                          SizedBox(height: 15,),
                                          Text('\$379.00', style: TextStyle(fontFamily: 'gilroyL', color: primary, fontSize: 35),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 8.0),
                                 child: Container(
                                   margin: EdgeInsets.only(bottom: 10),
                                   child: LineChart(
                                       LineChartData(
                                           gridData: FlGridData(
                                               show: false
                                           ),
                                         titlesData: FlTitlesData(
                                           bottomTitles: SideTitles(
                                             showTitles: true,
                                             reservedSize: 20,
                                             textStyle: TextStyle(color: primary.withOpacity(0.5)),
                                             margin: 0,
                                             getTitles: (value){
                                               switch (value.toInt()){
                                                 case 1:
                                                   return '01';
                                                 case 2:
                                                   return '02';
                                                 case 3:
                                                   return '03';
                                                 case 4:
                                                   return '04';
                                                 case 5:
                                                   return '05';
                                                 case 6:
                                                   return '06';
                                                 case 7:
                                                   return '07';
                                                 case 8:
                                                   return '08';
                                                 case 9:
                                                   return '09';
                                                 case 10:
                                                   return '10';
                                                 case 11:
                                                   return '11';
                                                 case 12:
                                                   return '12';
                                                 case 13:
                                                   return '13';
                                                 case 14:
                                                   return '14';
                                               }
                                               return '';
                                             }
                                           ),
                                         ),
                                         borderData: FlBorderData(
                                           show: true,
                                           border: Border(bottom: BorderSide(
                                             color: Colors.transparent
                                           ),
                                           left: BorderSide(color: Colors.transparent),
                                             right: BorderSide(color: Colors.transparent),
                                             top: BorderSide(color: Colors.transparent)
                                           ),
                                         ),
                                         minX: 0,
                                         minY: 0,
                                         maxX: 14,
                                         maxY: 4,
                                         lineBarsData: linesBarData1(),
                                       )
                                   ),
                                 ),
                               ),
                             )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 500,
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 420,
                                    decoration: BoxDecoration(
                                        color: indigo,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          height: 180,
                                          width: 420,
                                        ),

                                      ),
                                      Positioned(
                                        width: 300,
                                        height: 300,
                                        child: Image.asset('images/girl.png'),
                                        left: 140,
                                        bottom: -50,
                                      ),
                                      Positioned(child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Decorate For', style: TextStyle(fontFamily: 'gilroyM', color: Colors.white, fontSize: 23),),
                                          Text('Less With more.', style: TextStyle(fontFamily: 'gilroyM', color: Colors.white, fontSize: 23),),
                                        ],),
                                        left: 20,
                                        top: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text('7,208 Downloads', style: TextStyle(color: primary, fontFamily: 'gilroyM', fontSize: 25),),
                              SizedBox(height: 10,),
                              Container(
                                height: 115,
                                width: 420,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: primary.withOpacity(0.1),
                                      spreadRadius: 10,
                                      blurRadius: 17,
                                      offset: Offset(0, 10)
                                    )
                                  ]
                                ),
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    CircularPercentIndicator(
                                        radius: 50,
                                      lineWidth: 5,
                                      percent: 0.23,
                                      center: Text('23%'),
                                      progressColor: pink,
                                      backgroundColor: blue.withOpacity(0.1),
                                    ),
                                    SizedBox(width: 20,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Hagenes Forks Suite 9', style: TextStyle(color: primary, fontFamily: 'gilroyM', fontSize: 20),),
                                          SizedBox(height: 5,),
                                          Text('\$8,399.00', style: TextStyle(color: pink),)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 90,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: blue.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Icon(Icons.more_vert, color: primary,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25,),
                              Container(
                                height: 115,
                                width: 420,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    CircularPercentIndicator(
                                      radius: 50,
                                      lineWidth: 5,
                                      percent: 0.75,
                                      center: Text('75%'),
                                      progressColor: indigo,
                                      backgroundColor: blue.withOpacity(0.05),
                                    ),
                                    SizedBox(width: 20,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('7157 Kshlerin Land', style: TextStyle(color: primary, fontFamily: 'gilroyM', fontSize: 20),),
                                          SizedBox(height: 5,),
                                          Text('\$3,879.00', style: TextStyle(color: indigo),)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 90,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: blue.withOpacity(0.05),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Icon(Icons.more_vert, color: primary,),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


List<LineChartBarData> linesBarData1() {
  final LineChartBarData lineChartBarData2 = LineChartBarData(
    spots: [
      FlSpot(1, 1),
      FlSpot(3, 2.8),
      FlSpot(7, 1.2),
      FlSpot(10, 2.8),
      FlSpot(12, 2.6),
      FlSpot(13, 3.9),
      FlSpot(14, 4)
    ],
    isCurved: true,
    colors: [
      const Color(0xFFCF8FFF),
    ],
    barWidth: 2,
    isStrokeCapRound: true,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(show: false, colors: [
      const Color(0x00aa4cfc),
    ]),
  );
  final LineChartBarData lineChartBarData3 = LineChartBarData(
    spots: [
      FlSpot(1, 2.8),
      FlSpot(3, 1.9),
      FlSpot(6, 3),
      FlSpot(10, 1.3),
      FlSpot(13, 2.5),
      FlSpot(14, 3.5)
    ],
    isCurved: true,
    colors: const [
      Color(0xFF20DEFF),
    ],
    barWidth: 5,
    isStrokeCapRound: true,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(
      show: false,
    ),
  );
  return [
   // lineChartBarData1,
    lineChartBarData2,
    lineChartBarData3,
  ];
}