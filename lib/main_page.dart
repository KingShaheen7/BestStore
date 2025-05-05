//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'settingPage.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

//***********************************************Contact_us_form
class ContuctUsDialogs extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        'images/deliveryLogo.png',
        width: 100,
        height: 100,
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.white, // Change the text and icon color to pink
                  backgroundColor: const Color.fromARGB(
                      255, 39, 13, 109), // Change the background color to pink
                ),
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('فيسبوك',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial', // Set the font style to italic
                          )),
                    ])),
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.white, // Change the text and icon color to pink
                  backgroundColor: const Color.fromARGB(
                      255, 39, 13, 109), // Change the background color to pink
                ),
                onPressed: () {},
                icon: const Icon(Icons.whatsapp),
                label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(' خدمة العملاء واتس آب',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial', // Set the font style to italic
                          )),
                    ])),
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.white, // Change the text and icon color to pink
                  backgroundColor: const Color.fromARGB(
                      255, 39, 13, 109), // Change the background color to pink
                ),
                onPressed: () {},
                icon: const Icon(Icons.phone),
                label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('اتصل بخدمة العملاء',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial', // Set the font style to italic
                          )),
                    ])),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('إغلاق',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 13, 109),
                    )))
          ],
        ),
      ),
    );
  }
}

//***********************************************All_kinds_form
class AllKindsDialog extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'All Products',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Arial',
        ),
        textDirection: TextDirection.ltr,
      ),
      content: Form(
          key: _formKey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: ClipOval(
                      child: TextButton.icon(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey,
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          label: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text('Phones',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Arial',
                                    )),
                              ]),
                          icon: ClipOval(
                              child: Image.asset(
                            'images/20221129112417_4605.jpg',
                            width: 30,
                            height: 30,
                          ))))),
              Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: ClipOval(
                      child: TextButton.icon(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey,
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          label: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(' Laptops',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Arial',
                                    )),
                              ]),
                          icon: ClipOval(
                              child: Image.asset(
                            'images/20240825201146597.png',
                            width: 30,
                            height: 30,
                          ))))),
              Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: ClipOval(
                      child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    label: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(' Screens',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                              )),
                        ]),
                    icon: ClipOval(
                        child: Image.asset(
                      'images/20241001064921622.jpg',
                      width: 30,
                      height: 30,
                    )),
                  ))),
              Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: ClipOval(
                      child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    label: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(' Management',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                              )),
                        ]),
                    icon: ClipOval(
                        child: Icon(
                                      Icons.manage_accounts,
                                      size: 28,
                                      color: Color.fromARGB(255, 39, 13, 109),
                                    ),),
                  ))),
            ],
          )),
    );
  }
}

//******************************************** Deliver_for_me_form
class DeliverForMeDialog extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        'images/deliveryLogo.png',
        width: 100,
        height: 100,
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.white, // Change the text and icon color to pink
                  backgroundColor: const Color.fromARGB(
                      255, 39, 13, 109), // Change the background color to pink
                ),
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('فيسبوك',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial', // Set the font style to italic
                          )),
                    ])),
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.white, // Change the text and icon color to pink
                  backgroundColor: const Color.fromARGB(
                      255, 39, 13, 109), // Change the background color to pink
                ),
                onPressed: () {},
                icon: const Icon(Icons.whatsapp),
                label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(' خدمة العملاء واتس آب',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial', // Set the font style to italic
                          )),
                    ])),
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.white, // Change the text and icon color to pink
                  backgroundColor: const Color.fromARGB(
                      255, 39, 13, 109), // Change the background color to pink
                ),
                onPressed: () {},
                icon: const Icon(Icons.phone),
                label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('اتصل بخدمة العملاء',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial', // Set the font style to italic
                          )),
                    ])),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('إغلاق',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 13, 109),
                    )))
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*locale: Locale('ar', 'AE'),
      supportedLocales: [
        const Locale('ar', 'AE'),
      ],
      localizationsDelegates: [
        //GlobalMaterialLocalizations.delegate,
        //GlobalWidgetsLocalizations.delegate,
      ],*/
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 234, 234, 240),
        fontFamily: 'TimesNewRoman',
      ),
      home: const Directionality(
        // Forces LTR layout
        textDirection: TextDirection.ltr, // Left to Right
        child: MyHomePage(title: 'توصيل'), // Arabic text remains
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 13, 109),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 39, 13, 109),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between title and menu
          children: [
            // Title on the left
            Text(
              'BestStore',
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
              textDirection: TextDirection.ltr,
            ),
            // Menu button on the right
            Transform.scale(
              scale: 1.5,
              child: PopupMenuButton<String>(
                offset: const Offset(15, 40),
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem<String>(
                      value: 'contact_us',
                      child: Text('Contact Us'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'share_app',
                      child: Text('Share App'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'settings',
                      child: Text('Settings'),
                    ),
                  ];
                },
                  onSelected: (String value) {
                    switch (value) {
                      case 'contact_us':
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ContuctUsDialogs();
                          },
                        );
                        break;
                      case 'share_app':
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onVerticalDragDown: (_) {},
                              child: Container(
                                  height: 200,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Colors.green),
                                                  child: Icon(Icons.whatsapp),
                                                ),
                                              ),
                                              Text(
                                                'Whatsapp',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Colors.blue),
                                                  child: Icon(Icons.facebook),
                                                ),
                                              ),
                                              Text(
                                                'Facebook',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Colors.blue),
                                                  child: Icon(Icons.telegram),
                                                ),
                                              ),
                                              Text(
                                                'Telegram',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Color.fromRGBO(
                                                          105, 181, 243, 1)),
                                                  child: Icon(Icons.message),
                                                ),
                                              ),
                                              Text(
                                                'Messages',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Colors.blue),
                                                  child: Icon(Icons.bluetooth),
                                                ),
                                              ),
                                              Text(
                                                'Bluetooth',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Colors.brown),
                                                  child: Icon(Icons.email),
                                                ),
                                              ),
                                              Text(
                                                'Email',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: const <Widget>[
                                              TextButton(
                                                onPressed: null,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: Colors.blueGrey),
                                                  child: Icon(Icons.wifi),
                                                ),
                                              ),
                                              Text(
                                                'Wi-Fi Direct',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            );
                          },
                        );
                        break;
                      case 'settings':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => setting()),
                        );
                        break;
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        body: DefaultTabController(
            length: 5,
            initialIndex: 4,
            child: Stack(children: [
              Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(children: <Widget>[
                        const Padding(
                                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                                child: Center(
                                    child: Text(
                                  'Here you can find what you want',
                                  style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                      ),
                                )),
                              ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TabBar(
                          indicatorColor: Colors.blue,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: const Color.fromARGB(255, 207, 205, 205)),
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 0.0),
                          isScrollable: true,
                          tabs: [
                            Tab(
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const <Widget>[
                                    Text(
                                      ' All ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    Icon(
                                      Icons.menu_sharp,
                                      size: 28,
                                      color: Color.fromARGB(255, 39, 13, 109),
                                    ),
                                    Text(' '),
                                  ],
                                ),
                              ),
                            ),
                            
                            
                            Tab(
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Text(
                                      '  Management ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    ClipOval(
                                      child: Icon(
                                      Icons.manage_accounts,
                                      size: 28,
                                      color: Color.fromARGB(255, 39, 13, 109),
                                    ),
                                    ),
                                    const Text(' '),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Text(
                                      '  Screens ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    ClipOval(
                                      child: Image.asset(
                                        'images/20241001064921622.jpg',
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    const Text(' '),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Text(
                                      '  Laptops ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    ClipOval(
                                      child: Image.asset(
                                        'images/20240825201146597.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    const Text(' '),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Text(
                                      '  Phones ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    ClipOval(
                                      child: Image.asset(
                                        'images/20221129112417_4605.jpg',
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    const Text(' '),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [                              
                              Container(
                                child: AllKindsDialog(),
                              ),
                              Center(
                                child: Image.asset(
                                  'images/user_image.png',
                                  width: 300,
                                  height: 1200,
                                ),
                              ),
                              DefaultTabController(
                                  length: 4,
                                  initialIndex: 3,
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Column(children: <Widget>[
                                    const TabBar(
                                      tabs: [
                                        Tab(
                                            child: Text('Favorite',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('New',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('Nearest',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('All',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ],
                                      labelColor:
                                          Color.fromARGB(255, 39, 13, 109),
                                      unselectedLabelColor: Colors.black,
                                      indicatorColor:
                                          Color.fromARGB(255, 39, 13, 110),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      indicatorWeight: 5,
                                      labelStyle: TextStyle(),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          const Center(child: Text('Favorite')),
                                          const Center(child: Text('New')),
                                          const Center(child: Text('Nearest')),
                                          Center(
                                            child: Image.asset(
                                              'images/20240825201237999.webp',
                                              width: 300,
                                              height: 1200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                  ),
                                  ),
                              DefaultTabController(
                                  length: 4,
                                  initialIndex: 3,
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Column(children: <Widget>[
                                    const TabBar(
                                      tabs: [
                                        Tab(
                                            child: Text('Favorite',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('New',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('Nearest',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('All',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ],
                                      labelColor:
                                          Color.fromARGB(255, 39, 13, 109),
                                      unselectedLabelColor: Colors.black,
                                      indicatorColor:
                                          Color.fromARGB(255, 39, 13, 110),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      indicatorWeight: 5,
                                      labelStyle: TextStyle(),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          const Center(child: Text('المفضلة')),
                                          const Center(child: Text('الجديدة')),
                                          const Center(child: Text('الاقرب')),
                                          Center(
                                            child: Image.asset(
                                              'images/20241001064628657.webp',
                                              width: 300,
                                              height: 1200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                  ),
                                  ),
                              DefaultTabController(
                                  length: 4,
                                  initialIndex: 3,
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Column(children: <Widget>[
                                    const TabBar(
                                      tabs: [
                                        Tab(
                                            child: Text('Favorite',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('New',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('Nearest',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        Tab(
                                            child: Text('All',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ],
                                      labelColor:
                                          Color.fromARGB(255, 39, 13, 109),
                                      unselectedLabelColor: Colors.black,
                                      indicatorColor:
                                          Color.fromARGB(255, 39, 13, 110),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      indicatorWeight: 5,
                                      labelStyle: TextStyle(),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          const Center(child: Text('Favorite')),
                                          const Center(child: Text('New')),
                                          const Center(child: Text('Nearest')),
                                          Center(
                                            child: Image.asset(
                                              'images/20240930214204304.png',
                                              width: 300,
                                              height: 1200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                  ),
                                  ),
                            ],
                          ),
                        ),
                      ])))
            ])));
  }
}
