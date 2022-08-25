
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_design/models/utils/app_colors.dart';

import '../../views/detail_screen.dart';

class AppStaticWidget {

  static bottomShet(BuildContext context ){

    List image=[
      'assets/burger.png',
      'assets/breakfast.png',
      'assets/donut.png',
      'assets/plate.png',
      'assets/chicken.png',
    ];

    List text=[
      'Burger',
      'Carne',
      'Postres',
      'Sopa',
      'Sopa',
    ];

    List <Color> color =[
      Color(0xffCAE9F7),
      Color(0xffCAF7D6),
      Color(0xffF7D0CA),
      Color(0xffF1ECCA),
      Color(0xffCCCAF1),
    ];
    
    return Container(
      height: 680.h,
      width: 400.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),),
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              Expanded(child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.kblue,
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.clear,size: 18.sp,color: Colors.white,)),
              )),
              Expanded(child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/box.png'))),
              Expanded(
                  flex: 2,
                  child: Align(
                alignment: Alignment.topLeft,
                child: Text('Tu canasta',style: TextStyle(
                  color:AppColors.kblue,
                  fontSize: 25.sp,
                ),),
              )),
              Spacer(),
            ],
          ),
          SizedBox(height: 40.h,),
          customRow(url: 'assets/emili1.png',titile: 'Platillo Example',subtit: '\$200.00'),
          SizedBox(height: 5.h,),
          Divider(),
          SizedBox(height: 5.h,),
          customRow(url: 'assets/emili2.png',titile: 'Platillo For ',subtit: '\$150.00'),
          SizedBox(height: 20.h,),
          Padding(
            padding:  EdgeInsets.only(left: 20.0.sp),
            child: Text('Busca algo más',style: TextStyle(
              color: Colors.grey,
              fontSize: 20.sp,
            ),),
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            height: 130.h,
            width: 300.w,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.sp,),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Expanded(
                    flex:2,
                      child: Container(
                    margin: EdgeInsets.all(8.sp),
                    height: 72.h,
                    width: 67.w,
                    decoration:BoxDecoration(
                      color:color[index],
                      shape: BoxShape.circle,
                    ),
                    child:Image.asset('${image[index]}'),
                  )),
                  Expanded(child: Text(text[index]),),
                ],
              );
            },
            ),
          ),
          SizedBox(height: 10.h,),
          const Divider(),
          Container(
            height: 114.h,
            width: 375.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  flex:1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text.rich(TextSpan(
                    text: 'Total a cobrar :\n',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                ),
                    children: [
                      TextSpan(
                          text:'pago con tarjeta',style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                      )
                      )
                    ]
                ),),
                  ),),
                Spacer(),
                Expanded(child: Text('\$85.00',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),)),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
        ],
      )
    ) ;
  }

  static customRow({required String url,required String titile,required String subtit  }){
    return   Row(
      children: [
        Expanded(child: Container(
          margin: EdgeInsets.only(left: 15.sp,right: 15.sp),
          height: 81.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Image.asset('$url',fit: BoxFit.contain,),
        )),
        Expanded(
            flex: 2,
            child:Container(
          height: 100.h,
          child: Column(
            children: [
              Expanded(child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('$titile',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                ),),
              )),
              Expanded(
                  flex:1,
                  child: Align(
                alignment: Alignment.topLeft,
                child: Text('$subtit',style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ))
            ],
          ),
          )),
        Expanded(child: Container(
          margin: EdgeInsets.only(left: 10.sp,right: 30.sp,),
          height: 75.83.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Colors.black,width: 0.2.sp)
          ),
          child: Center(
            child: Column(
              children: [
                Expanded(child: Text('+',style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20.sp,
                ),)),
                Expanded(
                    flex: 1,
                    child: Text('2',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),)),
                Expanded(child: Text('_',style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20.sp,
                ),)),
              ],
            ),
          ),
        ),),
      ],
    );
  }

  static textField() {
    return Container(
      height: 35.h,
      width: 323.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            offset: Offset(0, 0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5.sp),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 15.sp,
            ),
            hintText: 'Que quieres comer hoy?',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 10.sp,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  slidingRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 100.h,
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 77.19.h,
                    width: 61.19.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.kblue,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2, child: Image.asset('assets/pizza.png')),
                        Expanded(
                            child: Text(
                          'Pizzas',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                          ),
                        ))
                      ],
                    )),
                Positioned(
                  left: 50,
                  top: -9,
                  child: Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffC3D61B)),
                    child: const Center(
                        child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            customContiner(text: 'Burger', url: 'assets/burger.png'),
            SizedBox(
              width: 10.w,
            ),
            customContiner(text: 'Sandwich', url: 'assets/sandwich.png'),
            SizedBox(
              width: 10.w,
            ),
            customContiner(text: 'Desayuno', url: 'assets/breakfast.png'),
            SizedBox(
              width: 10.w,
            ),
            customContiner(text: 'Brocheta', url: 'assets/barbecue.png'),
          ],
        ),
      ),
    );
  }

  customContiner({required String text, required String url}) {
    return Container(
      height: 77.19.h,
      width: 61.19.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            offset: Offset(0, 0),
            blurRadius: 10.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(flex: 2, child: Image.asset('$url')),
          Expanded(
              child: Text(
            '$text',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.sp,
            ),
          ))
        ],
      ),
    );
  }

  static continerDesign({
    required String title,
    required String url,
    required String Rs,
    required bool index,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const DetailScreen();
        }));
      },
      child: Container(
        height: 111.h,
        width: 324.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: Offset(0, 0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: EdgeInsets.only(right: 20.sp),
                      height: 69.h,
                      child: Stack(
                        children: [
                          Image.asset('$url'),
                          Visibility(
                            visible: index == true ? true : false,
                            child: Container(
                              height: 27.h,
                              width: 27.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  '20%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                )),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet, construe',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Expanded(
                                  child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  Rs,
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              )),
                              Expanded(
                                flex: 1,
                                child: Visibility(
                                  visible: index == true ? true : false,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Antes \$170.00',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10.sp),
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.kblue,
                              ),
                              child: Icon(
                                Icons.access_alarms,
                                size: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static bottomNavigation(BuildContext context,) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.sp, right: 20.sp, left: 20.sp),
      height: 57.h,
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.kblue,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(right: 25.sp, left: 25.sp),
              height: 42.h,
              width: 33.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.kyello,
              ),
              child: Center(
                  child: Text(
                '30',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
              )),
            ),
          ),
          Expanded(
              flex: 2,
              child: Text(
                'Mi cesta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 12.sp, top: 12.sp),
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 3.sp,
                ),
              )),
          Expanded(
              flex: 2,
              child: Text(
                '\$150.00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
              )),
          Spacer(),
        ],
      ),
    );
  }

  static drawerButton() {
    return SizedBox(
      height: 30.h,
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 10,
              width: 25.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.kblue,
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10.sp),
              height: 10,
              width: 15.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: AppColors.kblue,
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 20.sp),
              height: 50.h,
              width: 20.w,
              decoration: const BoxDecoration(
                color: Color(0xffC3D61B),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  descriptDesign() {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Pizza Cantos',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    '\$140.00 ',
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.green,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 28.h,
                    width: 84.w,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                          height: 28.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.kyello),
                          ),
                          child: Center(
                              child: Divider(
                            color: Colors.black,
                            thickness: 2.sp,
                          )),
                        )),
                        const Expanded(
                          child: Text('  02'),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 28.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                color: AppColors.kblue,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Text(
            'Lorem ipsum dolor sit amet, '
            'consetetur sadipscing elitr, sed diam nonumy '
            'eirmod tempor invidunt ut labore et dolore magna '
            'aliquyam erat, sed diam voluptua. At vero',
            style: TextStyle(
              fontSize: 15.sp,
            ),
          )),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Elige tamaño',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Expanded(child: container(text: 'CH', index: 1)),
                Expanded(child: container(text: 'MD', index: 0)),
                Expanded(child: container(text: 'GD', index: 0)),
                Expanded(child: container(text: 'FM', index: 0)),
                Spacer(),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Elie complement',
                          style: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.black,
                          ),
                        ),
                      )),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Selecciona hasta dos opciones',
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 40.sp),
                    height: 33.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.kyello,
                    ),
                    child: const Center(
                      child: Text(
                        'Obligatorio',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(bottom: 10.sp),
            padding: EdgeInsets.only(left: 20.sp),
            height: 62.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.blue.shade50,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Opcion 1',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)
                  ),
                )),
              ],
            ),
          )),
         Spacer(flex: 3,)
        ],
      ),
    );
  }

  container({
    required String text,
    required int index,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
      height: 30.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5.sp),
        color: index == 1 ? AppColors.kblue : Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: index == 1 ? Colors.white : Colors.black,
        ),
      )),
    );
  }
}
