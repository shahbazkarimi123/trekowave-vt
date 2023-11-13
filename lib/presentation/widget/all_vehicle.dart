import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class AllVehicle extends StatefulWidget {
  static const ALL_VEHICLE="allVehicle";
  const AllVehicle({super.key});

  @override
  State<AllVehicle> createState() => _AllVehicleState();
}

class _AllVehicleState extends State<AllVehicle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            moving('Fuel', " ","It is used to measure the fuel tank level of a vehicle."),
              SizedBox(width: 20.w,),
            moving("Temperature", " ","It is used to check the temperature of vehicle.")
          ],
        ),
        SizedBox(height: 10.h,),
        Row(
          children: [
            moving("GPS Satellites", '15',"Shows the total number of gps satellites being used for Location points."),
            SizedBox(width: 20.w,),
            moving("Ignition", "On","It is used to check IGNITION of vehicle is ON/OFF (value is in bool).")
          ],
        ),
        SizedBox(height: 10.h,),
        Row(
          children: [
            moving("Speed", "12 km/h","Display Vehicle Speed."),
              SizedBox(width: 20.w,),
            moving("Vehicle Battery Voltage", "49.2","Vehicle Battery Voltage.")
          ],
        ),
        SizedBox(height: 10.h,),
        Row(
          children: [
            Expanded(child: moving("Device Battery %", "83.33 %","It shows the device battery level."))
          ],
        )

      ],
    );
  }

  Widget moving(String name,String value,String dialogContaint){
    return Material(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.r)
      ),
      elevation: 12,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.r)
          ),
          color:const Color(0xff7481b1),
        ),
        height: 0.075.sh,
        width: 0.458.sw,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                style:const TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                InkWell(onTap: (){
                  showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  backgroundColor: const Color(0xff7481b1),
                  title: Text(name,style: const TextStyle(color: Colors.white),),
                  content: Text(dialogContaint,style: const TextStyle(color: Colors.white,),),
                  actions: <Widget>[
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text("GOT IT",style: TextStyle(color: Colors.black,),))
                  ]));

                },
                  child: const Icon(Icons.info_outline,color: Colors.white,)),
              ],
            ),
            Text(value,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}