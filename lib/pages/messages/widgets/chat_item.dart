import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key, required this.chatMessage}) : super(key: key);
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (chatMessage.time != null)
          Align(
            alignment: AlignmentDirectional.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                chatMessage.time!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: const Color(0xff3C3C43).withOpacity(0.6)),
              ),
            ),
          ),
        Align(
          alignment: chatMessage.isSent
              ? AlignmentDirectional.centerEnd
              : AlignmentDirectional.centerStart,
          child: Row(
            children: [
              if (chatMessage.isSent)
                const SizedBox(
                  width: 80,
                ),
              Expanded(
                child: Stack(
                  alignment: chatMessage.isSent
                      ? AlignmentDirectional.bottomEnd
                      : AlignmentDirectional.bottomStart,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: chatMessage.isSent
                            ? AppColors.chatItemBlueColor
                            : AppColors.chatItemWhiteColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          chatMessage.text,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: chatMessage.isSent
                                        ? AppColors.chatItemWhiteColor
                                        : Colors.black,
                                  ),
                        ),
                      ),
                    ),
                    if (chatMessage.isSent)
                      SvgPicture.asset(
                        'assets/icons/right_tail.svg',
                        color: AppColors.chatItemBlueColor,
                      ),
                    if (!chatMessage.isSent)
                      SvgPicture.asset(
                        'assets/icons/left_tail.svg',
                        color: AppColors.chatItemWhiteColor,
                      )
                  ],
                ),
              ),
              if (!chatMessage.isSent)
                const SizedBox(
                  width: 80,
                ),
            ],
          ),
        ),
        if (chatMessage.deliveryStatus != null)
          Align(
            alignment: chatMessage.isSent
                ? AlignmentDirectional.centerEnd
                : AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                chatMessage.deliveryStatus!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: const Color(0xff3C3C43).withOpacity(0.6)),
              ),
            ),
          ),
      ],
    );
  }
}

class ChatMessage {
  final String? time;
  final String? deliveryStatus;
  final String text;
  final bool isSent;

  const ChatMessage({
    this.time,
    this.deliveryStatus,
    required this.text,
    required this.isSent,
  });
}
