import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scrubr_client_app/customer/core/controller/car_controller.dart';
import 'package:scrubr_client_app/routes/routes.dart';
import 'package:scrubr_client_app/common/core/controller/signup_controller.dart';
import 'const/colors.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => SignupController()),
              ChangeNotifierProvider(create: (_) => CarController()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: wColor,
              ),
              onGenerateRoute: Routes.onGenerateRoute,
              initialRoute: '/',
            ),
          );
        });
  }
}
