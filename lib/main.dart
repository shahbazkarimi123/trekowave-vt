import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/presentation/auth_page/login_with_user_id.dart';
import '/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AppRoute appRouter=AppRoute();
    return ScreenUtilInit(
      designSize: const Size(432,936),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child)=> MaterialApp(
        locale: const Locale('en'),
          title: 'xyz',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: LoginWithUserId.LOGIN_WITH_USER_ID,
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      
    );
  }
}

