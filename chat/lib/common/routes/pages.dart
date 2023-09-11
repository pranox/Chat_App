import 'package:chat/common/middleware/router_auth.dart';
import 'package:chat/common/routes/names.dart';
import 'package:chat/pages/frame/welcome/index.dart';
import 'package:chat/pages/message/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages{
        static const INITIAL = AppRoutes.INITIAL;
        static final RouteObserver<Route> observer = RouteObserver();
        static List<String> history = [];

      static final List<GetPage> routes = [
          // about boot up the app
          GetPage(
            name: AppRoutes.INITIAL,
            page: () => const WelcomePage(),
            binding: WelcomeBinding(),
              ),
              /*
            GetPage(
            name: AppRoutes.SIGN_IN,
            page: () => SignInPage(),
            binding: SigninBinding(),
              ),

        GetPage(name: AppRoutes.EmailLogin, page: () => EmailLoginPage(),  binding: EmailLoginBindings()),
        GetPage(name: AppRoutes.Register, page: () => RegisterPage(),  binding: RegisterBindings()),
        GetPage(name: AppRoutes.Forgot, page: () => ForgotPage(),  binding: ForgotBindings()),
        GetPage(name: AppRoutes.Phone, page: () => PhonePage(),  binding: PhoneBindings()),
        GetPage(name: AppRoutes.SendCode, page: () => SendCodePage(),  binding: SendCodeBindings()),
        GetPage(name: AppRoutes.Contact, page: () => ContactPage(),  binding: ContactBindings()),
        */
        // MESSAGE PAGE 
        GetPage(name: AppRoutes.Message, page: () => MessagePage(),
          binding: MessageBinding(),middlewares: [
            RouteAuthMiddleware(Priority: 1),
      ],),
      /*
      GetPage(name: AppRoutes.Profile, page: () => ProfilePage(),  binding: ProfileBindings()),


      GetPage(name: AppRoutes.Chat, page: () => ChatPage(),  binding: ChatBindings()),

      GetPage(name: AppRoutes.Photoimgview, page: () => PhotoimgviewPage(),  binding: PhotoimgViewBindings()),
      GetPage(name: AppRoutes.VoiceCall, page: () => VoiceCallPage(),  binding: VoiceCallBindings()),
      GetPage(name: AppRoutes.VideoCall, page: () => VideoCallPage(),  binding: VideoCallBindings()),
      */
      
      ];


}