import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void nazariyMalumotlarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📚 Nazariy ma‘lumotlar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Jadval tuzish'), KeyboardButton(text: 'Formula tushunchasi')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Nazariy ma‘lumotlar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Jadval tuzish').listen((message) async {
    await message.reply('Jadval tuzish:\nQator va ustunlardan iborat strukturani o‘rganing.\nMasalan, A1 dan F10 gacha bo‘lgan hududni belgilang.');
  });

  teledart.onMessage(keyword: 'Formula tushunchasi').listen((message) async {
    await message.reply(
        'Formula tushunchasi:\n=A1+B1 kabi arifmetik amallarni o‘rganing.\nHavola: https://www.youtube.com/results?search_query=excel+theory+tutorials');
  });
}