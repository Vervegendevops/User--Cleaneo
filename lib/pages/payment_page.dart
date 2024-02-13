import 'package:cleaneo_user_app/pages/help_page.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedPaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: GestureDetector(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return WashPage();
                            }));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.045,
                    ),
                    Text(
                      "Payment",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mQuery.size.height * 0.02),
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 16),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/cleaning.png",
                            width: 40,
                          ),
                          SizedBox(width: mQuery.size.width * 0.012),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cleaneo Wallet",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Available balance ",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "ADD MONEY",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff29b2fe),
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.06,
                                    height: 39,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff29b2fe)),
                                        shape: BoxShape.circle),
                                  ),
                                  Positioned(
                                    top: mQuery.size.height * 0.0165,
                                    left: mQuery.size.width * 0.012,
                                    child: Container(
                                      width: mQuery.size.width * 0.035,
                                      height: mQuery.size.height * 0.02,
                                      decoration: BoxDecoration(
                                          color: Color(0xff29b2fe),
                                          shape: BoxShape.circle),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(height: mQuery.size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: double.infinity,
                            height: mQuery.size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/money.png",
                                  width: 26,
                                ),
                                SizedBox(width: mQuery.size.width * 0.03),
                                Text(
                                  "Cash",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                Expanded(child: SizedBox()),
                                Radio(
                                  value: 0,
                                  groupValue: selectedPaymentMethod,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedPaymentMethod = value!;
                                    });
                                  },
                                  activeColor: Colors.cyan,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: mQuery.size.height * 0.028),
                          Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.28,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Other Wallets/UPI",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      width: mQuery.size.width * 0.04,
                                      height: mQuery.size.height * 0.05,
                                      decoration: BoxDecoration(
                                          color: Color(0xff29b2fe),
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Icon(Icons.add,
                                            color: Colors.white, size: 15),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.026),
                                    Text(
                                      "Add New",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff29b2fe),
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.13,
                                      height: mQuery.size.height * 0.04,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.circular(6)),
                                      child: SvgPicture.asset(
                                          "assets/images/paytm.svg"),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.03),
                                    Text(
                                      "Paytm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Radio(
                                      value: 1,
                                      groupValue: selectedPaymentMethod,
                                      onChanged: (int? value) {
                                        setState(() {
                                          selectedPaymentMethod = value!;
                                        });
                                      },
                                      activeColor: Colors.cyan,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/phonepe.svg",
                                      width: 30,
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.07),
                                    Text(
                                      "PhonePe",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Radio(
                                      value: 2,
                                      groupValue: selectedPaymentMethod,
                                      onChanged: (int? value) {
                                        setState(() {
                                          selectedPaymentMethod = value!;
                                        });
                                      },
                                      activeColor: Colors.cyan,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/google-pay.svg",
                                      width: 30,
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.07),
                                    Text(
                                      "GPay",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Radio(
                                      value: 3,
                                      groupValue: selectedPaymentMethod,
                                      onChanged: (int? value) {
                                        setState(() {
                                          selectedPaymentMethod = value!;
                                        });
                                      },
                                      activeColor: Colors.cyan,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}