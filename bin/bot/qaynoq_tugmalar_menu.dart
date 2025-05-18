import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void qaynoqTugmalarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '🔥 Qaynoq tugmalar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Umumiy'), KeyboardButton(text: 'Fayl')],
        [KeyboardButton(text: 'Formatlash'), KeyboardButton(text: 'Navigatsiya')],
        [KeyboardButton(text: 'Tanlash'), KeyboardButton(text: 'Formulalar')],
        [KeyboardButton(text: 'Diagrammalar'), KeyboardButton(text: 'Ma\'lumotlar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Qaynoq tugmalar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Umumiy').listen((message) async {
    await message.reply(
        'Umumiy: Ctrl+C (nusxalash), Ctrl+X (kesish), Ctrl+V (qo\'yish), Ctrl+Z (bekor qilish), Ctrl+Y (qaytarish).\nhttps://youtu.be/B8o6D53ni-8?si=Sl3TIqs4LYG5J-XC');
  });

  teledart.onMessage(keyword: 'Fayl').listen((message) async {
    await message.reply(
        'Fayl: Ctrl+N (yangi), Ctrl+O (ochish), Ctrl+S (saqlash), Ctrl+P (chop etish).\nhttps://www.youtube.com/results?search_query=excel+books+tutorials');
  });

  teledart.onMessage(keyword: 'Formatlash').listen((message) async {
    await message.reply(
        'Formatlash: Ctrl+B (qalin), Ctrl+I (kursiv), Ctrl+U (ostiga chizish), Alt+H+FF (shrift tanlash).\nhttps://www.youtube.com/results?search_query=contact+support+tutorials');
  });

  teledart.onMessage(keyword: 'Navigatsiya').listen((message) async {
    await message.reply(
        'Navigatsiya: Ctrl+Home (boshiga), Ctrl+End (oxiriga), Ctrl+Page Up/Down (varaqlar o\'rtasida).\nhttps://www.youtube.com/results?search_query=excel+shorts+tutorials9');
  });

  teledart.onMessage(keyword: 'Tanlash').listen((message) async {
    await message.reply(
        'Tanlash: Ctrl+A (hammasini tanlash), Shift+strelkalar (qo\'shib tanlash), Ctrl+Shift+strelkalar (oxirigacha tanlash).\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB30');
  });

  teledart.onMessage(keyword: 'Formulalar').listen((message) async {
    await message.reply(
        'Formulalar: Ctrl+Shift+Enter (massiv formulalar uchun), F2 (hujayrani tahrirlash).\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB31');
  });

  teledart.onMessage(keyword: 'Diagrammalar').listen((message) async {
    await message
        .reply('Diagrammalar: Alt+F1 (tezkor diagramma yaratish).\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB32');
  });

  teledart.onMessage(keyword: 'Ma\'lumotlar').listen((message) async {
    await message.reply(
        'Ma\'lumotlar: Ctrl+Shift+L (filtr qo\'shish/olib tashlash), Alt+Down Arrow (ochiladigan ro\'yxat).\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB33');
  });
}
