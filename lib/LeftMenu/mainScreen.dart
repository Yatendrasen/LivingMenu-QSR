import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:living_menu_qsr/Dashboard/dashboard.dart';
import 'package:living_menu_qsr/Settings/dummy.dart';

import '../Constants/appFontSizes.dart';
import '../Orders/ordersScreen.dart';
import '../Settings/settingsScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late double w, h;

  final List<Widget> _pages = [
    const Dashboard(),
    const OrdersScreen(),
    const Dummy(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    AppFontSizes fontSizes = AppFontSizes(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: h * 0.044,
            color: Colors.white,
          ),
          Container(
            height: h * 0.055,
            width: w,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: w * 0.02,),
                    SvgPicture.asset('assets/icons/living_menu_icon.svg',
                      // height: h * 0.03,
                    ),
                    SizedBox(width: w * 0.01,),
                    Text('Living Menu',
                      style: TextStyle(
                        fontFamily: 'Unbounded_medium',
                        fontWeight: FontWeight.w500,
                        fontSize: fontSizes.fontSize12,
                        color: Color(0xFF001FFF),
                        height: 1
                      ),
                    ),
                    SizedBox(width: w * 0.02,),
                    Container(
                      height: h * 0.07,
                      width: w * 0.001,
                      color: Color(0xFFF0F1F1),
                    ),
                    SizedBox(width: w * 0.02,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.006),
                          child: Row(
                            children: [
                              Text('All Accounts',
                                style: TextStyle(
                                  fontFamily: 'General_sans_medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: fontSizes.fontSize10,
                                  color: Color(0xFF656565),
                                ),
                              ),
                              SizedBox(width: w * 0.01,),
                              SvgPicture.asset('assets/icons/arrow_drop_down_small.svg',
                                height: h * 0.008,
                              )
                            ],
                          ),
                        ),
                        Text('Jaipur - Rakesh Patidar - Demo Account',
                          style: TextStyle(
                            fontFamily: 'General_sans_medium',
                            fontWeight: FontWeight.w500,
                            fontSize: fontSizes.fontSize10,
                            color: Color(0xFF202020),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: h * 0.07,
                      width: w * 0.001,
                      color: Color(0xFFF0F1F1),
                    ),
                    SizedBox(width: w * 0.02,),
                    SvgPicture.asset('assets/icons/widgets.svg',
                      // height: h * 0.03,
                    ),
                    SizedBox(width: w * 0.02,),
                    Container(
                      height: h * 0.07,
                      width: w * 0.001,
                      color: Color(0xFFF0F1F1),
                    ),
                    SizedBox(width: w * 0.02,),
                    Row(
                      children: [
                        Text('Sync status:',
                          style: TextStyle(
                            fontFamily: 'General_sans_medium',
                            fontWeight: FontWeight.w500,
                            fontSize: fontSizes.fontSize10,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(width: w * 0.01,),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFE5D3),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01, top: h * 0.002, bottom: h * 0.003),
                            child: Text('pending',
                              style: TextStyle(
                                fontFamily: 'General_sans_medium',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizes.fontSize10,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.02,),
                        Container(
                          height: h * 0.07,
                          color: Color(0xFF2988F6),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                            child: Row(
                              children: [
                                Text('Sync',
                                  style: TextStyle(
                                    fontFamily: 'General_sans_semi_bol',
                                    fontWeight: FontWeight.w600,
                                    fontSize: fontSizes.fontSize12,
                                    color: Color(0xFFFBFBF9),
                                  ),
                                ),
                                SizedBox(width: w * 0.006,),
                                SvgPicture.asset('assets/icons/sync.svg')
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: w,
            height: h * 0.002,
            color: Color(0xFFF0F1F1),
          ),
          Expanded(
            child: Row(
              children: [
                NavigationRail(
                  backgroundColor: Colors.white,
                  selectedIndex: _selectedIndex,
                  indicatorColor: Color(0xFFF7F7F7),
                  indicatorShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // Customize shape
                  ),
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: [
                    NavigationRailDestination(
                      // icon: Icon(Icons.dashboard),
                      icon: SvgPicture.asset(
                        _selectedIndex == 0 ? 'assets/icons/dashboard_active_n.svg' : 'assets/icons/dashboard_inactive.svg',
                        height: h * 0.025,
                      ),
                      label: const Text(""),
                    ),
                    NavigationRailDestination(
                      icon: SvgPicture.asset(
                        _selectedIndex == 1 ? 'assets/icons/order_active.svg' : 'assets/icons/order_inactive.svg',
                        height: h * 0.025,
                      ),
                      label: Text(""),
                    ),
                    NavigationRailDestination(
                      icon: SvgPicture.asset(
                        _selectedIndex == 2 ? 'assets/icons/qr_active.svg' : 'assets/icons/qr_inactive.svg',
                        height: h * 0.025,
                      ),
                      label: Text(""),
                    ),
                    NavigationRailDestination(
                      icon: SvgPicture.asset(
                        _selectedIndex == 3 ? 'assets/icons/settings_active.svg' : 'assets/icons/settings_inactive.svg',
                        height: h * 0.025,
                      ),
                      label: Text(""),
                    ),
                  ],
                ),
                Container(
                  width: w * 0.001,
                  height: h,
                  color: Color(0xFFF0F1F1),
                ),
                Expanded(
                  child: _pages[_selectedIndex], // Show selected screen
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}