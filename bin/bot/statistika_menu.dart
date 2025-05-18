import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void statistikaMenu(TeleDart teledart, ReplyKeyboardMarkup mainMenu) {
  // mainMenu ni qabul qiladi
  teledart.onMessage(keyword: '📈 Statistika').listen((message) async {
    message.reply(
      '📊 @darsbepulbot statistikasi!\n\n'
      '👥 Botdagi barcha obunachilar: 3872 kishi.\n'
      '✅ Faol obunachilar soni: 837 kishi.\n\n'
      '🔜 Oxirgi 24 soatda: 6 obunachi qo\'shildi.\n'
      '🔝 Oxirgi 1 oyda: 299 obunachi qo\'shildi.\n\n'
      '📆 Bot ishga tushganiga: 93 kun bo\'ldi.\n\n'
      '📆 Bot oxirgi marta 3 kun oldin yangilangan\n\n',
      replyMarkup: mainMenu, // Asosiy menyuni qayta chiqarish
    );
  });
}
