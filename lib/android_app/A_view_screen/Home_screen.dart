import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/android_app/A_Provider_screen/A_Provider_screen.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  A_Provider_screen? provideF;
  A_Provider_screen? provideT;

  @override
  Widget build(BuildContext context) {
    provideF = Provider.of<A_Provider_screen>(context, listen: false);
    provideT = Provider.of<A_Provider_screen>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Settings ui",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //common
                  Text(
                    "Common",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  //language
                  SizedBox(height: 20),
                  ListTile(
                    title: Text(
                      "Language",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text("English"),
                    leading: Icon(Icons.language),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  //environment
                  ListTile(
                    title: Text(
                      "Environment",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text("Production"),
                    leading: Icon(Icons.cloud_outlined),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //account
                  Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  //phone
                  SizedBox(height: 20),
                  Foldor1("Phone Number", Icon(Icons.phone)),
                  Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  //email
                  Foldor1("Email", Icon(Icons.email)),
                  Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  //sign out
                  Foldor1("Sign out", Icon(Icons.exit_to_app)),
                  SizedBox(height: 20),
                  //Security
                  Text(
                    "Security",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  SizedBox(height: 20),
                  //look
                  ListTile(
                    title: Text(
                      "Look app in background",
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: Icon(Icons.phonelink_lock),
                    trailing: Switch(
                      activeColor: Colors.red,
                        onChanged: (value) {
                          provideT!.onChange(value);
                        },
                        value: provideT!.on),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  //fingar
                  ListTile(
                    title: Text(
                      "Use Fingerprint",
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: Icon(Icons.fingerprint_outlined),
                    trailing: Switch(
                        activeColor: Colors.red,
                        onChanged: (value) {
                          provideT!.onChange1(value);
                        },
                        value: provideT!.on1),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  //password
                  ListTile(
                    title: Text(
                      "Change Password",
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: Icon(Icons.lock),
                    trailing: Switch(
                        activeColor: Colors.red,
                        onChanged: (value) {
                          provideT!.onChange2(value);
                        },
                        value: provideT!.on2

                    ),
                  ),
                  SizedBox(height: 20),
                  //Misc
                  Text(
                    "Misc",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Foldor1(String title, Icon i1) {
    return ListTile(
      title: Text(
        "$title",
        style: TextStyle(fontSize: 18),
      ),
      leading: i1,
    );
  }
}
