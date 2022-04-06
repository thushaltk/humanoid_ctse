import 'package:flutter/material.dart';
import 'package:humanoid_ctse/screens/DashboardHandsScreen.dart';
import 'package:humanoid_ctse/screens/DashboardHeadScreen.dart';
import 'package:humanoid_ctse/screens/DashboardLegsScreen.dart';
import 'package:humanoid_ctse/screens/DashboardTorsoScreen.dart';
import 'package:humanoid_ctse/widgets/DashboardCardWidget.dart';

class DashboardAdminScreen extends StatefulWidget {
  static const routeName = '/admin-dashboard';

  const DashboardAdminScreen({Key? key}) : super(key: key);

  @override
  State<DashboardAdminScreen> createState() => _DashboardAdminScreenState();
}

class _DashboardAdminScreenState extends State<DashboardAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              width: double.infinity,
              child: DecoratedBox(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 1, 77, 123)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dashboard.",
                          style: TextStyle(
                              fontFamily: "Tenorite",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                          textAlign: TextAlign.start,
                        )
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            DashboardCardWidget(imageUrl: Image.asset('assets/images/head.png'), name: "HEAD", routename: DashboardHeadScreen.routeName,),
            DashboardCardWidget(imageUrl: Image.asset('assets/images/hand.png'), name: "HAND", 
            routename: DashboardHandsScreen.routeName,),
            DashboardCardWidget(imageUrl: Image.asset('assets/images/torso.png'), name: "TORSO", routename: DashboardTorsoScreen.routeName,),
            DashboardCardWidget(imageUrl: Image.asset('assets/images/legs.png'), name: "LEGS", routename: DashboardLegsScreen.routeName,),
          ],
        ),
      ),
    );
  }
}
