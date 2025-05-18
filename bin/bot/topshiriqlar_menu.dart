import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void topshiriqlarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '✅ Topshiriqlar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Oddiy topshiriqlar'), KeyboardButton(text: 'Murakkab topshiriqlar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Topshiriqlar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Oddiy topshiriqlar').listen((message) async {
    await message.reply(
        'Oddiy topshiriqlar:\n10 ta mahsulot narxini yig‘ib, grafik chizing.\nHavola: https://www.youtube.com/results?search_query=excel+exercises+tutorials');
  });

  teledart.onMessage(keyword: 'Murakkab topshiriqlar').listen((message) async {
    await message.reply('Murakkab topshiriqlar:\nShartli formatlash va Pivot Table ishlatish.');
  });
}