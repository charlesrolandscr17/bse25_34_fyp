import 'package:bse25_34_fyp/Auth/SignIn.dart';
import 'package:bse25_34_fyp/Screens/Drawer/Profile.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Models/SVDrawerModel.dart';
import '../Theme.dart';

class HomeDrawerComponent extends StatefulWidget {
  const HomeDrawerComponent({Key? key}) : super(key: key);

  @override
  State<HomeDrawerComponent> createState() => _HomeDrawerComponentState();
}

class _HomeDrawerComponentState extends State<HomeDrawerComponent> {
  List<SVDrawerModel> options = getDrawerOptions();

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/Images/profile.png',
                        height: 62, width: 62, fit: BoxFit.cover)
                    .cornerRadiusWithClipRRect(8),
                5.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("GenX eSports", style: boldTextStyle(size: 18)),
                    8.height,
                    Text('view profile',
                        style: secondaryTextStyle(
                          color: AppColors.lightgreen,
                          size: 15,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ).paddingOnly(left: 16, right: 8, bottom: 20, top: 20),
        20.height,
        const Divider(indent: 16, endIndent: 16),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: options.map((e) {
            int index = options.indexOf(e);
            return SettingItemWidget(
              decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.lightpurple.withAlpha(30)
                      : context.cardColor),
              title: e.title.validate(),
              titleTextStyle: boldTextStyle(size: 14),
              leading: Image.asset(e.image.validate(),
                  height: 22,
                  width: 22,
                  fit: BoxFit.cover,
                  color: AppColors.lightgreen),
              onTap: () {
                selectedIndex = index;
                setState(() {});
                if (selectedIndex == 0) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 1) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 2) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 3) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 5) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 4) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 6) {
                  finish(context);
                  const Profile().launch(context);
                } else if (selectedIndex == 7) {
                  finish(context);
                  const SignIn().launch(context);
                }
              },
            );
          }).toList(),
        ).expand(),
        const Divider(indent: 16, endIndent: 16),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("1.0.0"),
        ),
      ],
    );
  }
}
