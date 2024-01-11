import 'package:flutter/material.dart';
import '../Reuseable_component/TextFormInput.dart';
import '../Reuseable_component/button.dart';

class CashPayment extends StatefulWidget {
  const CashPayment({super.key, required this.title});
  final String title;

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              iconSize:15.0,
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,

              ),
              onPressed: () {
                print('Back click');
              },
            );
          },
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 103, 24, 137),
        centerTitle: true,
        title: Text(
          widget.title,
          style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin:  EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            padding:  EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/box.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$12.00",
                      style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      "Total paid",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: MediaQuery.of(context).size.height * 0.08,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    Text(
                      "\$0.00",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormInput(
                    FieldName: 'Email',
                    controller: TextEditingController(),
                    hint: 'Enter here',
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          MyButton(
            text: 'New Sale',
            onPressed: () {
              print('Button pressed!');
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
