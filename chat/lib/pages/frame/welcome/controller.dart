
import 'package:chat/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

 class WelcomeController extends GetxController{
    WelcomeController();
    final title = "chat .";
    final state = Welcomestate();

    @override
    void onReady(){
      super.onReady();
      print("WelcomeController ");    }
 }