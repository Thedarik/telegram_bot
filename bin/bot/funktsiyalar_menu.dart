import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void funktsiyalarMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '⚙️ Funktsiyalar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Matematik funktsiyalar'), KeyboardButton(text: 'Statistik funktsiyalar')],
        [KeyboardButton(text: 'Matn funktsiyalari'), KeyboardButton(text: 'Sana va vaqt funktsiyalari')],
        [KeyboardButton(text: 'Mantiqiy funktsiyalar'), KeyboardButton(text: 'Havola va massiv funktsiyalari')],
        [KeyboardButton(text: 'Moliyaviy funktsiyalar'), KeyboardButton(text: 'Muhandislik funktsiyalari')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Funktsiyalar bo‘limiga xush kelibsiz! Quyidagi bo‘limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Matematik funktsiyalar').listen((message) async {
    await message.reply('Matematik funktsiyalar: SUMIF, AVERAGEIF, COUNTIF, ROUND, INT.\nhttps://www.youtube.com/results?search_query=excel+add-ins+tutorials');
  });

  teledart.onMessage(keyword: 'Statistik funktsiyalar').listen((message) async {
    await message.reply('Statistik funktsiyalar: STDEV.P, VAR.P, MEDIAN, MODE.\nhttps://www.youtube.com/results?search_query=excel+exercises+tutorials');
  });

  teledart.onMessage(keyword: 'Matn funktsiyalari').listen((message) async {
    await message.reply(
        'Matn funktsiyalari: CONCATENATE, LEFT, RIGHT, MID, FIND, SUBSTITUTE, TEXT.\nhttps://www.youtube.com/results?search_query=excel+resources+tutorials');
  });

  teledart.onMessage(keyword: 'Sana va vaqt funktsiyalari').listen((message) async {
    await message.reply(
        'Sana va vaqt funktsiyalari: DATE, TIME, YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, TODAY, NOW.\nhttps://youtube.com/playlist?list=PLV6IQEEtbQaI_Qhh_r10kr3pj5Sdfw6DR&si=jz3Hn0DREtP7rAHd');
  });

  teledart.onMessage(keyword: 'Mantiqiy funktsiyalar').listen((message) async {
    await message.reply('Mantiqiy funktsiyalar: IFERROR, NOT.\nhttps://www.youtube.com/results?search_query=google+sheets+tutorials');
  });

  teledart.onMessage(keyword: 'Havola va massiv funktsiyalari').listen((message) async {
    await message.reply('Havola va massiv funktsiyalari: INDEX, MATCH, OFFSET.\nhttps://www.youtube.com/results?search_query=google+docs+tutorials');
  });

  teledart.onMessage(keyword: 'Moliyaviy funktsiyalar').listen((message) async {
    await message
        .reply('Moliyaviy funktsiyalar: PMT, IPMT, PPMT, FV, PV.\nhttps://youtube.com/playlist?list=PLpwngcHZlPae68z_mLFNfbJFIJVJ_Zcx2&si=0evgNa7LRBlnOxCN');
  });

  teledart.onMessage(keyword: 'Muhandislik funktsiyalari').listen((message) async {
    await message.reply('Muhandislik funktsiyalari: BIN2DEC, DEC2BIN, HEX2DEC.\nhttps://www.youtube.com/results?search_query=pdf+test+creation+tutorials');
  });
}
