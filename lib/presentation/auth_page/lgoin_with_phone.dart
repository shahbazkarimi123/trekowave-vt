// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:xyz/presentation/auth_page/login_with_user_id.dart';

// class LoginWithPhone extends StatelessWidget {
//   static const LOGIN = 'loginScreen';
//   LoginWithPhone({super.key});

//   final TextEditingController _userController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             children: <Widget>[
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       gradient:const LinearGradient(
//                           colors: [
//                             Color.fromARGB(255, 170, 168, 168),
//                             Colors.yellow,
//                             Color.fromARGB(255, 218, 213, 213)
//                           ],
//                           //begin: Alignment.bottomLeft,
//                           // end: Alignment.topRight,
//                           stops: [
//                             0.1,
//                             0.7,
//                             0.9,
//                           ],
//                           tileMode: TileMode.repeated),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(55.r),
//                           topRight: Radius.circular(10.r),
//                           bottomRight: Radius.circular(55.r),
//                           bottomLeft: Radius.circular(10.r))),
//                   height: 450.h,
//                   width: 390.w,
//                   child: Column(children: <Widget>[
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     Text(
//                       'Enter your mobile number to proceed',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 20.h),
//                       height: 40.h,
//                       width: 40.w,
//                       decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                         color: const Color.fromARGB(255, 223, 235, 241),
//                       ),
//                       alignment: Alignment.center,
//                       child: const Icon(
//                         Icons.phonelink_setup_rounded,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     _userPhoneNumber(),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     InkWell(
//                       child: Container(
//                         width: 360.w,
//                         height: 55.h,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           boxShadow: const [
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 offset: Offset(7, 10),
//                                 blurRadius: 2),
//                           ],
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Next',
//                             style: TextStyle(),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: 18.h),
//                       width: 390.w,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 5.h),
//                             child: Container(
//                               height: 1.h,
//                               width: 100.w,
//                               color: Colors.black45,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(top: 9.h),
//                             height: 40.h,
//                             width: 40.w,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 color: Colors.grey),
//                             child: Text(
//                               'Or',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   fontSize: 16.sp, color: Colors.black),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 5.h),
//                             child: Container(
//                               height: 1.h,
//                               width: 100.w,
//                               color: Colors.black45,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.pushNamed(context, LoginWithUserId.LOGIN_WITH_USER_ID);
//                       },
//                       child: Container(
//                         width: 360.w,
//                         height: 55.h,
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                           boxShadow:  [
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 offset: Offset(7,10),
//                                 blurRadius: 2),
//                           ],
//                         ),
//                         child:const Center(
//                           child: Text(
//                             'Proceed with login id',
//                             style: TextStyle(),
//                           ),
//                         ),
//                       ),
//                     )
//                   ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _userPhoneNumber() {
//     return SizedBox(
//       width: 360.w,
//       child: Material(
//         borderRadius: BorderRadius.circular(10.r),
//         elevation: 12,
//         child: TextField(
//           keyboardType: TextInputType.phone,
//           controller: _userController,
//           decoration: InputDecoration(
//               hintText: "Enter Phone Number",
//               icon: const Icon(Icons.person),
//               fillColor: Colors.grey.shade200,
//               filled: true,
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.r),
//                   borderSide:
//                       const BorderSide(width: 1, color: Colors.transparent)),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(8.r))),
//         ),
//       ),
//     );
//   }

//   // Widget _passwordField() {
//   //   return Material(
//   //       borderRadius: BorderRadius.circular(10.r),
//   //       elevation: 12,
//   //       child: TextField(
//   //         controller: _passwordController,
//   //         decoration: InputDecoration(
//   //             hintText: "password",
//   //             icon: const Icon(Icons.password),
//   //             fillColor: Colors.grey.shade200,
//   //             filled: true,
//   //             enabledBorder: OutlineInputBorder(
//   //               borderRadius: BorderRadius.circular(10.r),
//   //               borderSide:
//   //                   const BorderSide(width: 1, color: Colors.transparent),
//   //             ),
//   //             border: OutlineInputBorder(
//   //               borderRadius: BorderRadius.circular(8.r),
//   //             )),
//   //       ));
//   // }
// }
