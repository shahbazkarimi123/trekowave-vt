import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xyz/presentation/auth_page/forget_password.dart';

import 'package:xyz/presentation/screen/navigation.dart';

class LoginWithUserId extends StatelessWidget {
  static const LOGIN_WITH_USER_ID ="loginWithUserId";
  LoginWithUserId({super.key});
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Center(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                                    offset: Offset(10, 15),
                                    blurRadius: 5),
                          
                        ],
                          gradient:const LinearGradient(
                              colors: [
                                Color(0xfffa8e4a),
                                Color(0xff1c7b84),
                                //Color.fromARGB(255, 218, 213, 213)
                              ],
                              //begin: Alignment.bottomLeft,
                              // end: Alignment.topRight,
                              stops: [
                                0.1,
                                0.7,
                                //0.9,
                              ],
                              tileMode: TileMode.repeated),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(55.r),
                              topRight: Radius.circular(10.r),
                              bottomRight: Radius.circular(55.r),
                              bottomLeft: Radius.circular(10.r))),
                      height: 450.h,
                      width: 390.w,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        // SizedBox(
                        //   height: 20.h,
                        // ),
                        
                        
                        SizedBox(
                          height: 70.h,
                        ),
                        _userIdField(),
                        SizedBox(
                          height: 20.h,
                        ),
                        _passwordField(),
                        SizedBox(height: 10.h,),
                        
                        SizedBox( 
                          
                          width: 368.w,
                          child: InkWell(
                            onTap: () {
                             Navigator.pushNamed(context, ForgetPassword.FORGET_PASSWORD);
                            },
                            child: Text('Forgot Password', textAlign: TextAlign.end,style: TextStyle(color:const  Color(0xfffa8e4a),fontWeight: FontWeight.w800,fontSize: 18.sp),))),
                        
                        SizedBox(height: 30.h,),
                        InkWell(
                          onTap:(){
                            Navigator.pushNamed(context, NavigationPage.NAVIGATION_PAGE);
                          },
                          child: Container(
                            //margin: EdgeInsets.only(top: 10.h),
                            width: 360.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              color: Colors.yellow.shade50,
                              boxShadow:const [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(7, 10),
                                    blurRadius: 2),
                              ],
                            ),
                            child:Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.r,
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                        
                      ]),
                    ),
                  ),
          
            ],
          ),
        ),
      ),
    );
  }
  Widget _userIdField() {
    return SizedBox(
      width: 360.w,
      child: Material(
        borderRadius: BorderRadius.circular(15.r),
        elevation: 12,
        child: TextField(
          keyboardType: TextInputType.phone,
          controller: _userController,
          decoration: InputDecoration(
              hintText: "User Id",
              icon: const Icon(Icons.person),
              fillColor: Colors.yellow.shade50,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  
                  borderSide:
                       const BorderSide(width: 1, color: Colors.transparent)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width:2,color: Colors.grey))
        ),
      ),)
    );
  }
  Widget _passwordField() {
    return SizedBox(
      width: 360.w,
      child: Material(
          borderRadius: BorderRadius.circular(15.r),
          elevation: 12,
          child: TextField(
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(
                hintText: "password",
                icon: const Icon(Icons.password),
                fillColor: Colors.yellow.shade50,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide:
                      const BorderSide(width: 1, color: Colors.transparent),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: const BorderSide(
                    color: Colors.grey,width: 2),)
              
                
                ),
          )),
    );
  }
}