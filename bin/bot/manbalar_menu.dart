import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void manbalarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '🔗 Manbalar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Veb-saytlar'), KeyboardButton(text: 'Kurslar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Manbalar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Veb-saytlar').listen((message) async {
    await message.reply(
        'Veb-saytlar:\nhttps://exceljet.net va https://support.microsoft.com ni o‘qing.\nHavola: https://www.youtube.com/results?search_query=excel+resources+tutorials');
  });

  teledart.onMessage(keyword: 'Kurslar').listen((message) async {
    await message.reply('Kurslar:\nhttps://coursera.org/excel dan onlayn kurslarni toping.');
  });
}