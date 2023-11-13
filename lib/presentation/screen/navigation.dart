import 'package:flutter/material.dart';
import 'package:xyz/presentation/screen/dash_board.dart';
import 'package:xyz/presentation/screen/maintenance.dart';
import 'package:xyz/presentation/screen/vehicle.dart';

class NavigationPage extends StatefulWidget {
  static const NAVIGATION_PAGE="navigationPage";
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> with TickerProviderStateMixin{
  late TabController _tabController;
  
   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3,vsync: this);
  }
  @override
  void dispose() {
    
    _tabController.dispose();
    super.dispose();
  }
  TabBar get _tabBar=> const TabBar(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
      color:Color.fromARGB(255, 218, 211, 137),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(-2, 5),
          blurStyle: BlurStyle.outer,
          blurRadius: 25
        ),
        
      ]

    ),
    tabs: <Widget>[
            Tab(
              text: "DASHBOARD",),
            Tab(
              text: "VEHICLES",
            ),
            Tab(text: "MAINTENANCE",)
          ],);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 3, child: Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow.shade50,
        
        bottom: PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: Material(
            elevation: 15,
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
            color:const Color.fromARGB(255, 136, 153, 137),
            child: Theme(
              data: ThemeData().copyWith(splashColor: const Color(0xff00c5e2)),
              child: _tabBar,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.yellow.shade50,
      body: const TabBarView(
        
        children:<Widget>[
          DashBoard(),
          Vehicle(),
          Maintenance(),
        ],
      ),
    ));
          
  }
}