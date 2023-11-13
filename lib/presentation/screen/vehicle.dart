

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xyz/presentation/widget/all_vehicle.dart';
import 'package:xyz/presentation/widget/device_offline.dart';
import 'package:xyz/presentation/widget/expired_vehicle.dart';
import 'package:xyz/presentation/widget/map_screen.dart';
import 'package:xyz/presentation/widget/moving_vehicle.dart';
import 'package:xyz/presentation/widget/no_device.dart';
import 'package:xyz/presentation/widget/stopped_vehicle.dart';

class Vehicle extends StatefulWidget {
  const Vehicle({super.key});

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  List<Color> colors = const [
    Color(0xff7481b1),
    Color(0xff00c5e2),
    Color(0xfffa8e4a),
    Color(0xff8167cd),
    Color(0xff57e2c6),
    Color(0xff1c7b84)
  ];
  List<bool> isPressed = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];
  List<Widget> vehiclePositionNavigator=const  [
    AllVehicle(),
    MovingVehicle(),
    StoppedVehicles(),
    DeviceOffline(),
    NoDevices(),
    ExpiredVehicle(),

  ];
  int navigatorIndex=0;
  int lastIndexPressed=0;
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade50,
      height: 1.sh,
      width: 1.sw,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.yellow.shade100,
            height: 80.h,
            margin: EdgeInsets.symmetric(vertical: 0.01.sh),
            width: 1.sw,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  topBox('All', 0,),
                  
                  topBox('Moving', 1),
                  topBox('Stopped', 2),
                  topBox('Device Offline', 3),
                  topBox('No Device', 4),
                  topBox('Expired', 5)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, MapScreen.MAP_SCREEN);

            },
            splashColor: Colors.white70,
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8.r),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("MAHIPAL7136",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17.sp),),
                  Row(
                    children: <Widget>[
                      Text("Moving since 2 minuts",style: TextStyle(color: Colors.green.shade300),),
                      SizedBox(width: 8.w,),
                      Icon(Icons.speed,size: 20.r,),
                      const Text("10 km/h",),
                    ],
                  ),
                  Text("Last data Received at 10:35 AM, Monday, 30 Oct 2023",style: TextStyle(color: Colors.grey.shade400),),
                  Text("504, kirtan wali Gali, Kotwali, Madhopura, Ghaziabad, Uttar Pradesh 201001, India")
                  
          
                ],
              )
            ),
          ),
          Container(
            height: 2.h,
            width: 1.sw,
            color: Colors.yellow,),
          Container(
            
            height: 0.5.sh,
            margin: EdgeInsets.only(left:8.w,right: 8.w,top: 16.h),
            width: 1.sw,
            child: vehiclePositionNavigator[navigatorIndex],
          ),
        ],
      ),
    );
  }

  Widget topBox(String name, int index) {
    
    return InkWell(
      onTap: () {
        
        setState(() {
          isPressed[index] = true;
          navigatorIndex=index;
          if(lastIndexPressed!=index){
            isPressed[lastIndexPressed]=false;
            lastIndexPressed=index;
          }

        });
        

        
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        height: 50.h,
        width: 100.w,
        child: Material(
          color: isPressed[index]==true? colors[index]:Colors.white,
          elevation: 15,
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name,style: TextStyle(color: isPressed[index]==true?Colors.white:colors[index],),
              ),
              Text('1',style: TextStyle(color: isPressed[index]==true?Colors.white:colors[index],))
            ],
          ),
        ),
      ),
      
    );
    
    
    
  }
  
  
}
