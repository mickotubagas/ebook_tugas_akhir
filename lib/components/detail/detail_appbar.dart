import 'package:tugas_akhir/components/constant.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 247, 235, 235),
      elevation: 10,
      toolbarHeight: 80,
      title: Text(
        "Book Details",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: darkColor,
        ),
      ),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(left: spacer),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: darkColor,
            size: 20,
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(right: spacer),
            child: Icon(
              Icons.share_outlined,
              color: darkColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
