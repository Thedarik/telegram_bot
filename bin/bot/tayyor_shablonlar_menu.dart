import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void tayyorShablonlarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📋 Tayyor shablonlar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Oylik budjet'), KeyboardButton(text: 'Xarajatlar hisobi')], // Tayyor shablonlar -> Oylik budjet, Tayyor shablonlar -> Xarajatlar hisobi
        [KeyboardButton(text: 'Loyihani boshqarish'), KeyboardButton(text: 'Sotuvlar hisoboti')], // Tayyor shablonlar -> Loyihani boshqarish, Tayyor shablonlar -> Sotuvlar hisoboti
        [KeyboardButton(text: 'Inventarizatsiya'), KeyboardButton(text: 'Ta\'lim jadvali')], // Tayyor shablonlar -> Inventarizatsiya, Tayyor shablonlar -> Ta'lim jadvali
        [KeyboardButton(text: 'Hisob-faktura'), KeyboardButton(text: 'Kontaktlar ro\'yxati')], // Tayyor shablonlar -> Hisob-faktura, Tayyor shablonlar -> Kontaktlar ro'yxati
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Tayyor shablonlar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Oylik budjet').listen((message) async { // Tayyor shablonlar -> Oylik budjet
    await message.reply('Oylik budjet: Daromad va xarajatlarni kuzatish.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB34');
  });

  teledart.onMessage(keyword: 'Xarajatlar hisobi').listen((message) async { // Tayyor shablonlar -> Xarajatlar hisobi
    await message.reply('Xarajatlar hisobi: Kundalik xarajatlarni qayd etish.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB35');
  });

  teledart.onMessage(keyword: 'Loyihani boshqarish').listen((message) async { // Tayyor shablonlar -> Loyihani boshqarish
    await message.reply('Loyihani boshqarish: Vazifalar, muddatlar va resurslarni rejalashtirish.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB36');
  });

  teledart.onMessage(keyword: 'Sotuvlar hisoboti').listen((message) async { // Tayyor shablonlar -> Sotuvlar hisoboti
    await message.reply('Sotuvlar hisoboti: Mahsulotlar bo\'yicha sotuvlar statistikasi.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB37');
  });

  teledart.onMessage(keyword: 'Inventarizatsiya').listen((message) async { // Tayyor shablonlar -> Inventarizatsiya
    await message.reply('Inventarizatsiya: Mahsulotlar ro\'yxati va ularning mavjudligi.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB38');
  });

  teledart.onMessage(keyword: 'Ta\'lim jadvali').listen((message) async { // Tayyor shablonlar -> Ta'lim jadvali
    await message.reply('Ta\'lim jadvali: Darslar va mashg\'ulotlar rejasini tuzish.\nhttps://youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5&si=_4sqo6QTsGlc7XB39');
  });

  teledart.onMessage(keyword: 'Hisob-faktura').listen((message) async { // Tayyor shablonlar -> Hisob-faktura
    await message.reply('Hisob-faktura: Tovarlar yoki xizmatlar uchun to\'lov talabnomasi.\nhttps://www.youtube.com/results?search_query=excel+custom+buttons+tutorials0');
  });

  teledart.onMessage(keyword: 'Kontaktlar ro\'yxati').listen((message) async { // Tayyor shablonlar -> Kontaktlar ro'yxati
    await message.reply('Kontaktlar ro\'yxati: Mijozlar yoki hamkorlar haqidagi ma\'lumotlar bazasi.\nhttps://www.youtube.com/results?search_query=excel+custom+buttons+tutorials1');
  });
}