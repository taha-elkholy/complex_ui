import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:complex_ui/pages/messages/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0FB9B1),
      appBar: AppBar(
        backgroundColor: AppColors.chatAppBarColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.chatAppBarColor,
        ),
        leading: const SizedBox.shrink(),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset(
                    'assets/icons/eva_arrow-ios-back-fill.svg',
                    width: 60,
                    height: 60,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/persson2.png',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Fernando Herrera',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: const [
          Background(color1: AppColors.yellow, color2: AppColors.pink),
          _Body()
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemCount: chatMessages.length,
                separatorBuilder: (_, index) => const SizedBox(
                      height: 16,
                    ),
                itemBuilder: (context, index) =>
                    ChatItem(chatMessage: chatMessages[index]))),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/fluent_emoji-24-regular.svg',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'Mensaji',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset('assets/icons/bx_link-alt.svg',
                              width: 20,
                              height: 20,
                              color: Colors.black.withOpacity(0.5)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: AppColors.chatItemBlueColor,
                radius: 27.5,
                child: SvgPicture.asset(
                  'assets/icons/uil_message.svg',
                  color: AppColors.white,
                  width: 33,
                  height: 33,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

List<ChatMessage> chatMessages = const [
  ChatMessage(
    time: 'Yesterday 9:41',
    text: 'Let’s get lunch! How about pizza? 🍕',
    isSent: true,
    deliveryStatus: 'Read 10:02',
  ),
  ChatMessage(
    time: 'Yesterday 9:41',
    text: 'That sounds great! I’m in. What time works for you?',
    isSent: false,
  ),
  ChatMessage(
    time: 'Yesterday 9:41',
    text: 'Let’s get lunch! How about pizza? 🍕',
    isSent: true,
  ),
  ChatMessage(
    text: 'That sounds great! I’m in. What time works for you?',
    isSent: false,
  ),
  ChatMessage(
    text: 'Let’s get lunch! How about pizza? 🍕',
    isSent: true,
  ),
  ChatMessage(
    text: 'Let’s get lunch! How about pizza? 🍕',
    isSent: true,
    deliveryStatus: 'Read 10:02',
  ),
];
