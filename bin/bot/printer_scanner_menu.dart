import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void printerScannerMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '🖨️ Printer scanner').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Printerga ulash'), KeyboardButton(text: 'Skanner ishlatish')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Printer scanner bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Printerga ulash').listen((message) async {
    await message.reply('Printerga ulash:\nUSB kabel orqali kompyuterga ulang.\nHavola: https://youtu.be/B8o6D53ni-8?si=Sl3TIqs4LYG5J-XC');
  });

  teledart.onMessage(keyword: 'Skanner ishlatish').listen((message) async {
    await message.reply('Skanner ishlatish:\nSkanner qopqog‘ini ochib, hujjatni stakanga joylashtiring.');
  });
}