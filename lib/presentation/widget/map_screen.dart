import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../src/locations.dart' as locations;

class MapScreen extends StatefulWidget {
  // ignore: constant_identifier_names
  static const MAP_SCREEN = "mapScreen";
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  late GoogleMapController mapController;
  //final LatLng _center = const LatLng(28.7041, 77.1025);
  //  void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }

  //map
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }
  List<String> movement=[
    'Movement of 0.05 km 1 min',
    'Movement of 0.45 km 17 min',
    'Movement of 0.56 km 15 min',
    'Movement of 0.51 km 13 min',
    'Movement of 0.50 km 53 min',

  ];
  List<String> starting = [
    "11:07 AM, Saturday 04 Nov 2023",
    "10:57 AM, Saturday 04 Nov 2023",
    "11:21 AM, Saturday 04 Nov 2023",
    "11:21 AM, Saturday 04 Nov 2023",
    "11:21 AM, Saturday 04 Nov 2023"
  ];
  List<String> details = [
    "a-23 Gurgao lkfsd kf klfi kljsadfi lkjdfi lkafi new delhi old delhi cp sp what kjdfkjhi-110045 ",
    "a-23 Gurgao lkfsd kf klfi kljsadfi lkjdfi lkafi new delhi old delhi cp sp what kjdfkjhi-110045 ",
    "a-23 Gurgao lkfsd kf klfi kljsadfi lkjdfi lkafi new delhi old delhi cp sp what kjdfkjhi-110045 ",
    "a-23 Gurgao lkfsd kf klfi kljsadfi lkjdfi lkafi new delhi old delhi cp sp what kjdfkjhi-110045 ",
    "a-23 Gurgao lkfsd kf klfi kljsadfi lkjdfi lkafi new delhi old delhi cp sp what kjdfkjhi-110045 "
  ];
  List<String> ending = [
    "11:07 AM, Saturday 04 Nov 2023",
    "10:57 AM, Saturday 04 Nov 2023",
    "11:21 AM, Saturday 04 Nov 2023",
    "11:21 AM, Saturday 04 Nov 2023",
    "11:21 AM, Saturday 04 Nov 2023"
  ];

  @override
  Widget build(BuildContext context) {
    const BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mahipal7136"),
      ),
      body: SlidingUpPanel(
        minHeight: 0.2.sh,
        maxHeight: 0.75.sh,
        color: Colors.yellow.shade50,
        borderRadius: radius,
        body: Center(
          child: Stack(
            children: <Widget>[GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(0, 0),
                zoom: 2.0,
              ),
              markers: _markers.values.toSet(),
            ),
            
            Container(
              padding: EdgeInsets.only(left:18.w),
              height: 100.h,
              width: 1.sw,
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.r),bottomRight: Radius.circular(10.r)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Moving since 3 min",style: TextStyle(
                    color: Colors.green.shade500
                  ),),
                  //SizedBox(height: 5.h,),
                  Text("Last Data Received at 10:00 AM",style: TextStyle(color: Colors.grey.shade700),),
                  SizedBox(height: 10.h,),
                  const Text("A-23 Gurgao lkfsd kf klfi kljsadfi lkjdfi lkafi new delhi old delhi cp sp what kjdfkjhi-110045 ",style: TextStyle(
                    fontWeight: FontWeight.w500,color:Colors.black
                  ),)
                ],
              ),
            )
            
            ]
          ),
        ),
        panel: SizedBox(
          width: 1.sw,
          child: Column(
            children: <Widget>[
              Container(
                height: 5.h,
                margin: EdgeInsets.only(top: 8.h, bottom: 15.h),
                width: 100.w,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(2.5))),
                // color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: const Column(children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Color(0xff00c5e2),
                      ),
                      Text("Share Location",
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(children: <Widget>[
                      Icon(
                        Icons.access_time_sharp,
                        color: Color(0xff00c5e2),
                      ),
                      Text(
                        "ETA",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(children: <Widget>[
                      Icon(
                        Icons.directions_car_filled,
                        color: Color(0xff00c5e2),
                      ),
                      Text(
                        "Nearest Vehicle",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(children: <Widget>[
                      Icon(
                        Icons.navigation_rounded,
                        color: Color(0xff00c5e2),
                      ),
                      Text(
                        "Navigator",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                color: Colors.grey,
                width: 0.9.sw,
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.05.sw),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Today",
                    )),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 0.05.sw, right: 0.05.sw, top: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    todayBox("Distance", "0.1 km"),
                    todayBox("Travel Time", "0h 1m"),
                    todayBox("Stopped", "10h 30m")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                height: 1.h,
                width: 0.9.sw,
                color: Colors.grey,
              ),
              SizedBox(
                  width: 1.sw,
                  child: Column(
                    children: <Widget>[
                      const Text("Driver and Consignor"),
                      Container(
                        margin: EdgeInsets.only(top: 15.h),
                        color: Colors.grey.shade300,
                        padding: EdgeInsets.only(left: 10.w),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Today",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),

                      // movementList()
                    ],
                  )),
              SizedBox(
                  // width: 1.sw,
                  height: 0.5.sh,
                  child: movementList())
            ],
          ),
        ),
      ),
    );
  }

  Widget todayBox(String title, String value) {
    return Column(children: [
      Text(title),
      Text(
        value,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
      ),
    ]);
  }

  Widget movementList() {
    return SizedBox(
      width: 1.sw,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left:8.w,bottom: 5.h),
                    child: Text(
                      movement[index],
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp),
                      ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: const Icon(Icons.location_on, color: Colors.red),
                      ),
                      //SizedBox(width: 3.w,),
                      Text(
                        starting[index],
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: const Dash(
                          direction: Axis.vertical,
                          length: 60,
                          dashLength: 5,
                          dashColor: Colors.red,
                        ),
                      ),
                      SizedBox(width: 25.w,),
                      SizedBox(
                        width: 0.8.sw,
                        child: Text(details[index],
                        style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400),
                        ))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 9.w,
                        ),
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.green)),
                        // child: Container(
                        //   height: 20,
                        // ),
                      ),
                      SizedBox(width: 8.w,),
                      Text(
                        ending[index],
                        style: TextStyle(color:Colors.grey.shade600,fontWeight: FontWeight.w500,fontSize: 16.sp),
                        )
                    ],
                  ),
                  SizedBox(height: 20.h,)
                ],
                
              ),
            );
          }),
    );
  }
}
