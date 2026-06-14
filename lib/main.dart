import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'apps/navigation/nav_routes.dart';
import 'apps/themes/theme.dart';
import 'features/auth/controllers/auth_controller.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 559, name: MOBILE),
          const Breakpoint(start: 560, end: 1050, name: TABLET),
          const Breakpoint(start: 1051, end: double.infinity, name: DESKTOP),
        ],
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.darkTheme,
      darkTheme: ThemeApp.darkTheme,
    );
  }
}