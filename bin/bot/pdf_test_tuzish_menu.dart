import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void pdfTestTuzishMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📄 PDF Test tuzish').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Test yaratish'), KeyboardButton(text: 'Onlayn vositalar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('PDF Test tuzish bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Test yaratish').listen((message) async {
    await message.reply(
        'Test yaratish:\nWord’da savollar yozib, File > Save As > PDF sifatida saqlang.\nHavola: https://www.youtube.com/results?search_query=pdf+test+creation+tutorials');
  });

  teledart.onMessage(keyword: 'Onlayn vositalar').listen((message) async {
    await message.reply('Onlayn vositalar:\nhttps://pdfeditor.com da test shaklini yarating.');
  });
}
