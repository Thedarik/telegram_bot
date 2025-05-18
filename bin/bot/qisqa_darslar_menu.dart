import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void qisqaDarslarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '🎓 Qisqa Darslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Jadval yaratish'), KeyboardButton(text: 'Formula kiritish')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Qisqa Darslar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Jadval yaratish').listen((message) async {
    await message.reply(
        'Jadval yaratish:\nA1 dan F10 gacha bo‘lgan hududni belgilang va sarlavhalar qo‘shing.\nHavola: https://www.youtube.com/results?search_query=excel+short+lessons');
  });

  teledart.onMessage(keyword: 'Formula kiritish').listen((message) async {
    await message.reply('Formula kiritish:\n=SUM(A1:A5) bilan yig‘indini hisoblang.\nHar bir darsdan keyin formula yozib ko‘ring.');
  });
}