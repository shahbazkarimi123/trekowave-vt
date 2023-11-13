import 'package:flutter/material.dart';
import 'package:xyz/presentation/auth_page/forget_password.dart';
import 'package:xyz/presentation/auth_page/login_with_user_id.dart';
import 'package:xyz/presentation/screen/navigation.dart';
import 'package:xyz/presentation/widget/all_vehicle.dart';
import 'package:xyz/presentation/widget/device_offline.dart';
import 'package:xyz/presentation/widget/expired_vehicle.dart';
import 'package:xyz/presentation/widget/map_screen.dart';
import 'package:xyz/presentation/widget/moving_vehicle.dart';
import 'package:xyz/presentation/widget/no_device.dart';
import 'package:xyz/presentation/widget/stopped_vehicle.dart';


class AppRoute{
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      // case LoginWithPhone.LOGIN:
      //   return MaterialPageRoute(builder: (_)=>LoginWithPhone());
      case LoginWithUserId.LOGIN_WITH_USER_ID:
        return MaterialPageRoute(builder: (_)=>LoginWithUserId());
      case ForgetPassword.FORGET_PASSWORD:
        return MaterialPageRoute(builder: (_)=>ForgetPassword());
      case NavigationPage.NAVIGATION_PAGE:
        return MaterialPageRoute(builder: (_)=>const NavigationPage());
      case StoppedVehicles.STOPPED_VEHICLES:
        return MaterialPageRoute(builder:(_)=>const StoppedVehicles());
      case AllVehicle.ALL_VEHICLE:
        return MaterialPageRoute(builder: (_)=>const AllVehicle());
      case DeviceOffline.DEVICE_OFFLINE:
        return MaterialPageRoute(builder: (_)=>const DeviceOffline());
      case ExpiredVehicle.EXPIRED_VEHICLE:
        return MaterialPageRoute(builder:(_)=>const ExpiredVehicle());
      case MovingVehicle.MOVING_VEHICLE:
        return MaterialPageRoute(builder:(_)=>const MovingVehicle());
      case NoDevices.NO_DEVICES:
        return MaterialPageRoute(builder:(_)=>const NoDevices());
      case MapScreen.MAP_SCREEN:
        return MaterialPageRoute(builder: (_)=>const MapScreen());
      default:
        return null;
      
    }
  }
}