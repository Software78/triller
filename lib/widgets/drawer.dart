import 'package:flutter/material.dart';
import 'package:triller_zone/utils/constants.dart';
import 'package:triller_zone/widgets/mylisttile.dart';
import 'package:triller_zone/widgets/spacer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = deviceWidth(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            color: primaryColor,
            width: double.infinity,
            height: size.height * 0.25,
            child: const Center(
              child: FlutterLogo(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myListTile.length,
              itemBuilder: (context, int index) => Column(
                children: [
                  MyListTile(
                    icon: myListTile[index].icon,
                    text: myListTile[index].text,
                    onPressed: myListTile[index].onPressed,
                  ),
                  const AddVerticalSpace(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
