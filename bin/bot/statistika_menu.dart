import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void statistikaMenu(TeleDart teledart, ReplyKeyboardMarkup mainMenu) {
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
      '1️⃣ Android (Samsung Galaxy S21)\n'
      '   🌐 IP: 192.168.1.15\n'
      '   ⏱️ Ko‘p vaqt o‘tkazilgan bo‘lim: 🎥 Videokurslar\n\n'
      '2️⃣ iOS (iPhone 13)\n'
      '   🌐 IP: 192.168.1.21\n'
      '   ⏱️ Ko‘p vaqt o‘tkazilgan bo‘lim: 📚 Nazariy ma‘lumotlar\n\n'
      '3️⃣ Windows (Chrome brauzer)\n'
      '   🌐 IP: 192.168.1.34\n'
      '   ⏱️ Ko‘p vaqt o‘tkazilgan bo‘lim: ✅ Topshiriqlar\n\n'
      '4️⃣ Linux (Terminal)\n'
      '   🌐 IP: 10.0.0.11\n'
      '   ⏱️ Ko‘p vaqt o‘tkazilgan bo‘lim: 📊 Google Sheets\n\n'
      '5️⃣ MacOS (Safari)\n'
      '   🌐 IP: 172.16.0.4\n'
      '   ⏱️ Ko‘p vaqt o‘tkazilgan bo‘lim: 📖 Qo‘llanmalar\n\n'
      '6️⃣ Android (Redmi Note 10)\n'
      '   🌐 IP: 192.168.1.45\n'
      '   ⏱️ Ko‘p vaqt o‘tkazilgan bo‘lim: 🔗 Manbalar\n',
      replyMarkup: mainMenu,
    );
  });
}
