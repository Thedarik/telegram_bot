import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

// Havolalar uchun markazlashgan konfiguratsiya
const Map<String, String> urls = {
  'office_2013_download': 'https://www.microsoft.com/en-us/download/details.aspx?id=49117',
  'office_2016_download': 'https://www.microsoft.com/en-us/microsoft-365/previous-versions/microsoft-office-2016',
  'office_2019_download': 'https://www.microsoft.com/en-us/microsoft-365/buy/microsoft-office',
  'office_2021_download': 'https://www.microsoft.com/en-us/microsoft-365/microsoft-office',
  'office_365_subscription': 'https://www.microsoft.com/en-us/microsoft-365/p/microsoft-365-personal',
  'excel_tutorial': 'https://youtube.com/playlist?list=PLV6IQEEtbQaI_Qhh_r10kr3pj5Sdfw6DR&si=jz3Hn0DREtP7rAHd',
  'word_tutorial': 'https://support.microsoft.com/en-us/office/word-training-7bcd85e6-2c3d-4c3c-a2a5-5ed8847eae73',
  'powerpoint_tutorial': 'https://support.microsoft.com/en-us/office/powerpoint-training-cacbec44-8910-4033-8962-8c6f435964c8',
};

void microsoftOfficeMenu(TeleDart teledart) {
  // Microsoft Office menyusi
  teledart.onMessage(keyword: '📔 Microsoft Office').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Excel'), KeyboardButton(text: 'Word')],
          [KeyboardButton(text: 'PowerPoint')],
          [KeyboardButton(text: 'Office versiyalari')],
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false, // Asosiy sahifa bilan moslashish uchun
      );
      message.reply('''
📔 **Microsoft Office bo‘limiga xush kelibsiz!**

🚀 Dunyoning eng mashhur ofis dasturlari to‘plami bilan ishlashni o‘rganing:

📊 **Excel**: Jadval tuzish va ma'lumot tahlili  
📝 **Word**: Professional hujjatlar yaratish  
🎥 **PowerPoint**: Ta’sirli taqdimotlar tayyorlash  
📚 **Office versiyalari**: 2013-2025 yillardagi versiyalar

Quyidagi bo‘limlardan birini tanlang:

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi. Iltimos, qayta urinib ko‘ring.');
      print('Office menyusida xato: $e');
    }
  });

  // Excel menyusi
  teledart.onMessage(keyword: 'Excel').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📊 **Excel**

Jadvallar bilan ishlash, ma'lumot tahlili va avtomatlashtirishni o‘rganing!  

🎓 **O‘quv resurslari**:  
${urls['excel_tutorial']}

🔍 **Qo‘shimcha ma’lumot**:  
• Pivot Tables  
• Formulas va Functions  
• Charts va Visualizations

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Excel menyusida xato: $e');
    }
  });

  // Word menyusi
  teledart.onMessage(keyword: 'Word').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📝 **Word**

Professional hujjatlar, xatlar va shablonlar yaratishni o‘rganing!  

🎓 **O‘quv resurslari**:  
${urls['word_tutorial']}

🔍 **Qo‘shimcha ma’lumot**:  
• Styles va Formatting  
• Mail Merge  
• Collaboration Tools

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Word menyusida xato: $e');
    }
  });

  // PowerPoint menyusi
  teledart.onMessage(keyword: 'PowerPoint').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
🎥 **PowerPoint**

Ta’sirli taqdimotlar va slayd-shoular yasashni o‘rganing!  

🎓 **O‘quv resurslari**:  
${urls['powerpoint_tutorial']}

🔍 **Qo‘shimcha ma’lumot**:  
• Animations va Transitions  
• Slide Design  
• Presenter Coach

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('PowerPoint menyusida xato: $e');
    }
  });

  // Office versiyalari menyusi
  teledart.onMessage(keyword: 'Office versiyalari').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Office 2013'), KeyboardButton(text: 'Office 2016')],
          [KeyboardButton(text: 'Office 2019'), KeyboardButton(text: 'Office 2021')],
          [KeyboardButton(text: 'Microsoft 365')],
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📚 **Microsoft Office versiyalari (2012-2025)**

Har bir versiyada Excel, Word, PowerPoint va boshqa dasturlar mavjud. Quyidagi versiyalardan birini tanlang:

📌 **Office 2013**: Zamonaviy interfeys va bulut integratsiyasi  
📌 **Office 2016**: Real-time hamkorlik va yangi vositalar  
📌 **Office 2019**: Bir martalik xarid uchun yaxshi tanlov  
📌 **Office 2021**: Eng so‘nggi bir martalik versiya  
📌 **Microsoft 365**: Doimiy yangilanuvchi obuna xizmati

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Office versiyalari menyusida xato: $e');
    }
  });

  // Office 2013
  teledart.onMessage(keyword: 'Office 2013').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📌 **Microsoft Office 2013**

🛠 **Asosiy xususiyatlar**:  
• Zamonaviy Metro UI dizayn  
• OneDrive (SkyDrive) bulut integratsiyasi  
• Sensorli qurilmalar uchun optimallashtirish  

📥 **Yuklab olish**:  
${urls['office_2013_download']}

❗️ O‘rnatishdan oldin tizim talablarini tekshiring.

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Office 2013 menyusida xato: $e');
    }
  });

  // Office 2016
  teledart.onMessage(keyword: 'Office 2016').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📌 **Microsoft Office 2016**

🛠 **Asosiy xususiyatlar**:  
• Real-time hamkorlik (co-authoring)  
• Tell Me qidiruv funksiyasi Excel va Word’da  
• Power Query va yangi chart turlari  

📥 **Yuklab olish**:  
${urls['office_2016_download']}

❗️ Microsoft 365 ga yangilashni ko‘rib chiqing.

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Office 2016 menyusida xato: $e');
    }
  });

  // Office 2019
  teledart.onMessage(keyword: 'Office 2019').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📌 **Microsoft Office 2019**

🛠 **Asosiy xususiyatlar**:  
• Bir martalik xarid uchun eng yaxshi tanlov  
• Excel’da XLOOKUP va Dynamic Arrays  
• Yangilangan inking va accessibility vositalari  

📥 **Yuklab olish**:  
${urls['office_2019_download']}

❗️ Obunaga o‘tishni xohlamasangiz ideal.

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Office 2019 menyusida xato: $e');
    }
  });

  // Office 2021
  teledart.onMessage(keyword: 'Office 2021').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📌 **Microsoft Office 2021**

🛠 **Asosiy xususiyatlar**:  
• Eng so‘nggi bir martalik xarid versiyasi  
• Microsoft Teams integratsiyasi  
• Excel’da LET va LAMBDA funksiyalari  

📥 **Yuklab olish**:  
${urls['office_2021_download']}

❗️ 5 yillik qo‘llab-quvvatlash muddati.

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Office 2021 menyusida xato: $e');
    }
  });

  // Microsoft 365
  teledart.onMessage(keyword: 'Microsoft 365').listen((message) {
    try {
      final keyboard = ReplyKeyboardMarkup(
        keyboard: [
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('''
📌 **Microsoft 365**

🛠 **Asosiy xususiyatlar**:  
• Oyiga yangilanadigan zamonaviy funksiyalar  
• AI yordamida ishlovchi vositalar (Ideas, Editor)  
• Bulutli saqlash va real-time hamkorlik  

📥 **Obuna**:  
${urls['office_365_subscription']}

❗️ Doimiy yangilanishlar uchun eng yaxshi tanlov.

© Kompyuter Akademiyasi  
@ExcelDarsBot
''', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi.');
      print('Microsoft 365 menyusida xato: $e');
    }
  });
}