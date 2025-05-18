import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void docsMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📝 Docs').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Hujjat yaratish'), KeyboardButton(text: 'Formatlash')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Docs bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Hujjat yaratish').listen((message) async {
    await message.reply(
        'Hujjat yaratish:\nhttps://docs.google.com da yangi hujjat oching.\nHavola: https://www.youtube.com/results?search_query=google+docs+tutorials');
  });

  teledart.onMessage(keyword: 'Formatlash').listen((message) async {
    await message.reply('Formatlash:\nShriftsiz o‘zgartiring va rasm qo‘shing.');
  });
}