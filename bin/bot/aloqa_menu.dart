import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void aloqaMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📞 Biz bilan aloqa').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Telegram'), KeyboardButton(text: 'Email')],
        [KeyboardButton(text: 'Telefon'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Biz bilan aloqa bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Telegram').listen((message) async {
    await message.reply('Telegram:\n@ExcelSupport ga yozing.\nHavola: https://www.youtube.com/results?search_query=contact+support+tutorials');
  });

  teledart.onMessage(keyword: 'Email').listen((message) async {
    await message.reply('Email:\nsupport@exceldars.com ga xabar yuboring.');
  });

  teledart.onMessage(keyword: 'Telefon').listen((message) async {
    await message.reply('Telefon:\n+998 90 123 45 67 ga qo‘ng‘iroq qiling.');
  });
}