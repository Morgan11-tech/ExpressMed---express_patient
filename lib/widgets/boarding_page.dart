import 'package:flutter/material.dart';

import 'login_page.dart';

Widget boarding_page(BuildContext context, String image_path, String title, String desc){
  TextStyle titleStyle = TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold);
  TextStyle descStyle = TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal, fontFamily: 'OpenSans');

  return Container(
    decoration: BoxDecoration(
      image:DecorationImage(
        image:AssetImage(image_path),
      fit: BoxFit.cover,
    //    making the image darker
        colorFilter: ColorFilter.mode(Colors.black12, BlendMode.luminosity),

    ),
  ),
    padding: EdgeInsets.all(16.0),
    child: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title, style: titleStyle,
      ),
        SizedBox(height: 12.0,
        ),
        Text(desc,style: descStyle
        ),
        SizedBox(height: 25.0,
        ),
        Align(
          alignment: Alignment.center,
          child: RawMaterialButton(
            onPressed: (){
              navigateToLoginPage(context);
            },
            fillColor: Colors.teal,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 96.0),
              child: Text("Get Started",
                style: TextStyle(color: Colors.white,
                fontSize: 18.0),
              ),
          ),
        ),
      ],
    ),
  );
}

Future navigateToLoginPage(context) async{
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
}
