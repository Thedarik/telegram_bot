import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void microsoftOfficeMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '💼 Microsoft Office').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Excel'), KeyboardButton(text: 'Word')],
        [KeyboardButton(text: 'PowerPoint'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Microsoft Office bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Excel').listen((message) async {
    await message
        .reply('Excel:\nJadval tuzishni o‘rganing.\nHavola: https://youtube.com/playlist?list=PLV6IQEEtbQaI_Qhh_r10kr3pj5Sdfw6DR&si=jz3Hn0DREtP7rAHd');
  });

  teledart.onMessage(keyword: 'Word').listen((message) async {
    await message.reply('Word:\nHujjat tayyorlashni sinab ko‘ring.');
  });

  teledart.onMessage(keyword: 'PowerPoint').listen((message) async {
    await message.reply('PowerPoint:\nTaqdimot yasang.');
  });
}