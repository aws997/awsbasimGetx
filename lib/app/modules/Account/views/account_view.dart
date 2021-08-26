import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
      Get.put(AccountController());    

    return Scaffold(
    
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
       header(),
       Padding(
         padding: const EdgeInsets.all(15.0),
         child: Text('الخيارات',
         style: TextStyle(
           color: Theme.of(context).accentColor,
           fontWeight: FontWeight.bold,
           fontSize: 15
         ),
         ),
       ),

tile('icon1.png',"events".tr),

tile('icon2.png',"weeklys".tr),

         tile('icon3.png',"marks".tr),

         tile('icon4.png',"tests".tr),
          ],
        ),
      )
    );
  }
Widget header(){
return      Material(
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                 
profilePic(),
SizedBox(width: 10,),
Column(
  
                crossAxisAlignment: CrossAxisAlignment.start,

  children: [
    Text("نجوى كرم",
    style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 18),),
    Text("الصف الدراسي - الشعبة",
    style: TextStyle(color: Colors.grey,fontSize: 11),)
  ],
)
                  ],
                ),
              ),
            );
}
  Widget profilePic(){
    return    SizedBox(
                  width:75 ,
                  height: 75,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      foregroundImage: AssetImage('assets/Oval.png',
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Material(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(Get.context!).accentColor,
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.camera_alt_rounded,color: Colors.white,),
                        ),
                      ),
                    ))
                  ],
                ),
                );
  }

  Widget tile(String icon,String title){
        return ListTile(
         leading: Image.asset('assets/$icon',
         width: 25,height: 25,
         ),
         title: Text(title),
       );
  }
}
