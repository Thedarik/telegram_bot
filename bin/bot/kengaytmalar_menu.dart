import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void kengaytmalarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '➕ Kengaytmalar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Power Query'), KeyboardButton(text: 'Power Pivot')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Kengaytmalar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Power Query').listen((message) async {
    await message.reply(
        'Power Query:\nMa’lumotlarni import qiling va transformatsiya qiling.\nHavola: https://www.youtube.com/results?search_query=excel+add-ins+tutorials');
  });

  teledart.onMessage(keyword: 'Power Pivot').listen((message) async {
    await message.reply('Power Pivot:\nKatta ma’lumotlar bilan ishlashni o‘rganing.');
  });
}