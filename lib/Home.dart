import 'package:bs_calculator/details.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hom extends StatelessWidget {
  const Hom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home(title: '');
  }
}

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;
  int num5 = 0;
  int num6 = 0;
  int num7 = 0;
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final t1 = new TextEditingController();
  final t2 = new TextEditingController();
  final t3 = new TextEditingController();
  final t4 = new TextEditingController();
  final t5 = new TextEditingController();
  final t6 = new TextEditingController();
  final t7 = new TextEditingController();
  var control;
  // void doAdditon(value) {
  //   setState(() {
  //     num1 = double.parse(t1.text);
  //     num2 = double.parse(t2.text);
  //     num3 = double.parse(t3.text);
  //     num4 = double.parse(t4.text);
  //     num5 = double.parse(t5.text);
  //     num6 = double.parse(t6.text);
  //     num7 = double.parse(t7.text);
  //     total = (num1 * 5) +
  //         (num2 * 7) +
  //         (num3 * 11) +
  //         (num4 * 19) +
  //         (num5 * 30) +
  //         (num6 * 47) +
  //         (num7 * 72);
  //   });
  // }

  void doClear() {
    setState(() {
      controller.clear();
      // t1.clear();
      // t2.clear();
      // t3.clear();
      // t4.clear();
      // t5.clear();
      // t6.clear();
      // t7.clear();
      control.text = '0';
    });
  }

  void _launchURL() async {
    String _url = 'https://wa.me/+919885071155';

    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Hyderabad Steel Agencies',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image(
            image: AssetImage("images/HSA.png"),
            height: 50,
            width: 50,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Details()));
              },
              icon: Icon(
                Icons.info_outline,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Steel Calculator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff079452),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          color: Color(0xff4d4d4d),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'TMT Bar Size',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          color: Color(0xff4d4d4d),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'No.of Pieces',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Note :",
                    style: TextStyle(
                      color: Color(0xff079452),
                    ),
                  ),
                  Text("Click RESET below before entering the No.of pieces"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '8 MM',
                    subtitle: 'Each 40 feet rod weighs\n4.7kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        onSubmitted: (String value) {},
                        onChanged: (value) {
                          final x = int.tryParse(value);

                          setState(() {
                            num1 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5) +
                                    (num2 * 7) +
                                    (num3 * 11) +
                                    (num4 * 19) +
                                    (num5 * 30) +
                                    (num6 * 47) +
                                    (num7 * 72))
                                .toStringAsFixed(0);
                          });
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: '0',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '10 MM',
                    subtitle: 'Each 40 feet rod weighs\n7.2kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        onChanged: (value) {
                          final x = int.tryParse(value);

                          setState(() {
                            num2 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5) +
                                    (num2 * 7) +
                                    (num3 * 11) +
                                    (num4 * 19) +
                                    (num5 * 30) +
                                    (num6 * 47) +
                                    (num7 * 72))
                                .toStringAsFixed(0);
                          });
                        },
                        controller: control,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (String value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '0',
                          contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '12 MM',
                    subtitle: 'Each 40 feet rod weighs\n10.5kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        //controller: t3,
                        onChanged: (value) {
                          final x = int.tryParse(value);

                          setState(() {
                            num3 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5) +
                                    (num2 * 7) +
                                    (num3 * 11) +
                                    (num4 * 19) +
                                    (num5 * 30) +
                                    (num6 * 47) +
                                    (num7 * 72))
                                .toStringAsFixed(0);
                          });
                        },
                        textInputAction: TextInputAction.done,
                        onSubmitted: (String value) {},
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '0',
                          contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '16 MM',
                    subtitle: 'Each 40 feet rod weighs\n18.8kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        //controller: t4,
                        onChanged: (value) {
                          final x = int.tryParse(value);

                          setState(() {
                            num4 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5) +
                                    (num2 * 7) +
                                    (num3 * 11) +
                                    (num4 * 19) +
                                    (num5 * 30) +
                                    (num6 * 47) +
                                    (num7 * 72))
                                .toStringAsFixed(0);
                          });
                        },
                        textInputAction: TextInputAction.done,
                        onSubmitted: (String value) {},
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '0',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '20 MM',
                    subtitle: 'Each 40 feet rod weighs\n30kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        onChanged: (value) {
                          var x = int.tryParse(value);

                          setState(() {
                            num5 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5) +
                                    (num2 * 7) +
                                    (num3 * 11) +
                                    (num4 * 19) +
                                    (num5 * 30) +
                                    (num6 * 47) +
                                    (num7 * 72))
                                .toStringAsFixed(0);
                          });
                        },
                        //controller: t5,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (value) {},
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: '0',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '25 MM',
                    subtitle: 'Each 40 feet rod weighs\n47kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        onChanged: (value) {
                          var x = int.tryParse(value);

                          setState(() {
                            num6 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5) +
                                    (num2 * 7) +
                                    (num3 * 11) +
                                    (num4 * 19) +
                                    (num5 * 30) +
                                    (num6 * 47) +
                                    (num7 * 72))
                                .toStringAsFixed(0);
                          });
                        },
                        textInputAction: TextInputAction.done,
                        onSubmitted: (String value) {},
                        //controller: t6,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rodsize(
                    title: '32 MM',
                    subtitle: 'Each 40 feet rod weighs\n72kgs Approximately',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 24),
                    child: Container(
                      height: 40,
                      width: 146,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: new TextField(
                        onChanged: (value) {
                          var x = int.tryParse(value);

                          setState(() {
                            num7 = x ?? 0; // handle null and String

                            controller.text = ((num1 * 5).toInt() +
                                    (num2 * 7).toInt() +
                                    (num3 * 11).toInt() +
                                    (num4 * 19).toInt() +
                                    (num5 * 30).toInt() +
                                    (num6 * 47).toInt() +
                                    (num7 * 72).toInt())
                                .toStringAsFixed(0);
                          });
                        },
                        //controller: t7,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 10)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),

              // child: GestureDetector(
              //   onTap: () {
              //     Navigator.pushAndRemoveUntil(
              //         context,
              //         PageRouteBuilder(
              //           transitionDuration: Duration(seconds: 0),
              //           transitionsBuilder:
              //               (_, animation, animationTime, child) {
              //             animation = CurvedAnimation(
              //                 parent: animation, curve: Curves.easeInBack);
              //             return ScaleTransition(
              //               scale: animation,
              //               alignment: Alignment.center,
              //               child: child,
              //             );
              //           },
              //           pageBuilder: (_, animation, animationTime) {
              //             return Hom();
              //           },
              //         ),
              //         (Route<dynamic> route) => false);

              // new MaterialPageRoute(builder: (_) => Home(title: ''),
              // ),
              // (Route<dynamic> route) => false);
              // Navigator.push(context,
              //    new MaterialPageRoute(builder: (context) => AnotherHome()));
              //doClear();
              //control.text = '';

              // setState(() {
              //   controller.text = ((num1 * 0) +
              //           (num2 * 0) +
              //           (num3 * 0) +
              //           (num4 * 0) +
              //           (num5 * 0) +
              //           (num6 * 0) +
              //           (num7 * 0))
              //       .toStringAsFixed(0);

              // });
              // },
              // child: Container(
              //   height: 60,
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Color(0xff079452)),
              //       borderRadius: BorderRadius.circular(20),
              //       color: Colors.white),
              //   child: Container(
              //     child: Align(
              //       alignment: Alignment.center,
              //       child: Center(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Icon(
              //               Icons.restart_alt_rounded,
              //               color: Color(0xff079452),
              //               size: 25,
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(left: 10),
              //               child: Text(
              //                 'RESET',
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.bold,
              //                   color: Color(0xff079452),
              //                 ),
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              //),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 0),
                                transitionsBuilder:
                                    (_, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.easeInBack);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder: (_, animation, animationTime) {
                                  return Hom();
                                },
                              ),
                              (Route<dynamic> route) => false);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side:
                                        BorderSide(color: Color(0xff079452))))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restart_alt_rounded,
                              color: Color(0xff079452),
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'RESET',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff079452),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff079452), Colors.blue.shade200]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Approximate weight of Steel',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        width: double.infinity,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: TextField(
                                  textAlign: TextAlign.end,
                                  controller: controller,
                                  onSubmitted: (value) {
                                    var x = int.tryParse(controller.text);

                                    setState(() {
                                      num6 = x ?? 0; // handle null and String

                                      controller.text = ((num1 * 0) +
                                              (num2 * 0) +
                                              (num3 * 0) +
                                              (num4 * 0) +
                                              (num5 * 0) +
                                              (num6 * 0) +
                                              (num7 * 0))
                                          .toStringAsFixed(0);
                                    });
                                  },
                                  readOnly: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      hintText: '0',
                                      contentPadding:
                                          EdgeInsets.only(left: 10, top: 5)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 60,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'kgs',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /*Padding(
                        padding: const EdgeInsets.fromLTRB(46, 16, 66, 0),
                        child: GestureDetector(
                            onTap: () {
                              _launchURL();
                              setState(() {
                                _launchURL();
                              });
                            },
                            child: 
      
                            Container(
                            padding: EdgeInsets.only(left: 12),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                           child: Row(
                              children: [
                               
                                Image(
                                  alignment: Alignment.center,
                                  image: AssetImage('images/whatsapp.png'),
                                  height: 24,
                                  width: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text(
                                    'Whatsapp Us',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                          ),
                            ),
                      )*/
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: () {
                    _launchURL();
                    setState(() {
                      _launchURL();
                    });
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff079452)),
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                alignment: Alignment.center,
                                image: AssetImage('images/whatsapp.png'),
                                height: 25,
                                width: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Reach us on WhatsApp',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class Rodsize extends StatelessWidget {
  final String title;
  final String subtitle;
  const Rodsize({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26, left: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 10, color: Colors.black87.withOpacity(1)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
