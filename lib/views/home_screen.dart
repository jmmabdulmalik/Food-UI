import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controlers/app_static_property/static_property.dart';
import '../models/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar:AppStaticWidget.bottomNavigation(context,),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 25.sp, right: 25.sp,bottom: 25.sp),
        children: [
          SizedBox(
            height: 63.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child:AppStaticWidget.drawerButton(),
              ),
              Expanded(
                flex: 3,
                child: Text.rich(
                  TextSpan(
                      text: 'Entraga en:',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: ' Peru 2',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.kblue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: AppColors.kblue,
              )),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.kblue,
                  ),
                  child: Image.asset(
                    'assets/circle.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          AppStaticWidget.textField(),
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: const Color(0xff0D1863),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Ofertas',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          AppStaticWidget().slidingRow(),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Pizzas',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          AppStaticWidget.continerDesign(
              title: 'Pizza veloper',
              url: 'assets/pizadesign.png',
              Rs: '\$150.00',
              index: true, context: context),
          SizedBox(
            height: 20.h,
          ),
          AppStaticWidget.continerDesign(

              title: 'Pizza veloper',
              url: 'assets/pizz2.png',
              Rs: '\$70.00',
              index: false, context: context),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Hamburguesas',
            style: TextStyle(
              color: AppColors.kblue,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          AppStaticWidget.continerDesign(
              title: 'Burger miau',
              url: 'assets/buger2.png',
              Rs: '\$150.00',
              index: false, context: context),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
