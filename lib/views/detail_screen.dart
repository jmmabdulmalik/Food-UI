import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controlers/app_static_property/static_property.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: InkWell(
        onTap: (){
          _scaffoldKey.currentState!.showBottomSheet(
                (context) => AppStaticWidget.bottomShet(context),
          );
          },
        child: AppStaticWidget.bottomNavigation(context),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height.h,
            width: 375.w,
            child: Stack(
              children: [
                Positioned(
                  top: -10.sp,
                  left: -10.sp,
                  right: -10.sp,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/stackpic.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 60.sp,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 29.h,
                              width: 29.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black38,
                              ),
                              child: const Icon(
                                Icons.clear,
                                color: Colors.white54,
                              ))),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                          child: Container(
                        height: 29.h,
                        width: 29.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black38,
                        ),
                          child: const Icon(
                          Icons.share,
                          color: Colors.white54,
                        ),
                      )),
                    ],
                  ),
                ),
                Positioned(
                  top: 280.sp,
                  left: 0.sp,
                  right: 0.sp,
                  child: Container(
                    height: 600.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      )
                    ),
                    child: AppStaticWidget().descriptDesign(),
                  ),
                ),
                Positioned(
                    top: 250.sp,
                    right: 40.sp,
                    child: Container(
                      height: 52.h,
                      width: 52.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    child: const Icon(Icons.heart_broken,color: Colors.white,),
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
