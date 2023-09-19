import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing_my_work/utils/colors.dart';
import 'package:testing_my_work/utils/icons.dart';

import '../widgets/setting_profile_widgets.dart';

class SettingProfilePage extends StatefulWidget {
  const SettingProfilePage({Key? key}) : super(key: key);
  static final String id = "setting_profile_page";

  @override
  State<SettingProfilePage> createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
  bool isHiddenPassword1 = true;
  bool isHiddenPassword2 = true;

  @override
  Widget build(BuildContext context) {
    double _widthPhone = MediaQuery.of(context).size.width;
    double _heightPhone = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MainColors.white,
        centerTitle: true,
        title: Text(
          "Изменить профиль",
          style: TextStyle(color: MainColors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: SvgPicture.asset(
                      "assets/images/Avatar.svg",
                      width: 120,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buttonSave(
                  width: _widthPhone,
                  color: MainColors.rose,
                  text: "Удалить фото",
                  colorText: MainColors.red),
              SizedBox(height: 20),
              buttonSave(
                  width: _widthPhone,
                  color: MainColors.lightBlue,
                  text: "Изменить фото",
                  colorText: MainColors.blue),
              SizedBox(height: 20),
              Divider(thickness: 1, color: MainColors.textFieldColor),
              SizedBox(height: 20),
              const Text(
                "Основная инфориация",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                "Основная инфориация о вас, имя, адрес, элеектронной почты и  номер  телефона",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 20,
              ),
              InputTextField(
                isHidden: isHiddenPassword1,
                  width: _widthPhone, nameTextField: "Ваше имя", hintText: "Ваше имя"),
              InputTextField(
                 isHidden: isHiddenPassword1,
                width: _widthPhone,
                  nameTextField: "Ваше  фамилия", hintText: "Ваше  фамилия"),
              InputTextField(
                isHidden: isHiddenPassword1,
                width: _widthPhone,
                  nameTextField: "Почтовый адрес", hintText: "Почтовый адрес"),
              InputTextField(
                isHidden: isHiddenPassword1,
                width: _widthPhone,
                  nameTextField: "Номер телефона",
                  hintText: "+998 (__)-___-__-__",
                  icon: MainIcons.phone),
              buttonSave(
                  width: _widthPhone,
                  color: MainColors.blue,
                  text: "Сохранить изменения",
                  colorText: MainColors.white),
              SizedBox(height: 20),
              Divider(thickness: 1, color: MainColors.textFieldColor),
              const Text(
                "Управления паролям",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                "Чтобы обеспечить безопасность своей учетной записи, используйте длинный случайный пароль",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              InputTextField(
                isHidden: isHiddenPassword1,
                width: _widthPhone,
                  hintText: "Старый пароль",
                  nameTextField: "Старый пароль",
                  icon: MainIcons.password,
                  inkWell: InkWell(
                    onTap: (){
                      setState(() {
                        isHiddenPassword1 = !isHiddenPassword1;
                      });
                    },
                    child: isHiddenPassword1? MainIcons.eyeClose : MainIcons.eye,
                  )),
              InputTextField(
                isHidden: isHiddenPassword2,
                width: _widthPhone,
                  hintText: "Новый пароль",
                  nameTextField: "Новый пароль",
                  icon: MainIcons.password,
                  inkWell: InkWell(
                    onTap: (){
                      setState(() {
                        isHiddenPassword2 = !isHiddenPassword2;
                      });
                    },
                    child: isHiddenPassword2? MainIcons.eyeClose : MainIcons.eye,
                  ) ),
              SizedBox(
                height: 10,
              ),
              buttonSave(
                  width: _widthPhone,
                  color: MainColors.blue,
                  text: "Изменитть пароль",
                  colorText: MainColors.white),
              SizedBox(height: 20),
              Divider(thickness: 1, color: MainColors.textFieldColor),
              const Text(
                "Активные сессии",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                "Упарвляйте активными  сеансами и выходите из них в других браузерах и устройствах.",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              activeDevice(
                  svg: "assets/images/Pc icon.svg",
                  name: "Windows 11 - Google Chrome",
                  ip: "192.168.95.36"),
              SizedBox(
                height: 5,
              ),
              activeDevice(
                  svg: "assets/images/Pc icon.svg",
                  name: "Windows 10 - Mozilla Firefox",
                  ip: "186.369.36.25"),
              SizedBox(
                height: 5,
              ),
              activeDevice(
                  svg: "assets/images/Mobile icon.svg",
                  name: "IOS 17 - Mobile App",
                  ip: "186.369.36.25"),
              SizedBox(
                height: 20,
              ),
              buttonSave(
                  width: _widthPhone,
                  color: MainColors.rose,
                  text: "Остановить  другиие сеансы",
                  colorText: MainColors.red)
            ],
          ),
        ),
      ),
    );
  }

}
