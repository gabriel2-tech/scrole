import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scrole/apps/themes/colors.dart';

import '../../../apps/themes/typography.dart';
import '../controllers/auth_controller.dart';

class AuthEcrans extends GetView<AuthController> {
  AuthEcrans({super.key});
  final _cnt = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25,),
            //Application nom
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              child: Image.asset("assets/logos/logo_c.png", height: 90,),
            ),

            // SizedBox(height: 60,),
            //image cercle zone
            SizedBox(
              width: double.maxFinite,
              child: Image.asset("assets/images/Image_rond.PNG", fit: BoxFit.cover,),
            ),

            SizedBox(height: 10,),
            //Description application
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              child: Text("Rejoindre la communaute !",
                style: ScroleTypography.bodyLight,
              ),
            ),

            SizedBox(height: 10,),
            //Description 2
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.center,
              width: double.maxFinite,
              child: Text("Rejoignez une communauté qui vous ressemble. Échangez, partagez vos passions et créez des liens authentiques avec des personnes qui partagent vos centres d'intérêt.",
                textAlign: TextAlign.center,
                style: ScroleTypography.body,
              ),
            ),

            //bouton de connexion
            SizedBox(height: 15,),
            Obx(() => GestureDetector(
              onTap: _cnt.loginWithGoogle,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 59),
                alignment: Alignment.center,
                width: double.maxFinite,
                height: 65,
                decoration: BoxDecoration(
                    color: _cnt.authEnCour.value ? Colors.grey : ScroleColor.textPrimary,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Center(
                  child: _cnt.authEnCour.value ? CircularProgressIndicator() : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg_icons/google.svg"),
                      SizedBox(width: 5,),
                      Text("Se connecter avec Google", style: ScroleTypography.button,)
                    ],
                  ),
                ),
              ),
            ),),

            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: double.maxFinite,
              height: 80,
              child: RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                    style: ScroleTypography.bodyLight,
                      children: [
                        TextSpan(
                          text: "En utilisant cette Application, vous acceptez nos ",
                        ),
                        TextSpan(text: "Conditions ", style: ScroleTypography.legalLink),
                        TextSpan(text: "et notre "),
                        TextSpan(text: "Politique de confidentialité", style: ScroleTypography.legalLink)
                      ],)
              )
            )
          ],
        ),
      ),
    );
  }
}
