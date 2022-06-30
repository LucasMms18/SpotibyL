import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomCardProjects extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  const CustomCardProjects({Key? key, this.onTap, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Card(
        color: Colors.grey[300],
        elevation: 1,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black.withAlpha(150)),
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Row(
              children: [
                Icon((MdiIcons.bookmarkPlus)),
                Text(
                  "$label",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.deepOrange,
                    size: 17,
                  ),
                  onTap: onTap,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
