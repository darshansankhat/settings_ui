import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../android_app/A_Provider_screen/A_Provider_screen.dart';

class I_home_screen extends StatefulWidget {
  const I_home_screen({Key? key}) : super(key: key);

  @override
  State<I_home_screen> createState() => _I_home_screenState();
}

class _I_home_screenState extends State<I_home_screen> {

  A_Provider_screen? providerF;
  A_Provider_screen? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<A_Provider_screen>(context,listen: false);
    providerT=Provider.of<A_Provider_screen>(context,listen: true);

    return CupertinoPageScaffold(
    navigationBar:CupertinoNavigationBar(
      backgroundColor: CupertinoColors.systemRed,
      middle: Text("Settings ui",style: TextStyle(fontSize: 20,color: CupertinoColors.white),),
    ),
      backgroundColor: CupertinoColors.systemGrey5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //commn
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Common",style: TextStyle(color: CupertinoColors.inactiveGray),),
          ),
          //language
          CupertinoListTile(
            backgroundColor: CupertinoColors.white,
            title: Text(
              "Language",
              style: TextStyle(fontSize: 18),
            ),
            trailing: Row(
              children: [
                Text("English",style: TextStyle(color: CupertinoColors.inactiveGray,),),
                Icon(CupertinoIcons.chevron_right,color: CupertinoColors.inactiveGray,size: 20,)
              ],
            ),
            leading: Icon(CupertinoIcons.globe,color: CupertinoColors.inactiveGray),
          ),
          //environment
          CupertinoListTile(
            backgroundColor: CupertinoColors.white,
            title: Text(
              "Environment",
              style: TextStyle(fontSize: 18),
            ),
            trailing: Row(
              children: [
                Text("Production",style: TextStyle(color: CupertinoColors.inactiveGray,),),
                Icon(CupertinoIcons.chevron_right,color: CupertinoColors.inactiveGray,size: 20,)
              ],
            ),
            leading: Icon(CupertinoIcons.cloud,color: CupertinoColors.inactiveGray),
          ),
          //account
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Account",style: TextStyle(color: CupertinoColors.inactiveGray),),
          ),
          //phone
          Foldor1("Phone Number", Icon(CupertinoIcons.phone_solid,color: CupertinoColors.inactiveGray,)),
          //email
          Foldor1("Email", Icon(CupertinoIcons.mail_solid,color: CupertinoColors.inactiveGray,)),
          //sign out
          Foldor1("Sign out", Icon(CupertinoIcons.square_arrow_right,color: CupertinoColors.inactiveGray,),),
          //security
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Security",style: TextStyle(color: CupertinoColors.inactiveGray),),
          ),
          //look
          CupertinoListTile(
            backgroundColor: CupertinoColors.white,
            title: Text(
              "Look app in background",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(CupertinoIcons.device_phone_portrait,color: CupertinoColors.inactiveGray,),
            trailing: CupertinoSwitch(
              activeColor: CupertinoColors.systemRed,

              value: providerT!.on,
              onChanged: (value) {
                providerF!.onChange(value);
              },
            ),
          ),
          //fingar
          CupertinoListTile(
            backgroundColor: CupertinoColors.white,
            title: Text(
              "Use Fingerprint",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(CupertinoIcons.hand_raised_fill,color: CupertinoColors.inactiveGray,),
            trailing: CupertinoSwitch(
              activeColor: CupertinoColors.systemRed,
              value: providerT!.on1,
              onChanged: (value) {
                providerF!.onChange1(value);
              },
            ),
          ),
          //password
          CupertinoListTile(
            backgroundColor: CupertinoColors.white,
            title: Text(
              "Change Password",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(CupertinoIcons.lock_fill,color: CupertinoColors.inactiveGray,),
            trailing: CupertinoSwitch(
              activeColor: CupertinoColors.systemRed,
              value: providerT!.on2,
              onChanged: (value) {
                providerF!.onChange2(value);
              },
            ),
          ),
          //misc
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Misc",style: TextStyle(color: CupertinoColors.inactiveGray),),
          ),
          //service
          Foldor1("Terms of Service", Icon(CupertinoIcons.add,color: CupertinoColors.inactiveGray,)),
          //license
          Foldor1("Open Source License", Icon(CupertinoIcons.collections_solid,color: CupertinoColors.inactiveGray,)),
        ],
      ),
    );
  }
  Widget Foldor1(String title, Icon i1) {
    return CupertinoListTile(
      backgroundColor: CupertinoColors.white,
      title: Text(
        "$title",
        style: TextStyle(fontSize: 18),
      ),
      leading: i1,
      trailing: Icon(CupertinoIcons.chevron_right,color: CupertinoColors.inactiveGray,size: 20,),
    );
  }
}
