import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  static const FORGET_PASSWORD = "forgatePassword";
  ForgetPassword({super.key});
  final TextEditingController _userController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade50,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Forget Password",
                style: TextStyle(fontSize: 20.r, fontWeight: FontWeight.w600)),
            Icon(
              Icons.lock,
              size: 70.r,
            ),
            Text(
              "To reset the password please verify your identity",
              style: TextStyle(color: Colors.grey.shade500),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              width: 360.w,
              child: Material(
                borderRadius: BorderRadius.circular(15.r),
                elevation: 15,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: _userController,
                  decoration: InputDecoration(
                      hintText: "Enter Email ID",
                      icon: const Icon(Icons.person),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: const BorderSide(
                              width: 1, color: Colors.transparent)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                      ),
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              child: Container(
                //margin: EdgeInsets.only(top: 10.h),
                width: 360.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(7, 10),
                        blurRadius: 2),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 20.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
