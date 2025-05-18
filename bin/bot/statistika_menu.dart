import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void statistikaMenu(TeleDart teledart, ReplyKeyboardMarkup mainMenu) { // mainMenu ni qabul qiladi
  teledart.onMessage(keyword: '📈 Statistika').listen((message) async {
    message.reply(
      '📊 @ExcelDarsBot statistikasi!\n\n'
      '👥 Botdagi barcha obunachilar: 52443 kishi.\n'
      '✅ Faol obunachilar soni: 17246 kishi.\n\n'
      '🔜 Oxirgi 24 soatda: 2 obunachi qo\'shildi.\n'
      '🔝 Oxirgi 1 oyda: 299 obunachi qo\'shildi.\n\n'
      '📆 Bot ishga tushganiga: 1303 kun bo\'ldi.\n\n'
      '💰 Reklama: https://t.me/techno_ads/124',
      replyMarkup: mainMenu, // Asosiy menyuni qayta chiqarish
    );
  });
}