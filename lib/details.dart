import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Hyderabad Steel Agencies',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.home_outlined,
                  color: Color(0xff079452),
                  size: 30,
                )),
          )
        ],
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image(
            image: AssetImage("images/HSA.png"),
            height: 50,
            width: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Our Stores',
                    style: TextStyle(
                        color: Color(0xff079452),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff079452)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage("images/store.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hyderabad Steel Agencies",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "3-1-336, Chadarghat,",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Hyderabad, Telangana 500027",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff079452)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage("images/store.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " Hyderabad Steel Corporation",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Near Sagar Ring Road,",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Hyderabad, Telangana 500079",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff079452)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage("images/store.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hyderabad Steel Traders",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "3-1-336/4/1, Esamia Bazar,",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Hyderabad, Telangana",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff079452)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage("images/store.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hyderabad Steel Agencies",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "6-6-99/2, Opp. Indian Oil Petrol",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Pump, Aram Ghar, Katedan,",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Hyderabad, Telangana 500077",
                              style: TextStyle(fontSize: 14),
                            ),
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
      ),
    );
  }
}
