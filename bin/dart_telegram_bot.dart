import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:teledart/model.dart';
import 'bot/videokurslar_menu.dart';
import 'bot/funktsiyalar_menu.dart';
import 'bot/qaynoq_tugmalar_menu.dart';
import 'bot/tayyor_shablonlar_menu.dart';
import 'bot/shorts_menu.dart';
import 'bot/qollanmalar_menu.dart';
import 'bot/nazariy_malumotlar_menu.dart';
import 'bot/qisqa_darslar_menu.dart';
import 'bot/excel_dasturlari_menu.dart';
import 'bot/kengaytmalar_menu.dart';
import 'bot/topshiriqlar_menu.dart';
import 'bot/manbalar_menu.dart';
import 'bot/microsoft_office_menu.dart';
import 'bot/google_sheets_menu.dart';
import 'bot/docs_menu.dart';
import 'bot/slider_menu.dart';
import 'bot/pdf_test_tuzish_menu.dart';
import 'bot/printer_scanner_menu.dart';
import 'bot/kitob_qollanmalar_menu.dart';
import 'bot/statistika_menu.dart';
import 'bot/aloqa_menu.dart';

void main() async {
  const String botToken = '7823203949:AAE5Ryfa6yAA3y0FKODW7nPKwUtKaW5QaJg';
  final telegram = Telegram(botToken);
  final username = (await telegram.getMe()).username;
  final teledart = TeleDart(botToken, Event(username!));

  teledart.start();
  print('Bot ishga tushdi!');

  ReplyKeyboardMarkup mainMenu() {
    return ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: '🎥 Videokurslar'), KeyboardButton(text: '⚙️ Funktsiyalar')],
        [KeyboardButton(text: '🔥 Qaynoq tugmalar'), KeyboardButton(text: '📋 Tayyor shablonlar')],
        [KeyboardButton(text: '📹 Shorts'), KeyboardButton(text: '📖 Qo‘llanmalar')],
        [KeyboardButton(text: '📚 Nazariy ma‘lumotlar'), KeyboardButton(text: '🎓 Qisqa Darslar')],
        [KeyboardButton(text: '📊 Excel dasturlari'), KeyboardButton(text: '➕ Kengaytmalar')],
        [KeyboardButton(text: '✅ Topshiriqlar'), KeyboardButton(text: '🔗 Manbalar')],
        [KeyboardButton(text: '📔 Microsoft Office'), KeyboardButton(text: '📊 Google Sheets')],
        [KeyboardButton(text: '📝 Docs'), KeyboardButton(text: '🎞️ Slider')],
        [KeyboardButton(text: '📄 PDF Test tuzish'), KeyboardButton(text: '🖨️ Printer scanner')],
        [KeyboardButton(text: '📚 Kitob va qo‘llanmalar'), KeyboardButton(text: '📈 Statistika')],
        [KeyboardButton(text: '📞 Biz bilan aloqa')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
  }

  teledart.onCommand('start').listen((message) {
    message.reply('Assalomu alaykum! Men BepulDarsbot. Quyidagi tugmalardan birini tanlang:', replyMarkup: mainMenu());
  });

  // Bo'limlar uchun listener'larni chaqirish
  videokurslarMenu(teledart);
  funktsiyalarMenu(teledart);
  qaynoqTugmalarMenu(teledart);
  tayyorShablonlarMenu(teledart);
  shortsMenu(teledart);
  qollanmalarMenu(teledart);
  nazariyMalumotlarMenu(teledart);
  qisqaDarslarMenu(teledart);
  excelDasturlariMenu(teledart);
  kengaytmalarMenu(teledart);
  topshiriqlarMenu(teledart);
  manbalarMenu(teledart);
  microsoftOfficeMenu(teledart);
  googleSheetsMenu(teledart);
  docsMenu(teledart);
  sliderMenu(teledart);
  pdfTestTuzishMenu(teledart);
  printerScannerMenu(teledart);
  kitobQollanmalarMenu(teledart);
  statistikaMenu(teledart, mainMenu());
  aloqaMenu(teledart);

  // Umumiy "Orqaga" tugmasi uchun listener
  teledart.onMessage(keyword: 'Orqaga').listen((message) {
    message.reply('Asosiy menyuga qaytdingiz!', replyMarkup: mainMenu());
  });
}
