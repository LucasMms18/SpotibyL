import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String? label;
  final IconData? trailing;
  final IconData? leading;
  final Function()? onTap;
  const CustomListTile(
      {Key? key, this.label, this.trailing, this.leading, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      minLeadingWidth: 0,
      title: Text(
        label!,
        style: TextStyle(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      trailing: Icon(
        trailing,
        color: Colors.grey[300],
        size: 17,
      ),
      leading: Icon(
        leading,
        size: 20,
        color: Colors.grey[500],
      ),
      onTap: onTap,
    );
  }
}
