import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/appFontSizes.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  late double w, h;
  bool isDineInSelected = true;
  int _selectedOrderTypeIndex = 0;


  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    AppFontSizes fontSizes = AppFontSizes(context);
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02, top: h * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Orders',
              style: TextStyle(
                  fontSize: fontSizes.fontSize14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'General_sans_semi_bold',
                  color: Colors.black
              ),
            ),
            SizedBox(height: h * 0.015,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isDineInSelected = true;
                        });
                      },
                      child: Container(
                        height: h * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: isDineInSelected ? Color(0xFFF1F1F1) : Colors.transparent,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                          child: Center(
                            child: Text('Dine–In',
                              style: TextStyle(
                                  fontSize: fontSizes.fontSize12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'General_sans_medium',
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: w * 0.005,),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isDineInSelected = false;
                        });
                      },
                      child: Container(
                        height: h * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: !isDineInSelected ? Color(0xFFF1F1F1) : Colors.transparent,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                          child: Center(
                            child: Text('Online',
                              style: TextStyle(
                                  fontSize: fontSizes.fontSize12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'General_sans_medium',
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: h * 0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFDCE0E5)
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: w * 0.01), // ✅ Add horizontal padding
                          // padding: EdgeInsets.only(left: w * 0.01),
                          child: SizedBox(
                            width: w * 0.18,
                            child: TextFormField(
                              // controller: mobileTextController,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle( // ✅ This controls the input text size
                                fontFamily: 'Inter_medium',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: 'Search',
                                  isCollapsed: true,
                                  // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                  // contentPadding: EdgeInsets.symmetric(vertical: h * 0.017),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Inter_medium',
                                    fontWeight: FontWeight.w500,
                                    fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                    color: Colors.black,
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: h * 0.015,),
            Container(
              height: h * 0.72,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFFDDDDDD)
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 0;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 0 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('All',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.005,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 1;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 1 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('Counter',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.005,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 2;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 2 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('QR Code',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.005,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 3;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 3 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('Online Orders',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.005,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 4;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 4 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('Takeaways',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.005,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 5;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 5 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('Draft',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.005,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedOrderTypeIndex = 6;
                            });
                          },
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedOrderTypeIndex == 6 ? Color(0xFFF1F1F1) : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                              child: Center(
                                child: Text('Cancelled',
                                  style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'General_sans_medium',
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  Container(
                    width: w,
                    height: h * 0.001,
                    color: Color(0xFFDDDDDD),
                  ),
            
                  Row(
                    children: [
                      SizedBox(width: w * 0.01,),
                      SvgPicture.asset('assets/icons/check_box_blank.svg'),
                      SizedBox(width: w * 0.01,),
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.06,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Token no',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.06,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Order no',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.12,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Mobile no',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
            
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Status',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
            
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.15,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Total Price',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
            
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.082,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Payment mode',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
            
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.08,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Date',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
            
                      Container(
                        height: h * 0.045,
                        width: w * 0.0005,
                        color: Color(0xFFDDDDDD),
                      ),
                      Container(
                        width: w * 0.15,
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.01),
                          child: Text('Action',
                            style: TextStyle(
                                fontSize: fontSizes.fontSize12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto_regular',
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
            
                    ],
                  ),
            
                  Container(
                    height: h * 0.001,
                    width: w,
                    color: Color(0xFFDDDDDD),
                  ),

                  Container(
                    // width: w * 0.424, // Fixed width for the container
                    height: h * 0.6, // Adjust height as needed
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5)
                      )
                    ),
                    child: Scrollbar(
                      // controller: _selectedItemScrollController,
                      thumbVisibility: true, // Always show the scrollbar
                      trackVisibility: true, // Show scrollbar track
                      thickness: 6, // Set scrollbar thickness
                      radius: Radius.circular(8),
                      child: ListView.builder(
                          itemCount: 15,
                          padding: EdgeInsets.zero,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index){
                            return _buildItems(fontSizes);
                          }
                      ),
                    ),
                  ),
            
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItems(AppFontSizes fontSizes){
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: w * 0.01,),
            SvgPicture.asset('assets/icons/check_box_blank.svg'),
            SizedBox(width: w * 0.01,),
            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.06,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('73',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),
            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.06,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('3155',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),
            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.12,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('-',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),

            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.1,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('Completed',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),

            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.15,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('₹99.75',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),

            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.082,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('Upi',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),

            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.08,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Text('18-Mar-2025',
                  style: TextStyle(
                      fontSize: fontSizes.fontSize12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_regular',
                      color: Colors.black
                  ),
                ),
              ),
            ),

            Container(
              height: h * 0.055,
              width: w * 0.0005,
              color: Color(0xFFDDDDDD),
            ),
            Container(
              width: w * 0.18,
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.01),
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.003, right: w * 0.01, top: h * 0.005, bottom: h * 0.005),
                        child: Text('Settle',
                          style: TextStyle(
                            fontFamily: 'Roboto_medium',
                            fontWeight: FontWeight.w500,
                            fontSize: fontSizes.fontSize12,
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.005,),
                    SvgPicture.asset('assets/icons/print_border.svg',
                      height: h * 0.04,
                    ),
                    SizedBox(width: w * 0.005,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xFF324CF8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.008, bottom: h * 0.008),
                        child: Text('Change Status',
                          style: TextStyle(
                              fontFamily: 'Roboto_medium',
                              fontWeight: FontWeight.w500,
                              fontSize: fontSizes.fontSize12,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),

          ],
        ),

        Container(
          height: h * 0.001,
          width: w,
          color: Color(0xFFDDDDDD),
        )
      ],
    );
  }

}
