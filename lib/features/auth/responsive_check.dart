import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../screen_not_disponible.dart';
import 'ecrans/auth_ecrans.dart';

class ResponsiveCheck extends StatelessWidget {
  const ResponsiveCheck({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobil = ResponsiveBreakpoints.of(context).isMobile;

    if(isMobil){
      return AuthEcrans();
    }
    return LandingPage();
  }
}
