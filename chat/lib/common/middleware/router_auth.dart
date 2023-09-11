

import 'package:chat/common/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// check if user has logged in
class RouteAuthMiddleware extends GetMiddleware {
 //priority smaller the better 
  @override
   int? Priority = 0;

   RouteAuthMiddleware({required this.Priority});


   @override
   RouteSettings? redirect (String? route) {
    if(UserStore.to.isLogin || route == AppRoutes.SIGN_IN || route ==AppRoutes.INITIAL) {
       return null;
    } else {
      Future.delayed(
        Duration(seconds: 2), () => Get.snackbar("Tips", "Ligin expired, please login again!"));
      return const RouteSettings(name: AppRoutes.SIGN_IN);
    }
    }
   }
