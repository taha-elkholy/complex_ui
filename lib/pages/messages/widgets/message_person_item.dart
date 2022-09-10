import 'package:complex_ui/core/router/routes.dart';
import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';

class MessagePersonItem extends StatelessWidget {
  const MessagePersonItem({Key? key, required this.chat}) : super(key: key);
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=> Navigator.of(context, rootNavigator: true).pushNamed(AppRoutes.chatRoomPageRoute),
      leading: SizedBox(
        width: 80,
        height: 80,
        child: Image.asset(
          chat.image,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        chat.title,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        chat.subTitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: AppColors.white, fontWeight: FontWeight.normal),
      ),
      trailing: Text(
        chat.time,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Colors.black.withOpacity(0.5),
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

class Chat {
  final String image;
  final String title;
  final String subTitle;
  final String time;

  const Chat({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.time,
  });
}
