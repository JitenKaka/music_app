import 'package:flutter/material.dart';
import 'splashpage.dart';
import 'package:permission_handler/permission_handler.dart';

class GetPermissions extends StatefulWidget {
  @override
  GetPermissionsState createState() => GetPermissionsState();
}

class GetPermissionsState extends State<GetPermissions> {
  Permission permission = Permission.manageExternalStorage;

  _requestExtStorage() async {
    final r = await Permission.requestInstallPackages;
    print("permission is " + r.toString());
    onDoneLoading();
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SplashScreen()));
  }

  @override
  void initState() {
    _requestExtStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("images/icon3-192.png"),),
    );
  }
}