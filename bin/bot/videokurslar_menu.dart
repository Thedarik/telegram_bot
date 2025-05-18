import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void videokurslarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '🎥 Videokurslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Excelga kirish'), KeyboardButton(text: 'Formulalar bilan ishlash')],
        [KeyboardButton(text: 'Hujayralarni formatlash'), KeyboardButton(text: 'Diagrammalar yaratish')],
        [KeyboardButton(text: 'Ma\'lumotlarni tartiblash'), KeyboardButton(text: 'Mantiqiy funktsiyalar')],
        [KeyboardButton(text: 'Qidiruv funktsiyalari'), KeyboardButton(text: 'Pivot jadvallar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Videokurslar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Excelga kirish').listen((message) async {
    await message.reply('Excelga kirish: Excel interfeysi, asosiy tushunchalar, ma\'lumot kiritish.\nhttps://youtube.com/playlist?list=PL4knPI2UQ5oEzoBEIrzv6rLr3RSqQJoie&si=p4vaFHtDcWCzgnYM');
  });

  teledart.onMessage(keyword: 'Formulalar bilan ishlash').listen((message) async {
    await message.reply('Formulalar bilan ishlash: Oddiy arifmetik amallar, asosiy funktsiyalar (SUM, AVERAGE).\nhttps://www.youtube.com/results?search_query=excel+shorts+tutorials');
  });

  teledart.onMessage(keyword: 'Hujayralarni formatlash').listen((message) async {
    await message.reply('Hujayralarni formatlash: Shrift, o\'lcham, rang, chegara, son formatlari.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB3');
  });

  teledart.onMessage(keyword: 'Diagrammalar yaratish').listen((message) async {
    await message.reply('Diagrammalar yaratish: Turli xil diagramma turlari va ularni sozlash.\nhttps://www.youtube.com/results?search_query=excel+custom+buttons+tutorials');
  });

  teledart.onMessage(keyword: 'Ma\'lumotlarni tartiblash').listen((message) async {
    await message.reply('Ma\'lumotlarni tartiblash: Ma\'lumotlarni o\'sish/kamayish tartibida joylashtirish, filtrlash qo\'llash.\nhttps://www.youtube.com/results?search_query=excel+templates+tutorials');
  });

  teledart.onMessage(keyword: 'Mantiqiy funktsiyalar').listen((message) async {
    await message.reply('Mantiqiy funktsiyalar (IF, AND, OR): Shartli amallar bajarish.\nhttps://www.youtube.com/results?search_query=excel+theory+tutorials');
  });

  teledart.onMessage(keyword: 'Qidiruv funktsiyalari').listen((message) async {
    await message.reply('Qidiruv funktsiyalari (VLOOKUP, HLOOKUP): Jadvaldan ma\'lumot qidirish.\nhttps://www.youtube.com/results?search_query=excel+short+lessons');
  });

  teledart.onMessage(keyword: 'Pivot jadvallar').listen((message) async {
    await message.reply('Pivot jadvallar: Ma\'lumotlarni guruhlash va tahlil qilish.\nhttps://www.youtube.com/results?search_query=excel+vba+tutorials');
  });
}
