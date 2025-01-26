import 'package:cart_page/widgets/profile_header_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(height * .02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: height * .01,
            children: [
              ProfileHeaderWidget(),
              Divider(),
              Text('    Banking'),
              ListTile(leading: Icon(Icons.dashboard_customize_outlined),title: Text('Dashboard'),),
              ListTile(leading: Icon(Icons.calendar_month),title: Text('History'),),
              ListTile(leading: Icon(Icons.analytics_outlined),title: Text('Analysis'),),
              ListTile(leading: Icon(Icons.attach_money),title: Text('Finance'),),
              Divider(),
              Text('    Services'),
              ListTile(leading: Icon(Icons.email_outlined),title: Text('Messages'),trailing: Container(
                padding: EdgeInsets.all(height * .01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * .01),
                  color: Color(0xffb80000)
                ),
                child: Text('9' , style: TextStyle(color: Colors.white),),),),
              ListTile(leading: Icon(Icons.folder_outlined),title: Text('Documents'),),
              ListTile(leading: Icon(Icons.production_quantity_limits_sharp),title: Text('Products'),),
              Divider(),
              Text('    Other'),
              ListTile(leading: Icon(Icons.help_center_outlined),title: Text('Help'),),
              ListTile(leading: Icon(Icons.settings_outlined),title: Text('Settings'),),
          
            ],
          ),
        ),
      ),
    );
  }
}


