import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/util/themeColor.dart';

import './debit_card.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1,15,10,15),
                    child: GestureDetector(
                      child: Icon(
                        CupertinoIcons.back,
                        size: 38,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Text(
                    'Payment Option',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 38),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Themes.color,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [BoxShadow(blurRadius: 2.0, color: Themes.color)]),
              width: 240.0,
              child: Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.local_atm,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Text(
                        'Cash On Delivery',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Themes.color,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [BoxShadow(blurRadius: 2, color: Themes.color)]),
              width: 240.0,
              child: Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.amazonPay,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Text(
                        'Debit/Credit card',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ],
                  ),
                  onPressed: () {
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => CreditCardPage()));
                  },
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(125),
              width: 310,
              decoration: new BoxDecoration(
                color: Colors.white24,
                image: DecorationImage(
                  image: new AssetImage(
                    'assets/moto.png',
                  ),
                  colorFilter: ColorFilter.mode(Colors.deepOrangeAccent, BlendMode.colorBurn),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
