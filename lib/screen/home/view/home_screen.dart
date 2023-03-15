import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/screen/home/provider/home_provider.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<Homeprovider>(context, listen: false);
    homeprovidertrue = Provider.of<Homeprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Setting UI"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Common",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text("Environment"),
                subtitle: Text("Production"),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Account",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone number"),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sign out"),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Secutiry",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phonelink_lock),
                title: Text("Lock app in background"),
                trailing: Switch(activeColor: Colors.red,
                    onChanged: (value) => homeproviderfalse!.click(value),
                    value: homeprovidertrue!.on),

              ),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
                trailing: Switch(
                    onChanged: (value) => homeproviderfalse!.clickoff(value),
                    value: homeprovidertrue!.off) ,
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Change Password"),
                trailing: Switch(
                    activeColor: Colors.red,
                    onChanged: (value) => homeproviderfalse!.click1(value),
                    value: homeprovidertrue!.onoff) ,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Misc",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
