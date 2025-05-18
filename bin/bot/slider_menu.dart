import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void sliderMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '🎞️ Slider').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Slayder yaratish'), KeyboardButton(text: 'Dizayn tanlash')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Slider bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Slayder yaratish').listen((message) async {
    await message.reply(
        'Slayder yaratish:\nPowerPoint ochib, "New Slide" bilan yangi slayd qo‘shing.\nHavola: https://youtube.com/playlist?list=PLpwngcHZlPae68z_mLFNfbJFIJVJ_Zcx2&si=0evgNa7LRBlnOxCN');
  });

  teledart.onMessage(keyword: 'Dizayn tanlash').listen((message) async {
    await message
        .reply('Dizayn tanlash:\nDesign > Themes orqali tayyor shablonlardan foydalaning.\nMasalan, "Minimal" yoki "Business" dizaynini sinab ko‘ring.');
  });
}