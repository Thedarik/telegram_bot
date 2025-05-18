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
          [KeyboardButton(text: 'Office 2013'), KeyboardButton(text: 'Office 2016')],
          [KeyboardButton(text: 'Office 2019'), KeyboardButton(text: 'Office 2021')],
          [KeyboardButton(text: 'Microsoft 365')],
          [KeyboardButton(text: 'Orqaga')],
        ],
        resizeKeyboard: true,
        oneTimeKeyboard: false,
      );
      message.reply('Microsoft Office versiyalarini tanlang:', replyMarkup: keyboard);
    } catch (e) {
      message.reply('Xatolik yuz berdi. Iltimos, qayta urinib ko‘ring.');
      print('Office menyusida xato: $e');
    }
  });

  teledart.onMessage(keyword: 'Office 2013').listen((message) {
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
''');
  });

  teledart.onMessage(keyword: 'Office 2016').listen((message) {
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
''');
  });

  teledart.onMessage(keyword: 'Office 2019').listen((message) {
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
''');
  });

  teledart.onMessage(keyword: 'Office 2021').listen((message) {
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
''');
  });

  teledart.onMessage(keyword: 'Microsoft 365').listen((message) {
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
''');
  });
}

