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
      '📆 Bot ishga tushganiga: 93 kun bo\'ldi.\n'
      '📆 Bot oxirgi marta 3 kun oldin yangilangan\n\n'
      '🖥 Qurilmalar statistikasi:\n'
      '1️⃣ Android (Samsung Galaxy S21) — IP: 192.168.1.15\n'
      '2️⃣ iOS (iPhone 13) — IP: 192.168.1.21\n'
      '3️⃣ Windows (Chrome brauzer) — IP: 192.168.1.34\n'
      '4️⃣ Linux (Terminal) — IP: 10.0.0.11\n'
      '5️⃣ MacOS (Safari) — IP: 172.16.0.4\n'
      '6️⃣ Android (Redmi Note 10) — IP: 192.168.1.45\n',
      replyMarkup: mainMenu,
    );
  });
}
