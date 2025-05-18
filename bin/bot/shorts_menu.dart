import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';

void shortsMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📹 Shorts').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [
          KeyboardButton(text: 'Tezkor yig\'indi hisoblash'),
          KeyboardButton(text: 'Hujayra formatini nusxalash')
        ], // Shorts -> Tezkor yig'indi hisoblash, Shorts -> Hujayra formatini nusxalash
        [
          KeyboardButton(text: 'Bir nechta katakka kiritish'),
          KeyboardButton(text: 'Ochiladigan ro\'yxat yaratish')
        ], // Shorts -> Bir nechta katakka kiritish, Shorts -> Ochiladigan ro'yxat yaratish
        [
          KeyboardButton(text: 'Diagramma elementlarini tahrirlash'),
          KeyboardButton(text: 'Formulalarni tezkor ko\'rish')
        ], // Shorts -> Diagramma elementlarini tahrirlash, Shorts -> Formulalarni tezkor ko'rish
        [
          KeyboardButton(text: 'Ma\'lumotlarni flesh-to\'ldirish'),
          KeyboardButton(text: 'Xatolarni bartaraf etish')
        ], // Shorts -> Ma'lumotlarni flesh-to'ldirish, Shorts -> Xatolarni bartaraf etish
        [KeyboardButton(text: 'Yana shortslar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Shorts bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Tezkor yig\'indi hisoblash').listen((message) async {
    // Shorts -> Tezkor yig'indi hisoblash
    await message.reply(
        'Tezkor yig\'indi hisoblash (Alt+=).\nQo\'shimcha ma\'lumot: Avtomatik ravishda yig\'indini hisoblaydi.\nManba: https://support.microsoft.com/en-us/office/sum-function-043e1c7d-7726-4e80-8f32-0b02bf090735');
  });

  teledart.onMessage(keyword: 'Hujayra formatini nusxalash').listen((message) async {
    // Shorts -> Hujayra formatini nusxalash
    await message.reply(
        'Hujayra formatini nusxalash (Format Painter).\nQo\'shimcha ma\'lumot: Bir xil formatni boshqa hujayralarga qo\'llash.\nManba: https://support.microsoft.com/en-us/office/use-the-format-painter-63e070d5-292b-4817-b75e-66d17f431268');
  });

  teledart.onMessage(keyword: 'Bir nechta katakka kiritish').listen((message) async {
    // Shorts -> Bir nechta katakka kiritish
    await message.reply(
        'Bir nechta katakka bir xil ma\'lumot kiritish (Ctrl+Enter).\nQo\'shimcha ma\'lumot: Bir vaqtning o\'zida bir nechta hujayrani to\'ldirish.\nManba: https://www.excel-easy.com/vba/examples/enter-same-value-in-multiple-cells.html');
  });

  teledart.onMessage(keyword: 'Ochiladigan ro\'yxat yaratish').listen((message) async {
    // Shorts -> Ochiladigan ro'yxat yaratish
    await message.reply(
        'Ochiladigan ro\'yxat yaratish (Data Validation).\nQo\'shimcha ma\'lumot: Hujayra uchun mumkin bo\'lgan qiymatlar ro\'yxatini yaratish.\nManba: https://support.microsoft.com/en-us/office/apply-data-validation-to-cells-2980ef15-7f89-49c9-aed5-3b29e46c32e1');
  });

  teledart.onMessage(keyword: 'Diagramma elementlarini tahrirlash').listen((message) async {
    // Shorts -> Diagramma elementlarini tahrirlash
    await message.reply(
        'Diagramma elementlarini tezkor tahrirlash.\nQo\'shimcha ma\'lumot: Diagramma elementlarini tezda o\'zgartirish.\nManba: https://support.microsoft.com/en-us/office/change-chart-elements-5892c949-2e81-4355-b954-1557b7b75508');
  });

  teledart.onMessage(keyword: 'Formulalarni tezkor ko\'rish').listen((message) async {
    // Shorts -> Formulalarni tezkor ko'rish
    await message.reply(
        'Formulalarni tezkor ko\'rish (Formula Auditing).\nQo\'shimcha ma\'lumot: Formulalardagi xatolarni topish va tuzatish.\nManba: https://support.microsoft.com/en-us/office/trace-the-precedents-and-dependents-of-a-formula-e664988e-3c87-45b2-b235-8b5567121c94');
  });

  teledart.onMessage(keyword: 'Ma\'lumotlarni flesh-to\'ldirish').listen((message) async {
    // Shorts -> Ma'lumotlarni flesh-to'ldirish
    await message.reply(
        'Ma\'lumotlarni flesh-to\'ldirish (Flash Fill).\nQo\'shimcha ma\'lumot: Ma\'lumotlarni avtomatik ravishda to\'ldirish.\nManba: https://support.microsoft.com/en-us/office/filling-data-automatically-in-worksheet-cells-e112d794-4179-49d5-a619-65284577888e');
  });

  teledart.onMessage(keyword: 'Xatolarni bartaraf etish').listen((message) async {
    // Shorts -> Xatolarni bartaraf etish
    await message.reply(
        'Qaytarilgan xatolarni bartaraf etishning tezkor usullari.\nQo\'shimcha ma\'lumot: Exceldagi xatolarni tezda tuzatish.\nManba: https://support.microsoft.com/en-us/office/how-to-correct-common-formula-errors-84977c98-e565-4954-a9b1-3f002956c80e');
  });

  teledart.onMessage(keyword: 'Yana shortslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Yana 1'), KeyboardButton(text: 'Yana 2')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Yana shortslar bo\'limiga xush kelibsiz! Quyidagi bo\'limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Yana 1').listen((message) async {
    await message.reply('Yana 1: Yana shorts haqida.\nQo\'shimcha ma\'lumot: Yana 1 shorts haqida ma\'lumotlar.\nManba: https://support.microsoft.com/');
  });

  teledart.onMessage(keyword: 'Yana 2').listen((message) async {
    await message.reply('Yana 2: Yana 2 shorts haqida.\nQo\'shimcha ma\'lumot: Yana 2 shorts haqida ma\'lumotlar.\nManba: https://support.microsoft.com/');
  });
}
