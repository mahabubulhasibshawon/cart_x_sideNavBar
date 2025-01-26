import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * .12,
      width: width * .45,
      child: Row(
        spacing: width * .02,
        children: [
          Container(
            height: height * .1,
          width: height * .1,
          decoration: BoxDecoration(
            color: Color(0xffffc2be),
            borderRadius: BorderRadius.circular(height * .02)
          ),
            child: Center(child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png', height: height * .08,),),
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Michal Kowalski', style: TextStyle(fontSize: height * .03, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text('Session ends in 9 min 5 s', style: TextStyle(color: Colors.grey),),
                  Icon(Icons.repeat, color: Colors.green,)
                ],
              ),
            ],
          )),
          Container(height: height * .09,
          width: height * .09,
          decoration:  BoxDecoration(
              color: Color(0xff017e00),
              borderRadius: BorderRadius.circular(height * .02)
          ),
            child: Icon(Icons.power_settings_new, size: height * .05,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
