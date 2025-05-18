import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void excelDasturlariMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📊 Excel dasturlari').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Makrolar yaratish'), KeyboardButton(text: 'VBA kodlari')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Excel dasturlari bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Makrolar yaratish').listen((message) async {
    await message
        .reply('Makrolar yaratish:\nDeveloper > Record Macro bilan makro yozing.\nHavola: https://www.youtube.com/results?search_query=excel+vba+tutorials');
  });

  teledart.onMessage(keyword: 'VBA kodlari').listen((message) async {
    await message.reply('VBA kodlari:\nAlt+F11 bilan VBA editorini ochib, oddiy kod yozing.\nMasalan, MsgBox "Salom" deb xabar chiqaring.');
  });
}