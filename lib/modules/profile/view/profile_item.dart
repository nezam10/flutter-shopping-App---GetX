import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/widgets/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.assetName,
    this.isLast = false,
    this.onTap,
  });
  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 65,
            child: ListTile(
              leading: SpIcon(assetName: "$assetName"),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: subtitle != null
                  ? Text(
                      subtitle.toString(),
                      style: Theme.of(context).textTheme.caption,
                    )
                  : null,
              trailing: InkWell(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.chevron_forward,
                  size: 16,
                ),
              ),
            ),
          ),
          isLast ? Container() : Divider(),
        ],
      ),
    );
  }
}
