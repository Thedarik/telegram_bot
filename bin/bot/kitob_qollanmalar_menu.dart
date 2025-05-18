import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void kitobQollanmalarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📚 Kitob va qo‘llanmalar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Onlayn kitoblar'), KeyboardButton(text: 'Qo‘llanmalar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Kitob va qo‘llanmalar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Onlayn kitoblar').listen((message) async {
    await message
        .reply('Onlayn kitoblar:\nhttps://books.excel.com dan yuklab oling.\nHavola: https://www.youtube.com/results?search_query=excel+books+tutorials');
  });

  teledart.onMessage(keyword: 'Qo‘llanmalar').listen((message) async {
    await message.reply('Qo‘llanmalar:\nhttps://udemy.com dan kurslarni o‘qing.');
  });
}