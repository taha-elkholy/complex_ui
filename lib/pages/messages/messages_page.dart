import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/core/widgets/background.dart';
import 'package:complex_ui/pages/messages/widgets/message_person_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0FB9B1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff0FB9B1),
        ),
        title: Row(
          children: [
            Text(
              'Mensajes',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: AppColors.white),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              'assets/icons/emojione_waving-hand.svg',
              width: 50,
              height: 50,
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          const Background(color1: AppColors.yellow, color2: AppColors.pink),
          ListView.separated(
            itemCount: chats.length,
            separatorBuilder: (_, __) => const SizedBox(
              height: 8,
            ),
            itemBuilder: (context, index) => MessagePersonItem(
              chat: chats[index],
            ),
          ),
        ],
      ),
    );
  }
}

List<Chat> chats = const [
  Chat(
      image: 'assets/images/persson1.png',
      title: 'Fernando Herrera',
      subTitle: 'Hi, I love theme!',
      time: '2 days'),
  Chat(
      image: 'assets/images/persson2.png',
      title: 'Anhí Lopez',
      subTitle: 'HCan you let me know your real¡',
      time: '09:33 PM'),
  Chat(
      image: 'assets/images/persson3.png',
      title: 'Miriam Velez',
      subTitle: 'You can check vis out at hearbet ou word´ress',
      time: '09:33 AM'),
  Chat(
      image: 'assets/images/persson4.png',
      title: 'Palacios',
      subTitle: 'call duration 2:45',
      time: '05:33 PM'),
];
