import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/appFontSizes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late double w, h;
  final ScrollController _itemScrollController = ScrollController();
  final ScrollController _selectedItemScrollController = ScrollController();
  int _orderSelectedIndex = 0;
  int _paymentSelectedIndex = 0;
  int selectedWeightIndex = 0;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    AppFontSizes fontSizes = AppFontSizes(context);
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02, top: h * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Request Payment',
                        style: TextStyle(
                          fontSize: fontSizes.fontSize14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'General_sans_semi_bold',
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: h * 0.01,),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.01),
                        child: Row(
                          children: [
                            Container(
                              height: h * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFFDCE0E5)
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CountryCodePicker(
                                    padding: EdgeInsets.zero,
                                    showFlag: false,
                                    initialSelection: 'IN',
                                    textStyle: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      // fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Inter_medium',
                                      color: Colors.black
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.05,
                                    width: w * 0.001,
                                    color: Color(0xFFDCE0E5),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: w * 0.005),
                                      // padding: EdgeInsets.only(left: w * 0.01),
                                      child: SizedBox(
                                        width: w * 0.115,
                                        child: TextFormField(
                                          // controller: mobileTextController,
                                          textAlignVertical: TextAlignVertical.center,
                                          keyboardType: TextInputType.phone,
                                          style: TextStyle( // ✅ This controls the input text size
                                            fontFamily: 'Inter_medium',
                                            fontWeight: FontWeight.w500,
                                            fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                            color: Colors.black,
                                          ),
                                          decoration: InputDecoration(
                                              hintText: '00000-00000',
                                              // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                              border: InputBorder.none,
                                              isCollapsed: true,
                                              contentPadding: EdgeInsets.zero,
                                              // contentPadding: EdgeInsets.symmetric(vertical: h * 0.015),
                                              labelStyle: TextStyle(
                                                  color: Color(0xFF667085),
                                                fontFamily: 'Inter_medium',
                                                fontWeight: FontWeight.w500,
                                                fontSize: fontSizes.fontSize12
                                              ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: w * 0.005,),

                            Container(
                              height: h * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFFDCE0E5)
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                                    child: Text('₹',
                                      style: TextStyle(
                                          fontFamily: 'Inter_medium',
                                          fontWeight: FontWeight.w500,
                                          fontSize: fontSizes.fontSize12,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.05,
                                    width: w * 0.001,
                                    color: Color(0xFFDCE0E5),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: w * 0.005), // ✅ Add horizontal padding
                                      // padding: EdgeInsets.only(left: w * 0.01),
                                      child: SizedBox(
                                        width: w * 0.115,
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
                                              hintText: '0.00',
                                              // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                              border: InputBorder.none,
                                              isCollapsed: true,
                                              contentPadding: EdgeInsets.zero,
                                              // contentPadding: EdgeInsets.symmetric(vertical: h * 0.015),
                                              labelStyle: TextStyle(
                                                  fontFamily: 'Inter_medium',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: fontSizes.fontSize12,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: w * 0.005,),
                            Container(
                              height: h * 0.05,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF3348FF), Color(0xFF3348FF).withOpacity(0.85)], // Light to dark blue
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                                borderRadius: BorderRadius.circular(8), // Optional rounded corners
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015),
                                child: Center(
                                  child: Text('Send',
                                    style: TextStyle(
                                        fontFamily: 'General_sans_semi_bold',
                                        fontWeight: FontWeight.w600,
                                        fontSize: fontSizes.fontSize12,
                                        color: Color(0xFFFBFBF9)
                                    ),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.02,),
                      Text('Select Items',
                        style: TextStyle(
                            fontSize: fontSizes.fontSize14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'General_sans_semi_bold',
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: h * 0.01,),
                      Row(
                        children: [
                          Container(
                            height: h * 0.05,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFDCE0E5)
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: w * 0.01), // ✅ Add horizontal padding
                                    // padding: EdgeInsets.only(left: w * 0.01),
                                    child: SizedBox(
                                      width: w * 0.35,
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
                          SizedBox(width: w * 0.005,),
                          Container(
                            height: h * 0.05,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFDCE0E5)
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.012, right: w * 0.012),
                              child: Row(
                                children: [
                                  Text('All',
                                    style: TextStyle(
                                        fontSize: fontSizes.fontSize10,
                                        // fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'General_sans_regular',
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(width: w * 0.005,),
                                  SvgPicture.asset('assets/icons/arrow_drop_down_small.svg',
                                    height: h * 0.008,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: h * 0.02,),
                      Container(
                        width: w * 0.424, // Fixed width for the container
                        height: h * 0.71, // Adjust height as needed
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFDCE0E5)
                          )
                        ),
                        child: Scrollbar(
                          controller: _itemScrollController,
                          thumbVisibility: true, // Always show the scrollbar
                          trackVisibility: true, // Show scrollbar track
                          thickness: 6, // Set scrollbar thickness
                          radius: Radius.circular(8),
                          child: GridView.count(
                            controller: _itemScrollController,
                            crossAxisCount: 5, // Number of columns
                            crossAxisSpacing: 10, // Space between columns
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.88,// Space between rows
                            padding: EdgeInsets.only(top: h * 0.015, right: w * 0.015, left: w * 0.012),
                            children: List.generate(50, (index) {
                              return InkWell(
                                onTap: (){
                                  _buildDeliveryDetailPopup(context, fontSizes);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFFDCE0E5)
                                    )
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: h * 0.00, left: w * 0.0025, right: w * 0.0025),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/peda.png',
                                              fit: BoxFit.fitWidth, // Cover the square area
                                            ),
                                            /*child: AspectRatio(
                                              aspectRatio: 1, // Makes the image square
                                              child: Image.asset(
                                                'assets/images/peda.png',
                                                fit: BoxFit.fill, // Cover the square area
                                              ),
                                            ),*/
                                          ),
                                        ),
                                      ),
                                      // SizedBox(height: 5), // Space between image and text
                                      Padding(
                                        padding: EdgeInsets.only(left: w * 0.0025),
                                        child: Text('Peda',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: fontSizes.fontSize8,
                                            // fontSize: 8,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'General_sans_regular',
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis, // Avoid overflow
                                          // maxLines: 1, // Restrict to 1 line
                                        ),
                                      ),
                                      SizedBox(height: h * 0.004,)
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      )





                    ],
                  ),

                  // SizedBox(width: w * 0.035,),
                  // Second part
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order details',
                        style: TextStyle(
                            fontSize: fontSizes.fontSize14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'General_sans_semi_bold',
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: h * 0.012,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Full Name',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter_light',
                                    color: Color(0xFF717383)
                                ),
                              ),
                              SizedBox(height: h * 0.002,),

                              Container(
                                height: h * 0.05,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFDCE0E5)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center( // ✅ Center everything vertically
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: w * 0.005), // ✅ Add horizontal padding
                                    child: SizedBox(
                                      width: w * 0.2,
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                          fontFamily: 'Inter_medium',
                                          fontWeight: FontWeight.w500,
                                          fontSize: fontSizes.fontSize12,
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: 'Enter full name',
                                          border: InputBorder.none,
                                          isCollapsed: true, // ✅ Helps remove unwanted padding issues
                                          contentPadding: EdgeInsets.zero,
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
                              )
                            ],
                          ),
                          SizedBox(width: w * 0.005,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mobile Number',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter_light',
                                    color: Color(0xFF717383)
                                ),
                              ),
                              SizedBox(height: h * 0.002,),
                              Container(
                                height: h * 0.05,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFFDCE0E5)
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CountryCodePicker(
                                      padding: EdgeInsets.zero,
                                      showFlag: false,
                                      initialSelection: 'IN',
                                      textStyle: TextStyle(
                                        fontFamily: 'Inter_medium',
                                        fontWeight: FontWeight.w500,
                                        fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.05,
                                      width: w * 0.001,
                                      color: Color(0xFFDCE0E5),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: w * 0.005), // ✅ Add horizontal padding
                                      // padding: EdgeInsets.only(left: w * 0.01),
                                      child: SizedBox(
                                        width: w * 0.14,
                                        child: TextFormField(
                                          // controller: mobileTextController,
                                          textAlignVertical: TextAlignVertical.center,
                                          keyboardType: TextInputType.phone,
                                          style: TextStyle( // ✅ This controls the input text size
                                            fontFamily: 'Inter_medium',
                                            fontWeight: FontWeight.w500,
                                            fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                            color: Colors.black,
                                          ),
                                          decoration: InputDecoration(
                                              hintText: '00000-00000',
                                              // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                              border: InputBorder.none,
                                              isCollapsed: true,
                                              contentPadding: EdgeInsets.zero,
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
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: h * 0.008,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Order',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter_light',
                                    color: Color(0xFF717383)
                                ),
                              ),
                              SizedBox(height: h * 0.002,),
                              Container(
                                height: h * 0.05,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEDF0F2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: w * 0.001),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: (){
                                          setState(() {
                                            _orderSelectedIndex = 0;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.045,
                                          decoration: BoxDecoration(
                                            color: _orderSelectedIndex == 0 ? Colors.white : Colors.transparent,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              color: _orderSelectedIndex == 0 ? Color(0xFFB6C1CA) : Colors.transparent
                                            )
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                              child: Text('Dine-In',
                                                style: TextStyle(
                                                  fontSize: fontSizes.fontSize10,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Inter_medium',
                                                  color: _orderSelectedIndex == 0 ? Colors.black : Color(0xFF525E6F)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: w * 0.001),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: (){
                                          setState(() {
                                            _orderSelectedIndex = 1;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.045,
                                          decoration: BoxDecoration(
                                              color: _orderSelectedIndex == 1 ? Colors.white : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: _orderSelectedIndex == 1 ? Color(0xFFB6C1CA) : Colors.transparent
                                              )
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                              child: Text('Takeaway',
                                                style: TextStyle(
                                                    fontSize: fontSizes.fontSize10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Inter_medium',
                                                    color: _orderSelectedIndex == 1 ? Colors.black : Color(0xFF525E6F)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: w * 0.001),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: (){
                                          setState(() {
                                            _orderSelectedIndex = 2;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.045,
                                          decoration: BoxDecoration(
                                              color: _orderSelectedIndex == 2 ? Colors.white : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8),

                                              border: Border.all(
                                                  color: _orderSelectedIndex == 2 ? Color(0xFFB6C1CA) : Colors.transparent
                                              )
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                              child: Text('Online',
                                                style: TextStyle(
                                                    fontSize: fontSizes.fontSize10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Inter_medium',
                                                    color: _orderSelectedIndex == 2 ? Colors.black : Color(0xFF525E6F)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              )
                            ],
                          ),

                          SizedBox(width: w * 0.005,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Payment mode',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter_light',
                                    color: Color(0xFF717383)
                                ),
                              ),
                              SizedBox(height: h * 0.002,),
                              Container(
                                height: h * 0.05,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEDF0F2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: w * 0.001),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: (){
                                          setState(() {
                                            _paymentSelectedIndex = 0;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.045,
                                          decoration: BoxDecoration(
                                              color: _paymentSelectedIndex == 0 ? Colors.white : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: _paymentSelectedIndex == 0 ? Color(0xFFB6C1CA) : Colors.transparent
                                              )
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                              child: Text('Cash',
                                                style: TextStyle(
                                                    fontSize: fontSizes.fontSize10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Inter_medium',
                                                    color: _paymentSelectedIndex == 0 ? Colors.black : Color(0xFF525E6F)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: w * 0.001),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: (){
                                          setState(() {
                                            _paymentSelectedIndex = 1;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.045,
                                          decoration: BoxDecoration(
                                              color: _paymentSelectedIndex == 1 ? Colors.white : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: _paymentSelectedIndex == 1 ? Color(0xFFB6C1CA) : Colors.transparent
                                              )
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                              child: Text('Upi',
                                                style: TextStyle(
                                                    fontSize: fontSizes.fontSize10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Inter_medium',
                                                    color: _paymentSelectedIndex == 1 ? Colors.black : Color(0xFF525E6F)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: w * 0.001),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: (){
                                          setState(() {
                                            _paymentSelectedIndex = 2;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.045,
                                          decoration: BoxDecoration(
                                              color: _paymentSelectedIndex == 2 ? Colors.white : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8),

                                              border: Border.all(
                                                  color: _paymentSelectedIndex == 2 ? Color(0xFFB6C1CA) : Colors.transparent
                                              )
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                              child: Text('Mix',
                                                style: TextStyle(
                                                    fontSize: fontSizes.fontSize10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Inter_medium',
                                                    color: _paymentSelectedIndex == 2 ? Colors.black : Color(0xFF525E6F)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: h * 0.015,),
                      SizedBox(
                        width: w * 0.425,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Items',
                              style: TextStyle(
                                fontFamily: 'Inter_lite',
                                fontWeight: FontWeight.w400,
                                fontSize: fontSizes.fontSize12,
                                color: Color(0xFF717383)
                              ),
                            ),
                            Text('Clear all',
                              style: TextStyle(
                                  fontFamily: 'Inter_lite',
                                  fontWeight: FontWeight.w600,
                                  fontSize: fontSizes.fontSize12,
                                  color: Color(0xFF970000),
                                height: 1,
                                decoration: TextDecoration.underline, // ✅ Adds underline
                                decorationColor: Color(0xFF970000),
                                decorationThickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.01,),
                      Container(
                        height: h * 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDCE0E5),
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*Container(
                              height: h * 0.045,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFFDCE0E5)
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),*/
                              Row(
                                children: [
                                  Container(
                                    width: w * 0.12,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: w * 0.01),
                                      child: Text('Item Name',
                                        style: TextStyle(
                                          fontSize: fontSizes.fontSize10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'General_sans_regular',
                                          color: Color(0xFF656565)
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.045,
                                    width: w * 0.0005,
                                    color: Color(0xFFDCE0E5),
                                  ),
                                  Container(
                                    width: w * 0.06,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: w * 0.01),
                                      child: Text('Price',
                                        style: TextStyle(
                                            fontSize: fontSizes.fontSize10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'General_sans_regular',
                                            color: Color(0xFF656565)
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.045,
                                    width: w * 0.0005,
                                    color: Color(0xFFDCE0E5),
                                  ),
                                  Container(
                                    width: w * 0.24,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: w * 0.01),
                                      child: Text('Action',
                                        style: TextStyle(
                                            fontSize: fontSizes.fontSize10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'General_sans_regular',
                                            color: Color(0xFF656565)
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            Container(
                              width: w * 0.425,
                              height: h * 0.001,
                                color: Color(0xFFDCE0E5)
                            ),


                            Container(
                              width: w * 0.424, // Fixed width for the container
                              height: h * 0.4, // Adjust height as needed
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Scrollbar(
                                controller: _selectedItemScrollController,
                                thumbVisibility: true, // Always show the scrollbar
                                trackVisibility: true, // Show scrollbar track
                                thickness: 6, // Set scrollbar thickness
                                radius: Radius.circular(8),
                                child: ListView.builder(
                                    controller: _selectedItemScrollController,
                                  itemCount: 13,
                                    padding: EdgeInsets.zero,
                                    physics: BouncingScrollPhysics(),
                                    itemBuilder: (context, index){
                                    return _buildSelectedItems(fontSizes);
                                    }
                                ),
                              ),
                            ),
                            Container(
                                width: w * 0.425,
                                height: h * 0.001,
                                color: Color(0xFFDCE0E5)
                            ),
                            Container(
                              width: w * 0.425,
                              height: h * 0.049,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Text('Qty: 3',
                                      style: TextStyle(
                                          fontSize: fontSizes.fontSize12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter_medium',
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.01,),
                                  Container(
                                    height: h * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEDF0F2),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(8)
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                        child: Row(
                                          children: [
                                            Text('Order Total: ',
                                              style: TextStyle(
                                                  fontSize: fontSizes.fontSize12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Inter_medium',
                                                  color: Colors.black
                                              ),
                                            ),
                                            Text('₹987.00',
                                              style: TextStyle(
                                                  fontSize: fontSizes.fontSize12,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Inter_medium',
                                                  color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.015,),
                      Text('Order Instructions',
                        style: TextStyle(
                            fontFamily: 'Inter_lite',
                            fontWeight: FontWeight.w400,
                            fontSize: fontSizes.fontSize12,
                            color: Color(0xFF717383)
                        ),
                      ),
                      SizedBox(height: h * 0.008,),
                      Container(
                        height: h * 0.08,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFDCE0E5)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: w * 0.006), // ✅ Add horizontal padding
                          child: SizedBox(
                            width: w * 0.416,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                fontFamily: 'Inter_medium',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizes.fontSize10,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: 'Add a short note here (optional)',
                                  border: InputBorder.none,
                                  isCollapsed: true, // ✅ Helps remove unwanted padding issues
                                  contentPadding: EdgeInsets.zero,
                                  labelStyle: TextStyle(
                                    fontFamily: 'Inter_medium',
                                    fontWeight: FontWeight.w500,
                                    fontSize: fontSizes.fontSize10, // ✅ Set your desired size
                                    color: Colors.black,
                                  )
                              ),

                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.02,),

                      Container(
                        width: w * 0.43,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF3348FF)
                                ),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015, top: h * 0.01, bottom: h * 0.01),
                                child: Text('Confirm without Print',
                                  style: TextStyle(
                                    fontFamily: 'General_sans_semi_bold',
                                    fontWeight: FontWeight.w600,
                                    fontSize: fontSizes.fontSize12,
                                      color: Color(0xFF3348FF)
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: w * 0.005,),

                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF3348FF), Color(0xFF3348FF).withOpacity(0.85)], // Light to dark blue
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                                borderRadius: BorderRadius.circular(5),

                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015, top: h * 0.011, bottom: h * 0.011),
                                child: Row(
                                  children: [
                                    Text('Confirm & Print',
                                      style: TextStyle(
                                          fontFamily: 'General_sans_semi_bold',
                                          fontWeight: FontWeight.w600,
                                          fontSize: fontSizes.fontSize12,
                                          color: Color(0xFFFBFBF9)
                                      ),
                                    ),
                                    SizedBox(width: w * 0.006,),
                                    SvgPicture.asset('assets/icons/print.svg'),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: h * 0.05,),
            Container(
              width: w,
              height: h * 0.001,
              color: Color(0xFFDCE0E5),
            ),
            SizedBox(height: h * 0.03,),
            Padding(
              padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Unpaid Order',
                        style: TextStyle(
                          fontFamily: 'General_sans_semi_bold',
                          fontWeight: FontWeight.w600,
                          fontSize: fontSizes.fontSize14,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: h * 0.01,),
                      Container(
                        height: h * 0.6,
                        width: w * 0.425,
                        /*decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDCE0E5)
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),*/
                        child: ListView.builder(
                            itemCount: 15,
                            padding: EdgeInsets.zero,
                            // shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index){
                              return _buildPaidItems(fontSizes);
                            }
                        ),
                      )

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Paid Order',
                        style: TextStyle(
                            fontFamily: 'General_sans_semi_bold',
                            fontWeight: FontWeight.w600,
                            fontSize: fontSizes.fontSize14,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: h * 0.01,),
                      Container(
                        height: h * 0.6,
                        width: w * 0.425,
                        /*decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDCE0E5)
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),*/
                        child: ListView.builder(
                            itemCount: 15,
                            padding: EdgeInsets.zero,
                            // shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index){
                              return _buildPaidItems(fontSizes);
                            }
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.1,)
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedItems(AppFontSizes fontSizes){
    return Container(

      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: w * 0.12,
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.01),
                  child: Text('Coconut Laddu',
                    style: TextStyle(
                        fontSize: fontSizes.fontSize10,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'General_sans_regular',
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 0.055,
                width: w * 0.0005,
                color: Color(0xFFDCE0E5),
              ),
              Container(
                width: w * 0.06,
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.01),
                  child: Text('₹329',
                    style: TextStyle(
                        fontSize: fontSizes.fontSize10,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'General_sans_regular',
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 0.055,
                width: w * 0.0005,
                color: Color(0xFFDCE0E5),
              ),
              Container(
                width: w * 0.24,
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.01),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.042,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xFFDCE0E5)
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.008, right: w * 0.008),
                          child: Row(
                            children: [
                              Text('250gm',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'General_sans_regular',
                                    color: Colors.black
                                ),
                              ),
                              SizedBox(width: w * 0.002,),
                              SvgPicture.asset('assets/icons/arrow_drop_down_black_small.svg')

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: w * 0.008,),
                      Container(
                        height: h * 0.042,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xFFDCE0E5)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.008, right: w * 0.008),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/subtract.svg'),
                              SizedBox(width: w * 0.006,),
                              Container(
                                height: h * 0.035,
                                width: w * 0.0005,
                                color: Color(0xFFDCE0E5),
                              ),
                              SizedBox(width: w * 0.01,),
                              Text('10',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'General_sans_regular',
                                    color: Colors.black
                                ),
                              ),
                              SizedBox(width: w * 0.01,),
                              Container(
                                height: h * 0.035,
                                width: w * 0.0005,
                                color: Color(0xFFDCE0E5),
                              ),
                              SizedBox(width: w * 0.006,),
                              SvgPicture.asset('assets/icons/add.svg')

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: w * 0.008,),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/edit.svg',
                            height: h * 0.042,
                          ),
                          SizedBox(width: w * 0.003,),
                          SvgPicture.asset('assets/icons/delete.svg',
                            height: h * 0.042,
                          ),

                        ],
                      )

                    ],
                  )
                ),
              ),

            ],
          ),
          Container(
              width: w * 0.425,
              height: h * 0.001,
              color: Color(0xFFDCE0E5)
          )
          // )
        ],
      ),
    );
  }

  Widget _buildPaidItems(AppFontSizes fontSizes){
    return Container(
      height: h * 0.06,
      child: Column(
        children: [
          SizedBox(height: h * 0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('31057',
                style: TextStyle(
                  fontSize: fontSizes.fontSize12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter_lite',
                  color: Colors.black
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/print_with_bg.svg',
                    height: h * 0.035,
                  ),
                  SizedBox(width: w * 0.005,),
                  SvgPicture.asset('assets/icons/edit.svg',
                    height: h * 0.035,
                  ),
                  SizedBox(width: w * 0.005,),
                  SvgPicture.asset('assets/icons/send_arrow.svg',
                    height: h * 0.035,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: h * 0.01,),
          Container(
            width: w,
            height: h * 0.001,
            color: Color(0xFFDCE0E5),

          )
        ],
      ),
    );
  }

  void _buildDeliveryDetailPopup(BuildContext context, AppFontSizes fontSizes){
    showGeneralDialog(
        context: context,
        barrierDismissible: true, // Close when tapped outside
        barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    transitionDuration: Duration(milliseconds: 400),
    pageBuilder: (context, anim1, anim2) {
      return Center(
          child: Material(
              color: Colors.transparent,
              child: Container(
                width: w * 0.32,
                height: h * 0.52,
                // padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015, top: h * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Customise order',
                            style: TextStyle(
                              fontSize: fontSizes.fontSize16,
                              // fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins_semi_bold',
                              color: Colors.black
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                              child: SvgPicture.asset('assets/icons/popup_close.svg')
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: h * 0.02,),
                    Container(
                      width: w,
                      height: h * 0.001,
                      color: Color(0xFFDCE0E5),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: h * 0.015,),
                              Text('Choose quantity',
                                style: TextStyle(
                                    fontFamily: 'Poppins_medium',
                                    fontWeight: FontWeight.w500,
                                    fontSize: fontSizes.fontSize12,
                                    color: Colors.black
                                ),
                              ),
                              SizedBox(height: h * 0.005,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState((){
                                        selectedWeightIndex = 0;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectedWeightIndex == 0 ? Color(0xFFF5F5F5) : Colors.transparent,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                        child: Text('100 gm',
                                          style: TextStyle(
                                              fontSize: fontSizes.fontSize14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'General_sans_medium',
                                              color: selectedWeightIndex == 0 ? Color(0xFF24264E) : Color(0xFF575757)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.005,),
                                  GestureDetector(
                                    onTap: (){
                                      setState((){
                                        selectedWeightIndex = 1;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectedWeightIndex == 1 ? Color(0xFFF5F5F5) : Colors.transparent,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                        child: Text('250 gm',
                                          style: TextStyle(
                                              fontSize: fontSizes.fontSize14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'General_sans_medium',
                                              color: selectedWeightIndex == 1 ? Color(0xFF24264E) : Color(0xFF575757)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.005,),
                                  GestureDetector(
                                    onTap: (){
                                      setState((){
                                        selectedWeightIndex = 2;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectedWeightIndex == 2 ? Color(0xFFF5F5F5) : Colors.transparent,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                        child: Text('500 gm',
                                          style: TextStyle(
                                              fontSize: fontSizes.fontSize14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'General_sans_medium',
                                              color: selectedWeightIndex == 2 ? Color(0xFF24264E) : Color(0xFF575757)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.005,),
                                  GestureDetector(
                                    onTap: (){
                                      setState((){
                                        selectedWeightIndex = 3;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectedWeightIndex == 3 ? Color(0xFFF5F5F5) : Colors.transparent,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                        child: Text('1 kg',
                                          style: TextStyle(
                                              fontSize: fontSizes.fontSize14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'General_sans_medium',
                                              color: selectedWeightIndex == 3 ? Color(0xFF24264E) : Color(0xFF575757)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.02,)
                                ],
                              ),
                              SizedBox(height: h * 0.02,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Quantity (In grams)',
                                        style: TextStyle(
                                            fontFamily: 'Poppins_medium',
                                            fontWeight: FontWeight.w500,
                                            fontSize: fontSizes.fontSize12,
                                            color: Colors.black
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.06,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: h * 0.01),
                                          child: Container(
                                            height: h * 0.05,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xFFE3E3E3)
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: w * 0.01),
                                                    child: SizedBox(
                                                      width: w * 0.13,
                                                      child: TextFormField(
                                                        // controller: mobileTextController,
                                                        textAlignVertical: TextAlignVertical.center,
                                                        keyboardType: TextInputType.text,
                                                        style: TextStyle( // ✅ This controls the input text size
                                                          fontFamily: 'Poppins_regular',
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                                          color: Colors.black,
                                                        ),
                                                        decoration: InputDecoration(
                                                            hintText: 'Enter Quantity',
                                                            // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                            border: InputBorder.none,
                                                            contentPadding: EdgeInsets.symmetric(vertical: h * 0.016),
                                                            labelStyle: TextStyle(
                                                              fontFamily: 'Poppins_regular',
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
                                        ),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(width: w * 0.03,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Price',
                                        style: TextStyle(
                                            fontFamily: 'Poppins_medium',
                                            fontWeight: FontWeight.w500,
                                            fontSize: fontSizes.fontSize12,
                                            color: Colors.black
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.06,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: h * 0.01),
                                          child: Container(
                                            height: h * 0.05,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xFFE3E3E3)
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                                  child: Text('₹',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins_regular',
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: fontSizes.fontSize12,
                                                        color: Colors.black
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: h * 0.05,
                                                  width: w * 0.001,
                                                  color: Color(0xFFE3E3E3),
                                                ),
                                                Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: w * 0.01),
                                                    child: SizedBox(
                                                      width: w * 0.1,
                                                      child: TextFormField(
                                                        // controller: mobileTextController,
                                                        textAlignVertical: TextAlignVertical.center,
                                                        keyboardType: TextInputType.text,
                                                        style: TextStyle( // ✅ This controls the input text size
                                                          fontFamily: 'Poppins_regular',
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                                          color: Colors.black,
                                                        ),
                                                        decoration: InputDecoration(
                                                            hintText: '0.00',
                                                            // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                            border: InputBorder.none,
                                                            contentPadding: EdgeInsets.symmetric(vertical: h * 0.016),
                                                            labelStyle: TextStyle(
                                                              fontFamily: 'Poppins_regular',
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
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: h * 0.02,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Custom Preference',
                                    style: TextStyle(
                                        fontFamily: 'Poppins_medium',
                                        fontWeight: FontWeight.w500,
                                        fontSize: fontSizes.fontSize12,
                                        color: Colors.black
                                    ),
                                  ),

                                  SizedBox(height: h * 0.015,),
                                  Container(
                                    height: h * 0.1,
                                    width: w,
                                    // alignment: Alignment.center,
                                    padding:
                                    EdgeInsets.only(left: w * 0.03, bottom: h * 0.005),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFFF1F1F1),
                                      // color: Colors.red,
                                    ),
                                    child: TextFormField(
                                      maxLines: null, // Allows the text field to expand with multiple lines
                                      textAlignVertical: TextAlignVertical.top,
                                      cursorColor: Colors.red,
                                      decoration: InputDecoration(
                                        // prefixIcon: SvgPicture.asset('assets/icons/search_gray.svg',),
                                        floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                        labelText: 'e.g. ring the bell after dropoff, leave next to the porch, call upon arrival, etc.',
                                        labelStyle: TextStyle(
                                          // Custom style for the label
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins_regular',
                                          color: Color(0xFF606060), // Label color
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        isCollapsed: true,
                                        contentPadding: EdgeInsets.only(right: w * 0.02, top: h * 0.01),
                                        border: InputBorder.none,
                                      ).copyWith(isDense: true),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: w,
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015, top: h * 0.02, bottom: h * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                /*decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF3348FF), Color(0xFF3348FF).withOpacity(0.85)], // Light to dark blue
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(3), // Optional rounded corners
                                ),*/
                                child: Padding(
                                  padding: EdgeInsets.only(left: w * 0.05, right: w * 0.04, top: h * 0.012, bottom: h * 0.012),
                                  child: Text('Discard',
                                    style: TextStyle(
                                      fontSize: fontSizes.fontSize12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'General_sans_semi_bold',
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF3348FF), Color(0xFF3348FF).withOpacity(0.85)], // Light to dark blue
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(3), // Optional rounded corners
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.012, bottom: h * 0.012),
                                  child: Text('Save',
                                    style: TextStyle(
                                        fontSize: fontSizes.fontSize12,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'General_sans_semi_bold',
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
              )
          )
      );
    });
  }

  void _buildAddAmountPopup(BuildContext context, AppFontSizes fontSizes){
    showGeneralDialog(
        context: context,
        barrierDismissible: true, // Close when tapped outside
        barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
        transitionDuration: Duration(milliseconds: 400),
        pageBuilder: (context, anim1, anim2) {
          return Center(
              child: Material(
                  color: Colors.transparent,
                  child: Container(
                    width: w * 0.32,
                    height: h * 0.52,
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015, top: h * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Add amount',
                                style: TextStyle(
                                    fontSize: fontSizes.fontSize16,
                                    // fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins_semi_bold',
                                    color: Colors.black
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: SvgPicture.asset('assets/icons/popup_close.svg')
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: h * 0.02,),
                        Container(
                          width: w,
                          height: h * 0.001,
                          color: Color(0xFFDCE0E5),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: h * 0.015,),
                                  Text('Choose quantity',
                                    style: TextStyle(
                                        fontFamily: 'Poppins_medium',
                                        fontWeight: FontWeight.w500,
                                        fontSize: fontSizes.fontSize12,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: h * 0.005,),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          setState((){
                                            selectedWeightIndex = 0;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: selectedWeightIndex == 0 ? Color(0xFFF5F5F5) : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                            child: Text('100 gm',
                                              style: TextStyle(
                                                  fontSize: fontSizes.fontSize14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'General_sans_medium',
                                                  color: selectedWeightIndex == 0 ? Color(0xFF24264E) : Color(0xFF575757)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: w * 0.005,),
                                      GestureDetector(
                                        onTap: (){
                                          setState((){
                                            selectedWeightIndex = 1;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: selectedWeightIndex == 1 ? Color(0xFFF5F5F5) : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                            child: Text('250 gm',
                                              style: TextStyle(
                                                  fontSize: fontSizes.fontSize14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'General_sans_medium',
                                                  color: selectedWeightIndex == 1 ? Color(0xFF24264E) : Color(0xFF575757)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: w * 0.005,),
                                      GestureDetector(
                                        onTap: (){
                                          setState((){
                                            selectedWeightIndex = 2;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: selectedWeightIndex == 2 ? Color(0xFFF5F5F5) : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                            child: Text('500 gm',
                                              style: TextStyle(
                                                  fontSize: fontSizes.fontSize14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'General_sans_medium',
                                                  color: selectedWeightIndex == 2 ? Color(0xFF24264E) : Color(0xFF575757)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: w * 0.005,),
                                      GestureDetector(
                                        onTap: (){
                                          setState((){
                                            selectedWeightIndex = 3;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: selectedWeightIndex == 3 ? Color(0xFFF5F5F5) : Colors.transparent,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.01, bottom: h * 0.01),
                                            child: Text('1 kg',
                                              style: TextStyle(
                                                  fontSize: fontSizes.fontSize14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'General_sans_medium',
                                                  color: selectedWeightIndex == 3 ? Color(0xFF24264E) : Color(0xFF575757)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: w * 0.02,)
                                    ],
                                  ),
                                  SizedBox(height: h * 0.02,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Quantity (In grams)',
                                            style: TextStyle(
                                                fontFamily: 'Poppins_medium',
                                                fontWeight: FontWeight.w500,
                                                fontSize: fontSizes.fontSize12,
                                                color: Colors.black
                                            ),
                                          ),
                                          Container(
                                            height: h * 0.06,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: h * 0.01),
                                              child: Container(
                                                height: h * 0.05,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xFFE3E3E3)
                                                  ),
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Center(
                                                      child: Padding(
                                                        padding: EdgeInsets.only(left: w * 0.01),
                                                        child: SizedBox(
                                                          width: w * 0.13,
                                                          child: TextFormField(
                                                            // controller: mobileTextController,
                                                            textAlignVertical: TextAlignVertical.center,
                                                            keyboardType: TextInputType.text,
                                                            style: TextStyle( // ✅ This controls the input text size
                                                              fontFamily: 'Poppins_regular',
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                                              color: Colors.black,
                                                            ),
                                                            decoration: InputDecoration(
                                                                hintText: 'Enter Quantity',
                                                                // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                                border: InputBorder.none,
                                                                contentPadding: EdgeInsets.symmetric(vertical: h * 0.016),
                                                                labelStyle: TextStyle(
                                                                  fontFamily: 'Poppins_regular',
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
                                            ),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(width: w * 0.03,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Price',
                                            style: TextStyle(
                                                fontFamily: 'Poppins_medium',
                                                fontWeight: FontWeight.w500,
                                                fontSize: fontSizes.fontSize12,
                                                color: Colors.black
                                            ),
                                          ),
                                          Container(
                                            height: h * 0.06,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: h * 0.01),
                                              child: Container(
                                                height: h * 0.05,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xFFE3E3E3)
                                                  ),
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                                                      child: Text('₹',
                                                        style: TextStyle(
                                                            fontFamily: 'Poppins_regular',
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: fontSizes.fontSize12,
                                                            color: Colors.black
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: h * 0.05,
                                                      width: w * 0.001,
                                                      color: Color(0xFFE3E3E3),
                                                    ),
                                                    Center(
                                                      child: Padding(
                                                        padding: EdgeInsets.only(left: w * 0.01),
                                                        child: SizedBox(
                                                          width: w * 0.1,
                                                          child: TextFormField(
                                                            // controller: mobileTextController,
                                                            textAlignVertical: TextAlignVertical.center,
                                                            keyboardType: TextInputType.text,
                                                            style: TextStyle( // ✅ This controls the input text size
                                                              fontFamily: 'Poppins_regular',
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: fontSizes.fontSize12, // ✅ Set your desired size
                                                              color: Colors.black,
                                                            ),
                                                            decoration: InputDecoration(
                                                                hintText: '0.00',
                                                                // floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                                border: InputBorder.none,
                                                                contentPadding: EdgeInsets.symmetric(vertical: h * 0.016),
                                                                labelStyle: TextStyle(
                                                                  fontFamily: 'Poppins_regular',
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
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: h * 0.02,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Custom Preference',
                                        style: TextStyle(
                                            fontFamily: 'Poppins_medium',
                                            fontWeight: FontWeight.w500,
                                            fontSize: fontSizes.fontSize12,
                                            color: Colors.black
                                        ),
                                      ),

                                      SizedBox(height: h * 0.015,),
                                      Container(
                                        height: h * 0.1,
                                        width: w,
                                        // alignment: Alignment.center,
                                        padding:
                                        EdgeInsets.only(left: w * 0.03, bottom: h * 0.005),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xFFF1F1F1),
                                          // color: Colors.red,
                                        ),
                                        child: TextFormField(
                                          maxLines: null, // Allows the text field to expand with multiple lines
                                          textAlignVertical: TextAlignVertical.top,
                                          cursorColor: Colors.red,
                                          decoration: InputDecoration(
                                            // prefixIcon: SvgPicture.asset('assets/icons/search_gray.svg',),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                            labelText: 'e.g. ring the bell after dropoff, leave next to the porch, call upon arrival, etc.',
                                            labelStyle: TextStyle(
                                              // Custom style for the label
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Poppins_regular',
                                              color: Color(0xFF606060), // Label color
                                            ),
                                            filled: true,
                                            fillColor: Colors.transparent,
                                            isCollapsed: true,
                                            contentPadding: EdgeInsets.only(right: w * 0.02, top: h * 0.01),
                                            border: InputBorder.none,
                                          ).copyWith(isDense: true),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: w,
                          child: Padding(
                            padding: EdgeInsets.only(left: w * 0.015, right: w * 0.015, top: h * 0.02, bottom: h * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    /*decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF3348FF), Color(0xFF3348FF).withOpacity(0.85)], // Light to dark blue
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(3), // Optional rounded corners
                                ),*/
                                    child: Padding(
                                      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.04, top: h * 0.012, bottom: h * 0.012),
                                      child: Text('Discard',
                                        style: TextStyle(
                                            fontSize: fontSizes.fontSize12,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'General_sans_semi_bold',
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Color(0xFF3348FF), Color(0xFF3348FF).withOpacity(0.85)], // Light to dark blue
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(3), // Optional rounded corners
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.012, bottom: h * 0.012),
                                      child: Text('Save',
                                        style: TextStyle(
                                            fontSize: fontSizes.fontSize12,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'General_sans_semi_bold',
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
              )
          );
        });
  }

}
