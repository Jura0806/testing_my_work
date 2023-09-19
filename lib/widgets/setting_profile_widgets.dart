/// In  this code  bas was  written widgets of SettingProfilePage

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

Widget buttonSave(
    {required double width,
    required Color color,
    required String text,
    required Color colorText}) {
  return Container(
    height: 46,
    width: width,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
    child: Center(
        child: Text(
      text,
      style: TextStyle(color: colorText),
    )),
  );
}

Widget InputTextField(
    {required String hintText,
    required String nameTextField,
    required double width,
    required bool isHidden,
    Icon? icon,
    InkWell? inkWell}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        nameTextField,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        height: 45,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
            color: MainColors.textFieldColor,
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          obscureText: isHidden,
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              prefixIcon: icon,
              // prefixText: "+998 ",
              prefixStyle: const TextStyle(color: Colors.black, fontSize: 15),
              suffixIcon: inkWell
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  );
}

Widget activeDevice({
  required String svg,
  required String name,
  required String ip,
}) {
  return Row(
    children: [
      SvgPicture.asset(svg, width: 44),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Row(
            children: [
              Text(ip),
              SizedBox(
                width: 10,
              ),
              svg == "assets/images/Mobile icon.svg"
                  ? Text(
                      "Это устройство",
                      style: TextStyle(color: MainColors.green),
                    )
                  : SizedBox.shrink()
            ],
          ),
        ],
      ),
    ],
  );
}
