import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void qollanmalarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📖 Qo‘llanmalar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Asosiy qo‘llanma'), KeyboardButton(text: 'Formula qo‘llanmasi')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Qo‘llanmalar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Asosiy qo‘llanma').listen((message) async {
    await message.reply('Asosiy qo‘llanma:\nJadval tuzish va formula kiritishni o‘rganing.\nHavola: https://support.microsoft.com/excel-basics');
  });

  teledart.onMessage(keyword: 'Formula qo‘llanmasi').listen((message) async {
    await message.reply('Formula qo‘llanmasi:\nHar bir funktsiyaning qo‘llanilishini o‘qing.\nHavola: https://exceljet.net/formulas');
  });
}