import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void googleSheetsMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📊 Google Sheets').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Jadval yaratish'), KeyboardButton(text: 'Formula qo‘shish')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Google Sheets bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Jadval yaratish').listen((message) async {
    await message.reply(
        'Jadval yaratish:\nhttps://sheets.google.com da yangi jadval oching.\nHavola: https://www.youtube.com/results?search_query=google+sheets+tutorials');
  });

  teledart.onMessage(keyword: 'Formula qo‘shish').listen((message) async {
    await message.reply('Formula qo‘shish:\n=SUM(A1:A10) bilan yig‘indini hisoblang.');
  });
}