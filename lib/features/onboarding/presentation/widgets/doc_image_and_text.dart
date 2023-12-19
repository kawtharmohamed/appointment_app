import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styles.dart';
class DocImageAndText extends StatelessWidget{
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      SvgPicture.asset("assets/svgs/logo_with_opacity.svg" , color: MyColors.mainBlue,),
      Container(foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(colors:[
          MyColors.white,
          MyColors.whiteWithOpacity
        ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: const [0.14,0.4]
        ),
      ),
        child: Image.asset("assets/images/doc.png"),),
       Positioned(bottom :30 , left: 0 , right:0 , child: Text("Best Doctor\nAppointment App" ,textAlign: TextAlign.center,
         style: TextStyles.font32BlueBold.copyWith(height: 1.4),)),
    ],);
  }

}