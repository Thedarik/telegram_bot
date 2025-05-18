import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void videokurslarMenu(TeleDart teledart) {
  // Main Videokurslar Menu
  teledart.onMessage(keyword: '🎥 Videokurslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Excel'), KeyboardButton(text: 'Word')],
        [KeyboardButton(text: 'PowerPoint'), KeyboardButton(text: 'Barcha kurslar')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('Videokurslar bo‘limiga xush kelibsiz! Quyidagi dasturlardan birini tanlang:', replyMarkup: keyboard);
  });

  // Excel Menu
  teledart.onMessage(keyword: 'Excel').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Excel 1-dars'), KeyboardButton(text: 'Excel 2-dars')],
        [KeyboardButton(text: 'Excel 3-dars'), KeyboardButton(text: 'Excel 4-dars')],
        [KeyboardButton(text: 'Excel 5-dars'), KeyboardButton(text: 'Excel 6-dars')],
        [KeyboardButton(text: 'Excel 7-dars'), KeyboardButton(text: 'Excel 8-dars')],
        [KeyboardButton(text: 'Excel 9-dars'), KeyboardButton(text: 'Excel 10-dars')],
        [KeyboardButton(text: 'Excel qo\'shimcha darslar'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('''
📊 **Excel videokurslar - Professional ma'lumotlar tahlili**

🎯 **Kurs davomiyligi:** 10 asosiy dars + qo'shimcha
⏱ **Har bir dars:** 20-35 daqiqa
📈 **Daraja:** Boshlang'ichdan Expert gacha

**📚 Kurs maqsadi:**
Ma'lumotlarni samarali boshqarish va tahlil qilish

**🎓 Kurs yakunida siz:**
✅ Jadval dizaynini
✅ Formulalar va funktsiyalarni
✅ Ma'lumot tahlilini
✅ Avtomatlashtirishni o'rganasiz

Darsni tanlang:
    ''', replyMarkup: keyboard);
  });

  // Excel Lessons
  teledart.onMessage(keyword: 'Excel 1-dars').listen((message) async {
    await message.reply('''
📊 **Excel 1-dars: Interface va asosiy operatsiyalar**

🎯 **Dars maqsadi:** Excel interfeysi va jadval yaratish

📚 **Dars mazmuni:**
• Excel interfeysi bilan tanishish
• Jadval yaratish va saqlash
• Hujayralarga ma'lumot kiritish
• Navigation va selection
• Asosiy formatlash (shrift, rang)
• Undo va redo amallari

⏱️ **Davomiyligi:** 20 daqiqa
📈 **Daraja:** Boshlang'ich

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PL4knPI2UQ5oEzoBEIrzv6rLr3RSqQJoie

📝 **Amaliy mashq:**
• Yangi jadval yarating
• 10 ta ma'lumot kiriting
• Shrift va rangni o'zgartiring

💡 **Pro maslahat:**
Ctrl+Arrow keys bilan jadval bo'ylab tez harakatlaning

**⏭️ Keyingi dars:** Excel 2-dars - Formulalar asoslari
    ''');
  });

  teledart.onMessage(keyword: 'Excel 2-dars').listen((message) async {
    await message.reply('''
📊 **Excel 2-dars: Formulalar asoslari**

🎯 **Dars maqsadi:** Asosiy formulalar bilan ishlash

📚 **Dars mazmuni:**
• Formula sintaksisi
• Asosiy arifmetik amallar
• SUM, AVERAGE, MIN, MAX funktsiyalari
• Cell references (absolute va relative)
• Formula ko'chirish
• Error checking

⏱️ **Davomiyligi:** 25 daqiqa
📈 **Daraja:** Boshlang'ich-O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+shorts+tutorials

📝 **Amaliy mashq:**
• Savdo ma'lumotlari jadvali yarating
• Umumiy summa va o'rtacha hisoblang
• Formula errors ni tuzating

💡 **Pro maslahat:**
F4 tugmasi bilan absolute reference qiling

**⏮️ Oldingi dars:** Excel 1-dars
**⏭️ Keyingi dars:** Excel 3-dars - Hujayra formatlash
    ''');
  });

  teledart.onMessage(keyword: 'Excel 3-dars').listen((message) async {
    await message.reply('''
📊 **Excel 3-dars: Hujayra formatlash va shartli formatlash**

🎯 **Dars maqsadi:** Ma'lumotlarni vizual tarzda taqdim etish

📚 **Dars mazmuni:**
• Number formats (valyuta, foiz, sana)
• Shrift va chegara sozlamalari
• Conditional formatting qoidalar
• Color scales va data bars
• Format painter ishlatish
• Clear formatting

⏱️ **Davomiyligi:** 22 daqiqa
📈 **Daraja:** Boshlang'ich-O'rta

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLf07Zyofbr2fo7Oqep365OBUjyajKEzv5

📝 **Amaliy mashq:**
• Savdo jadvalini formatlang
• Shartli formatlash qoidasi yarating
• Muammoli qiymatlarni belgilang

💡 **Pro maslahat:**
Manage Rules bilan shartli formatlarni boshqaring

**⏮️ Oldingi dars:** Excel 2-dars
**⏭️ Keyingi dars:** Excel 4-dars - Diagrammalar yaratish
    ''');
  });

  teledart.onMessage(keyword: 'Excel 4-dars').listen((message) async {
    await message.reply('''
📊 **Excel 4-dars: Diagrammalar yaratish**

🎯 **Dars maqsadi:** Ma'lumotlarni grafik shaklda ko'rsatish

📚 **Dars mazmuni:**
• Diagramma turlari (column, line, pie)
• Diagramma yaratish va sozlash
• Axis va legend sozlamalari
• Data labels qo'shish
• Chart styles va colors
• Dynamic diagrammalar

⏱️ **Davomiyligi:** 28 daqiqa
📈 **Daraja:** O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+charts+tutorials

📝 **Amaliy mashq:**
• Yillik savdo diagrammasi yarating
• Diagramma stilini sozlang
• Data labels qo'shing

💡 **Pro maslahat:**
Chart Filters bilan dinamik ma'lumot ko'rsating

**⏮️ Oldingi dars:** Excel 3-dars
**⏭️ Keyingi dars:** Excel 5-dars - Ma'lumotlarni tartiblash
    ''');
  });

  teledart.onMessage(keyword: 'Excel 5-dars').listen((message) async {
    await message.reply('''
📊 **Excel 5-dars: Ma'lumotlarni tartiblash va filtrlash**

🎯 **Dars maqsadi:** Ma'lumotlarni tashkil qilish va süzish

📚 **Dars mazmuni:**
• Sort by column (A-Z, Z-A)
• Multiple column sorting
• Filter qo'llash
• Advanced filter options
• Slicer bilan filtrlash
• Remove duplicates

⏱️ **Davomiyligi:** 24 daqiqa
📈 **Daraja:** O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+sort+filter+tutorials

📝 **Amaliy mashq:**
• Mijozlar ro'yxatini tartiblang
• Muayyan mezonlar bo'yicha filter qiling
• Takrorlanuvchi ma'lumotlarni o'chiring

💡 **Pro maslahat:**
Alt+A+S+S bilan tez sort qiling

**⏮️ Oldingi dars:** Excel 4-dars
**⏭️ Keyingi dars:** Excel 6-dars - Mantiqiy funktsiyalar
    ''');
  });

  teledart.onMessage(keyword: 'Excel 6-dars').listen((message) async {
    await message.reply('''
📊 **Excel 6-dars: Mantiqiy funktsiyalar**

🎯 **Dars maqsadi:** Shartli hisob-kitoblarni amalga oshirish

📚 **Dars mazmuni:**
• IF funktsiyasi va nested IF
• AND, OR funktsiyalari
• IFERROR bilan xatolarni boshqarish
• Logical conditions yaratish
• Combining logical functions
• Practical applications

⏱️ **Davomiyligi:** 26 daqiqa
📈 **Daraja:** O'rta-Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+logical+functions

📝 **Amaliy mashq:**
• Bonuslarni hisoblash formulasi yarating
• Shartli ma'lumotlarni tekshiring
• Xatolarni IFERROR bilan boshqaring

💡 **Pro maslahat:**
IFS funktsiyasi bilan murakkab shartlarni soddalashtiring

**⏮️ Oldingi dars:** Excel 5-dars
**⏭️ Keyingi dars:** Excel 7-dars - Qidiruv funktsiyalari
    ''');
  });

  teledart.onMessage(keyword: 'Excel 7-dars').listen((message) async {
    await message.reply('''
📊 **Excel 7-dars: Qidiruv funktsiyalari**

🎯 **Dars maqsadi:** Jadvaldagi ma'lumotlarni qidirish

📚 **Dars mazmuni:**
• VLOOKUP va HLOOKUP
• INDEX va MATCH kombinatsiyasi
• XLOOKUP (yangi versiyalar)
• Search errors ni tuzatish
• Dynamic lookups
• Lookup across sheets

⏱️ **Davomiyligi:** 30 daqiqa
📈 **Daraja:** O'rta-Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+lookup+functions

📝 **Amaliy mashq:**
• Mijoz ma'lumotlarini qidiring
• VLOOKUP va MATCH bilan jadvallar bog'lang
• XLOOKUP ni sinab ko'ring

💡 **Pro maslahat:**
XLOOKUP bilan eski VLOOKUP ni almashtiring

**⏮️ Oldingi dars:** Excel 6-dars
**⏭️ Keyingi dars:** Excel 8-dars - Pivot jadvallar
    ''');
  });

  teledart.onMessage(keyword: 'Excel 8-dars').listen((message) async {
    await message.reply('''
📊 **Excel 8-dars: Pivot jadvallar**

🎯 **Dars maqsadi:** Ma'lumotlarni guruhlash va tahlil qilish

📚 **Dars mazmuni:**
• Pivot Table yaratish
• Fields va layout sozlash
• Grouping va summarizing
• Calculated fields
• Pivot Charts qo'shish
• Slicers va timelines

⏱️ **Davomiyligi:** 28 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+pivot+tables

📝 **Amaliy mashq:**
• Savdo ma'lumotlarini tahlil qiling
• Pivot Chart yarating
• Slicer bilan interaktiv tahlil qiling

💡 **Pro maslahat:**
Show Values As bilan foizli tahlillar qiling

**⏮️ Oldingi dars:** Excel 7-dars
**⏭️ Keyingi dars:** Excel 9-dars - Data Validation
    ''');
  });

  teledart.onMessage(keyword: 'Excel 9-dars').listen((message) async {
    await message.reply('''
📊 **Excel 9-dars: Data Validation va Error Checking**

🎯 **Dars maqsadi:** Ma'lumotlar sifatini ta'minlash

📚 **Dars mazmuni:**
• Data validation qoidalar
• Dropdown lists yaratish
• Input restrictions
• Custom error messages
• Circle invalid data
• Data auditing tools

⏱️ **Davomiyligi:** 25 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+data+validation

📝 **Amaliy mashq:**
• Ma'lumot kiritish formasi yarating
• Dropdown menyular qo'shing
• Xato ma'lumotlarni aniqlang

💡 **Pro maslahat:**
Data Validation bilan formulalarni cheklang

**⏮️ Oldingi dars:** Excel 8-dars
**⏭️ Keyingi dars:** Excel 10-dars - Macros va VBA
    ''');
  });

  teledart.onMessage(keyword: 'Excel 10-dars').listen((message) async {
    await message.reply('''
📊 **Excel 10-dars: Macros va VBA asoslari**

🎯 **Dars maqsadi:** Avtomatlashtirishni o'rganish

📚 **Dars mazmuni:**
• Macro recording
• VBA editor bilan tanishish
• Simple VBA scripts yozish
• Button bilan macro ishlatish
• Macro security sozlamalari
• Basic automation tasks

⏱️ **Davomiyligi:** 32 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=excel+vba+tutorials

📝 **Amaliy mashq:**
• Ma'lumotlarni formatlash macrosi
• VBA bilan hisoblash scripti
• Macro button qo'shing

💡 **Pro maslahat:**
Alt+F11 bilan VBA editorni oching

**⏮️ Oldingi dars:** Excel 9-dars
**⏭️ Keyingi:** Qo'shimcha darslar

🎉 **Tabriklaymiz!** Asosiy Excel kursini tugatdingiz!
    ''');
  });

  teledart.onMessage(keyword: 'Excel qo\'shimcha darslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Advanced VBA'), KeyboardButton(text: 'Power Query')],
        [KeyboardButton(text: 'Data Modeling'), KeyboardButton(text: 'Power Pivot')],
        [KeyboardButton(text: 'Dashboard Design'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    await message.reply('''
📊 **Excel Qo'shimcha Darslar - Professional Topics**

🎓 **Expert Level kurslari:**

**🤖 Advanced VBA** - Complex automation va scripts
**📈 Power Query** - Ma'lumotlarni transformatsiya qilish
**📊 Data Modeling** - Advanced analytics va relationships
**📉 Power Pivot** - Katta hajmdagi ma'lumotlar tahlili
**📋 Dashboard Design** - Interaktiv tahlil panellari

✨ Bu darslar asosiy kursni tugatlagan foydalanuvchilar uchun!

Tanlang:
    ''', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Advanced VBA').listen((message) async {
    await message.reply('''
🤖 **Advanced VBA va Automation**

🎯 **Dars maqsadi:** Murakkab avtomatlashtirishni o'rganish

📚 **Mavzular:**
• Loops va conditions
• User forms yaratish
• Event-driven programming
• External data integration
• Error handling

⏱️ **Davomiyligi:** 40 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-a-macro

💼 **Amaliy loyiha:** Avtomatik hisobot generatori
    ''');
  });

  teledart.onMessage(keyword: 'Power Query').listen((message) async {
    await message.reply('''
📈 **Power Query bilan ma'lumot transformatsiyasi**

🎯 **Dars maqsadi:** Ma'lumotlarni tozalash va birlashtirish

📚 **Mavzular:**
• Power Query editor
• Data import va cleaning
• Merging va appending
• Custom columns
• Query optimization

⏱️ **Davomiyligi:** 35 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/introduction-to-power-query

💼 **Amaliy loyiha:** Katta ma'lumotlar to'plamini tozalash
    ''');
  });

  teledart.onMessage(keyword: 'Data Modeling').listen((message) async {
    await message.reply('''
📊 **Data Modeling va Analytics**

🎯 **Dars maqsadi:** Ma'lumotlar o'rtasidagi munosabatlarni tahlil qilish

📚 **Mavzular:**
• Table relationships
• DAX asoslari
• Calculated columns
• Measures yaratish
• Data model optimization

⏱️ **Davomiyligi:** 38 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-a-data-model-in-excel

💼 **Amaliy loyiha:** Savdo tahlil modeli
    ''');
  });

  teledart.onMessage(keyword: 'Power Pivot').listen((message) async {
    await message.reply('''
📉 **Power Pivot bilan katta ma'lumotlar tahlili**

🎯 **Dars maqsadi:** Katta hajmdagi ma'lumotlarni boshqarish

📚 **Mavzular:**
• Power Pivot window
• Large dataset import
• Advanced DAX formulas
• KPI creation
• Pivot table integration

⏱️ **Davomiyligi:** 37 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/power-pivot-overview

💼 **Amaliy loyiha:** Yillik savdo KPI hisoboti
    ''');
  });

  teledart.onMessage(keyword: 'Dashboard Design').listen((message) async {
    await message.reply('''
📋 **Interaktiv Dashboard Design**

🎯 **Dars maqsadi:** Vizual tahlil panellarini yaratish

📚 **Mavzular:**
• Dashboard layout principles
• Slicers va timelines
• Interactive charts
• Dynamic updates
• Sharing dashboards

⏱️ **Davomiyligi:** 35 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-a-dashboard-in-excel

💼 **Amaliy loyiha:** Savdo ko'rsatkichlari dashboardi
    ''');
  });

  // Word Menu
  teledart.onMessage(keyword: 'Word').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Word 1-dars'), KeyboardButton(text: 'Word 2-dars')],
        [KeyboardButton(text: 'Word 3-dars'), KeyboardButton(text: 'Word 4-dars')],
        [KeyboardButton(text: 'Word 5-dars'), KeyboardButton(text: 'Word 6-dars')],
        [KeyboardButton(text: 'Word 7-dars'), KeyboardButton(text: 'Word 8-dars')],
        [KeyboardButton(text: 'Word 9-dars'), KeyboardButton(text: 'Word 10-dars')],
        [KeyboardButton(text: 'Word qo\'shimcha darslar'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('''
📝 **Word videokurslar - Professional hujjatlar yaratish**

🎯 **Kurs davomiyligi:** 10 asosiy dars + qo'shimcha
⏱ **Har bir dars:** 20-35 daqiqa
📈 **Daraja:** Boshlang'ichdan Expert gacha

**📚 Kurs maqsadi:**
Professional va akademik hujjatlar tayyorlash

**🎓 Kurs yakunida siz:**
✅ Hujjat dizaynini
✅ Formatlashni
✅ Jamoaviy ishlashni
✅ Avtomatlashtirishni o'rganasiz

Darsni tanlang:
    ''', replyMarkup: keyboard);
  });

  // Word Lessons
  teledart.onMessage(keyword: 'Word 1-dars').listen((message) async {
    await message.reply('''
📝 **Word 1-dars: Interface va hujjat yaratish**

🎯 **Dars maqsadi:** Word interfeysi va asosiy operatsiyalar

📚 **Dars mazmuni:**
• Word interfeysi bilan tanishish
• Yangi hujjat yaratish
• Matn kiritish va tahrirlash
• Saqlash va eksport qilish
• View options (Print Layout, Reading)
• Basic navigation

⏱️ **Davomiyligi:** 20 daqiqa
📈 **Daraja:** Boshlang'ich

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=microsoft+word+basics+tutorial

📝 **Amaliy mashq:**
• Yangi hujjat yarating
• Qisqa matn kiriting
• Hujjatni PDF sifatida saqlang

💡 **Pro maslahat:**
Ctrl+S bilan tez-tez saqlang

**⏭️ Keyingi dars:** Word 2-dars - Matn formatlash
    ''');
  });

  teledart.onMessage(keyword: 'Word 2-dars').listen((message) async {
    await message.reply('''
📝 **Word 2-dars: Matn formatlash**

🎯 **Dars maqsadi:** Matnni professional tarzda formatlash

📚 **Dars mazmuni:**
• Shrift va o'lcham sozlamalari
• Paragraph alignment va spacing
• Bullets va numbering
• Styles asoslari
• Find va Replace
• Format painter

⏱️ **Davomiyligi:** 22 daqiqa
📈 **Daraja:** Boshlang'ich-O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=microsoft+word+text+formatting

📝 **Amaliy mashq:**
• Maqola matnini formatlang
• Sarlavha va paragraf stillarini qo'llang
• So'zlarni almashtiring

💡 **Pro maslahat:**
Ctrl+D bilan Font dialogini oching

**⏮️ Oldingi dars:** Word 1-dars
**⏭️ Keyingi dars:** Word 3-dars - Jadvallar bilan ishlash
    ''');
  });

  teledart.onMessage(keyword: 'Word 3-dars').listen((message) async {
    await message.reply('''
📝 **Word 3-dars: Jadvallar bilan ishlash**

🎯 **Dars maqsadi:** Ma'lumotlarni jadval shaklida tashkil qilish

📚 **Dars mazmuni:**
• Jadval yaratish va sozlash
• Hujayra birlashtirish va bo'lish
• Jadval stillari va chegaralari
• Ma'lumotlarni tartiblash
• Formulas in tables
• Jadval dizayni

⏱️ **Davomiyligi:** 25 daqiqa
📈 **Daraja:** Boshlang'ich-O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=microsoft+word+tables+tutorial

📝 **Amaliy mashq:**
• Ishchilar ro'yxati jadvalli yarating
• Jadvalni formatlang
• Ma'lumotlarni alifbo bo'yicha tartiblang

💡 **Pro maslahat:**
Alt+Shift+Arrow bilan jadval qatorlarini ko'chiring

**⏮️ Oldingi dars:** Word 2-dars
**⏭️ Keyingi dars:** Word 4-dars - Rasmlar va grafikalar
    ''');
  });

  teledart.onMessage(keyword: 'Word 4-dars').listen((message) async {
    await message.reply('''
📝 **Word 4-dars: Rasmlar va grafikalar**

🎯 **Dars maqsadi:** Vizual elementlar bilan ishlash

📚 **Dars mazmuni:**
• Rasm qo'shish va sozlash
• Text wrapping options
• SmartArt yaratish
• Shapes va icons
• Picture styles va effects
• Screenshot qo'shish

⏱️ **Davomiyligi:** 27 daqiqa
📈 **Daraja:** O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=microsoft+word+images+graphics

📝 **Amaliy mashq:**
• Reklama flayeri yarating
• SmartArt bilan jarayon diagrammasi
• Rasmga effekt qo'shing

💡 **Pro maslahat:**
Picture Format tab bilan rasmlarni tez sozlang

**⏮️ Oldingi dars:** Word 3-dars
**⏭️ Keyingi dars:** Word 5-dars - Hujjat strukturasi
    ''');
  });

  teledart.onMessage(keyword: 'Word 5-dars').listen((message) async {
    await message.reply('''
📝 **Word 5-dars: Hujjat strukturasi va navigatsiya**

🎯 **Dars maqsadi:** Katta hujjatlarni tashkil qilish

📚 **Dars mazmuni:**
• Section breaks va page setup
• Page numbering options
• Headers va footers asoslari
• Outline view ishlatish
• Navigation pane
• Bookmarks va hyperlinks

⏱️ **Davomiyligi:** 24 daqiqa
📈 **Daraja:** O'rta

🎥 **Video dars linki:**
https://www.youtube.com/results?search_query=microsoft+word+document+structure

📝 **Amaliy mashq:**
• Kitob bo'limlarini yarating
• Navigatsiya bookmarklari qo'shing
• Turli sahifalar uchun footer sozlang

💡 **Pro maslahat:**
Ctrl+Click bilan hyperlinklarga o'ting

**⏮️ Oldingi dars:** Word 4-dars
**⏭️ Keyingi dars:** Word 6-dars - Styles va Templates
    ''');
  });

  teledart.onMessage(keyword: 'Word 6-dars').listen((message) async {
    await message.reply('''
📝 **Word 6-dars: Styles va Templates yaratish**

🎯 **Dars maqsadi:** Consistent formatting va template yaratish

📚 **Dars mazmuni:**
• Built-in styles ishlatish
• Custom styles yaratish
• Style modification va management
• Template creation
• Template ga asoslangan document
• Style sets va themes

⏱️ **Davomiyligi:** 28 daqiqa
📈 **Daraja:** O'rta-Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLrAjdQVPBBUBxQ_YiMLbTQLGZTfkAfQG8

📝 **Amaliy mashq:**
• Company report template yarating
• Custom heading styles
• Corporate identity template

💡 **Pro maslahat:**
Ctrl+Shift+S bilan quick style assignment

**⏮️ Oldingi dars:** Word 5-dars
**⏭️ Keyingi dars:** Word 7-dars - Headers va Footers
    ''');
  });

  teledart.onMessage(keyword: 'Word 7-dars').listen((message) async {
    await message.reply('''
📝 **Word 7-dars: Headers, Footers va Page Numbers**

🎯 **Dars maqsadi:** Professional hujjat strukturasi yaratish

📚 **Dars mazmuni:**
• Header va footer yaratish
• Page numbering options
• Different headers for pages
• Section breaks va page setup
• Watermarks qo'shish
• Date va time fields

⏱️ **Davomiyligi:** 23 daqiqa
📈 **Daraja:** O'rta-Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLsWlgHxqp2cSxOFp8VG4-jZzF5VZlwgNj

📝 **Amaliy mashq:**
• Academic paper format
• Business report headers
• Legal document numbering

💡 **Pro maslahat:**
Different First Page option ni ishlatib unique title page yaratish

**⏮️ Oldingi dars:** Word 6-dars
**⏭️ Keyingi dars:** Word 8-dars - References va Citations
    ''');
  });

  teledart.onMessage(keyword: 'Word 8-dars').listen((message) async {
    await message.reply('''
📝 **Word 8-dars: References, Citations va Table of Contents**

🎯 **Dars maqsadi:** Academic va research hujjatlar yaratish

📚 **Dars mazmuni:**
• Table of Contents yaratish
• Citations va Bibliography
• Footnotes va Endnotes
• Cross-references
• Index yaratish
• Caption va figure references

⏱️ **Davomiyligi:** 30 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLrAjdQVPBBUClIw__q4y1J3BZL7-fqbBX

📝 **Amaliy mashq:**
• Research paper yarating
• Automatic table of contents
• Citation management

💡 **Pro maslahat:**
Alt+Shift+O bilan table of contents dialog

**⏮️ Oldingi dars:** Word 7-dars
**⏭️ Keyingi dars:** Word 9-dars - Review va Collaboration
    ''');
  });

  teledart.onMessage(keyword: 'Word 9-dars').listen((message) async {
    await message.reply('''
📝 **Word 9-dars: Review va Collaboration Tools**

🎯 **Dars maqsadi:** Jamoaviy ishlash va hujjat review

📚 **Dars mazmuni:**
• Track Changes function
• Comments qo'shish va javob berish
• Compare documents
• Merge documents
• Protect document
• Co-authoring real-time

⏱️ **Davomiyligi:** 27 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLXPr7gfUMmKy__W6oFpPqJhZtSDV9b4L5

📝 **Amaliy mashq:**
• Team document review
• Comment va suggest changes
• Document comparison

💡 **Pro maslahat:**
Ctrl+Shift+E bilan track changes toggle

**⏮️ Oldingi dars:** Word 8-dars
**⏭️ Keyingi dars:** Word 10-dars - Mail Merge
    ''');
  });

  teledart.onMessage(keyword: 'Word 10-dars').listen((message) async {
    await message.reply('''
📝 **Word 10-dars: Mail Merge va Automation**

🎯 **Dars maqsadi:** Bulk document generation va automation

📚 **Dars mazmuni:**
• Mail Merge concept va setup
• Data source connection (Excel, CSV)
• Merge fields insertion
• Letter, label, envelope creation
• If-then-else conditions
• Bulk printing va saving

⏱️ **Davomiyligi:** 32 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLsWlgHxqp2cSMTEqGJy5yq9QF3VB8tGDk

📝 **Amaliy mashq:**
• Mass invitation letters
• Personalized certificates
• Address labels

💡 **Pro maslahat:**
Preview results button bilan merge natijasini ko'ring

**⏮️ Oldingi dars:** Word 9-dars
**⏭️ Keyingi:** Qo'shimcha darslar

🎉 **Tabriklaymiz!** Asosiy Word kursini tugatdingiz!
    ''');
  });

  teledart.onMessage(keyword: 'Word qo\'shimcha darslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Advanced Styles'), KeyboardButton(text: 'Forms va Controls')],
        [KeyboardButton(text: 'Macros in Word'), KeyboardButton(text: 'Publishing Tools')],
        [KeyboardButton(text: 'Legal Documents'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    await message.reply('''
📝 **Word Qo'shimcha Darslar - Professional Topics**

🎓 **Expert Level kurslari:**

**🎨 Advanced Styles** - Style inheritance va complex formatting
**📋 Forms va Controls** - Interactive document forms
**🤖 Macros in Word** - VBA automation for documents
**📖 Publishing Tools** - E-book, PDF optimization
**⚖️ Legal Documents** - Contract templates, legal formatting

✨ Bu darslar asosiy kursni tugatlagan foydalanuvchilar uchun!

Tanlang:
    ''', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Advanced Styles').listen((message) async {
    await message.reply('''
🎨 **Advanced Styles va Federal Register, The National Archives, and Records Administration

🎯 **Dars maqsadi:** Complex style systems va professional formatting

📚 **Mavzular:**
• Style inheritance va hierarchy
• Character vs paragraph styles
• Table styles creation
• Style based on selection
• Organizer va style management

⏱️ **Davomiyligi:** 35 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/customize-or-create-new-styles

💼 **Amaliy loyiha:** Corporate style guide yaratish
    ''');
  });

  teledart.onMessage(keyword: 'Forms va Controls').listen((message) async {
    await message.reply('''
📋 **Interactive Forms va Controls**

🎯 **Dars maqsadi:** Fillable forms va interactive documents

📚 **Mavzular:**
• Content controls (text, dropdown, date)
• Form protection va restrictions
• Legacy form fields
• Form design principles
• Data collection setup

⏱️ **Davomiyligi:** 30 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-forms-that-users-complete-or-print-in-word

💼 **Amaliy loyiha:** Job application form
    ''');
  });

  teledart.onMessage(keyword: 'Macros in Word').listen((message) async {
    await message.reply('''
🤖 **Macros va VBA in Word**

🎯 **Dars maqsadi:** Document automation va custom functions

📚 **Mavzular:**
• Recording macros in Word
• VBA basics for documents
• AutoNew va AutoOpen macros
• Custom ribbon buttons
• Document event handling

⏱️= **Davomiyligi:** 40 daqiqa
🎥 **Video:** https://docs.microsoft.com/en-us/office/vba/api/overview/word

💼 **Amaliy loyiha:** Automated report generator
    ''');
  });

  teledart.onMessage(keyword: 'Publishing Tools').listen((message) async {
    await message.reply('''
📖 **Publishing va E-book Creation**

🎯 **Dars maqsadi:** Professional publishing va digital formats

📚 **Mavzular:**
• PDF creation va optimization
• E-book formatting
• Accessibility compliance
• Print layout optimization
• Digital distribution

⏱️ **Davomiyligi:** 32 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/save-or-convert-to-pdf-or-xps-in-office

💼 **Amaliy loyiha:** E-book creation
    ''');
  });

  teledart.onMessage(keyword: 'Legal Documents').listen((message) async {
    await message.reply('''
⚖️ **Legal Document Formatting**

🎯 **Dars maqsadi:** Legal standard documents yaratish

📚 **Mavzular:**
• Legal formatting standards
• Numbered paragraphs
• Contract templates
• Pleading format
• Legal citation styles

⏱️ **Davomiyligi:** 35 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-a-document-in-word

💼 **Amaliy loyiha:** Contract template system
    ''');
  });

  // PowerPoint Menu
  teledart.onMessage(keyword: 'PowerPoint').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'PowerPoint 1-dars'), KeyboardButton(text: 'PowerPoint 2-dars')],
        [KeyboardButton(text: 'PowerPoint 3-dars'), KeyboardButton(text: 'PowerPoint 4-dars')],
        [KeyboardButton(text: 'PowerPoint 5-dars'), KeyboardButton(text: 'PowerPoint 6-dars')],
        [KeyboardButton(text: 'PowerPoint 7-dars'), KeyboardButton(text: 'PowerPoint 8-dars')],
        [KeyboardButton(text: 'PowerPoint 9-dars'), KeyboardButton(text: 'PowerPoint 10-dars')],
        [KeyboardButton(text: 'PowerPoint qo\'shimcha darslar'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('''
🎭 **PowerPoint videokurslar - Professional taqdimotlar**

🎯 **Kurs davomiyligi:** 10 asosiy dars + qo'shimcha
⏱ **Har bir dars:** 20-35 daqiqa
📈 **Daraja:** Boshlang'ichdan Expert gacha

**📚 Kurs maqsadi:**
Ta'sirli va professional taqdimotlar yaratish

**🎓 Kurs yakunida siz:**
✅ Professional slide design qilishni
✅ Animation va transition yaratishni
✅ Interactive presentation yasashni
✅ Presentation skills ga ega bo'lasiz

Darsni tanlang:
    ''', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'PowerPoint 1-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 1-dars: Interface va prezentatsiya yaratish**

🎯 **Dars maqsadi:** PowerPoint interfeysi va asosiy operatsiyalar

📚 **Dars mazmuni:**
• PowerPoint interface tour
• Slide layouts va templates
• Yangi prezentatsiya yaratish
• Slide navigation
• View options (Normal, Outline, Slide Sorter)
• Presentation saqlash

⏱️ **Davomiyligi:** 20 daqiqa
📈 **Daraja:** Boshlang'ich

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLlrPsGlrrPdO5fLKV73AJmP05QMpktQtO

📝 **Amaliy mashq:**
• PowerPoint ni oching va interface ni o'rganing
• Template dan prezentatsiya yarating
• 5 ta slide qo'shing

💡 **Pro maslahat:**
Ctrl+M bilan yangi slide qo'shish

**⏭️ Keyingi dars:** PowerPoint 2-dars - Slide design va layout
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 2-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 2-dars: Slide Design va Layout**

🎯 **Dars maqsadi:** Professional slide design yaratish

📚 **Dars mazmuni:**
• Slide layouts tanlash
• Design themes qo'llash
• Color schemes va fonts
• Slide master concept
• Background customization
• Template modification

⏱️ **Davomiyligi:** 25 daqiqa
📈 **Daraja:** Boshlang'ich-O'rta

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLXPr7gfUMmKyU_2gXZDnbP8WV8fdhVW-q

📝 **Amaliy mashq:**
• Company presentation theme yarating
• Corporate colors bilan customize qiling
• Consistent layout tanlang

💡 **Pro maslahat:**
Slide Master view da global changes qiling

**⏮️ Oldingi dars:** PowerPoint 1-dars
**⏭️ Keyingi dars:** PowerPoint 3-dars - Matn va content qo'shish
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 3-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 3-dars: Matn va Content qo'shish**

🎯 **Dars maqsadi:** Effective content creation va text formatting

📚 **Dars mazmuni:**
• Text placeholders bilan ishlash
• Font formatting va styles
• Bullet points va numbering
• Text alignment va spacing
• Text boxes yaratish
• Content hierarchy

⏱️ **Davomiyligi:** 22 daqiqa
📈 **Daraja:** Boshlang'ich-O'rta

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLsWlgHxqp2cTRcGZoVJ9v9S5K0-LQ5nGY

📝 **Amaliy mashq:**
• Product presentation slide yarating
• Text hierarchy hosil qiling
• Key message ni highlight qiling

💡 **Pro maslahat:**
6x6 rule: 6 bullet point, har birida 6 so'zdan ko'p bo'lmasin

**⏮️ Oldingi dars:** PowerPoint 2-dars
**⏭️ Keyingi dars:** PowerPoint 4-dars - Images va media
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 4-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 4-dars: Images, Videos va Media**

🎯 **Dars maqsadi:** Multimedia content integration

📚 **Dars mazmuni:**
• Images insertion va formatting
• Image effects va styles
• Video qo'shish va playback
• Audio files integration
• Icons va illustrations
• Screenshots va screen recording

⏱️ **Davomiyligi:** 28 daqiqa
📈 **Daraja:** O'rta

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLrAjdQVPBBUCyKB7q_YAaGYstCwMd9Ex7

📝 **Amaliy mashq:**
• Visual-rich presentation yarating
• Background image qo'shing
• Product video embed qiling

💡 **Pro maslahat:**
Compress pictures feature bilan file size ni kamaytiring

**⏮️ Oldingi dars:** PowerPoint 3-dars
**⏭️ Keyingi dars:** PowerPoint 5-dars - Charts va graphs
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 5-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 5-dars: Charts, Graphs va SmartArt**

🎯 **Dars maqsadi:** Data visualization va infographics

📚 **Dars mazmuni:**
• Chart types va creation
• Chart customization
• Data import from Excel
• SmartArt graphics
• Process diagrams
• Organization charts

⏱️ **Davomiyligi:** 26 daqiqa
📈 **Daraja:** O'rta

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLsWlgHxqp2cSgE8QsH2sJ4GLy5kX_bF9A

📝 **Amaliy mashq:**
• Sales report chart yarating
• Process flow SmartArt
• Company hierarchy chart

💡 **Pro maslahat:**
Excel data ni dynamic link qilib qo'shing

**⏮️ Oldingi dars:** PowerPoint 4-dars
**⏭️ Keyingi dars:** PowerPoint 6-dars - Animations
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 6-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 6-dars: Animations va Motion Effects**

🎯 **Dars maqsadi:** Engaging animations yaratish

📚 **Dars mazmuni:**
• Animation types (Entrance, Emphasis, Exit)
• Animation timing va duration
• Motion paths
• Animation sequencing
• Trigger animations
• Custom animations

⏱️ **Davomiyligi:** 30 daqiqa
📈 **Daraja:** O'rta-Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLXPr7gfUMmKyQGVlnCqvhPYDJZTPOJUP9

📝 **Amaliy mashq:**
• Product launch presentation
• Step-by-step reveal animations
• Custom motion paths

💡 **Pro maslahat:**
Animation Painter bilan animation settings copy qiling

**⏮️ Oldingi dars:** PowerPoint 5-dars
**⏭️ Keyingi dars:** PowerPoint 7-dars - Transitions
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 7-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 7-dars: Slide Transitions va Effects**

🎯 **Dars maqsadi:** Smooth slide transitions yaratish

📚 **Dars mazmuni:**
• Transition types va categories
• Transition timing va speed
• Sound effects bilan transitions
• Morph transition (advanced)
• Advance slide options
• Transition preview

⏱️ **Davomiyligi:** 23 daqiqa
📈 **Daraja:** O'rta-Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLrAjdQVPBBUDaUIbdZM-VQ6mFz11dN5j6

📝 **Amaliy mashq:**
• Storytelling presentation
• Theme-appropriate transitions
• Morph transition experiment

💡 **Pro maslahat:**
Morph transition bilan object continuity yarating

**⏮️ Oldingi dars:** PowerPoint 6-dars
**⏭️ Keyingi dars:** PowerPoint 8-dars - Interactive elements
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 8-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 8-dars: Interactive Elements va Navigation**

🎯 **Dars maqsadi:** Interactive va non-linear presentations

📚 **Dars mazmuni:**
• Hyperlinks va action buttons
• Interactive navigation menus
• Zoom for PowerPoint
• Section organization
• Trigger animations
• Custom shows

⏱️ **Davomiyligi:** 27 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLXPr7gfUMmKxkePNWmsyLCxS-z4JNRpz8

📝 **Amaliy mashq:**
• Interactive menu system
• Non-linear presentation
• Zoom summary slide

💡 **Pro maslahat:**
Action settings bilan mouse-over effects yarating

**⏮️ Oldingi dars:** PowerPoint 7-dars
**⏭️ Keyingi dars:** PowerPoint 9-dars - Presenter tools
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 9-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 9-dars: Presenter Tools va Delivery**

🎯 **Dars maqsadi:** Professional presentation delivery

📚 **Dars mazmuni:**
• Presenter view setup
• Speaker notes creation
• Slide timings
• Rehearsal tools
• Laser pointer va pen tools
• Remote control options

⏱️ **Davomiyligi:** 25 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLsWlgHxqp2cSMTEqGJy5yq9QF3VB8tGD7

📝 **Amaliy mashq:**
• Speaker notes yozing
• Presentation timing setup
• Rehearsal practice

💡 **Pro maslahat:**
Presenter Coach bilan practice qiling (Office 365)

**⏮️ Oldingi dars:** PowerPoint 8-dars
**⏭️ Keyingi dars:** PowerPoint 10-dars - Export va sharing
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint 10-dars').listen((message) async {
    await message.reply('''
🎭 **PowerPoint 10-dars: Export, Sharing va Collaboration**

🎯 **Dars maqsadi:** Presentation sharing va collaboration

📚 **Dars mazmuni:**
• Export options (PDF, Video, Images)
• Sharing va permissions
• Online presentation
• Real-time collaboration
• Comments va reviews
• Version control

⏱️ **Davomiyligi:** 28 daqiqa
📈 **Daraja:** Yuqori

🎥 **Video dars linki:**
https://www.youtube.com/playlist?list=PLXPr7gfUMmKy0_7VHMx8Q-0QvZ_LZCNDw

📝 **Amaliy mashq:**
• Video export yarating
• Online sharing setup
• Team collaboration test

💡 **Pro maslahat:**
PowerPoint Live bilan browser da present qiling

**⏮️ Oldingi dars:** PowerPoint 9-dars
**⏭️ Keyingi:** Qo'shimcha darslar

🎉 **Tabriklaymiz!** Asosiy PowerPoint kursini tugatdingiz!
    ''');
  });

  teledart.onMessage(keyword: 'PowerPoint qo\'shimcha darslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Advanced Animations'), KeyboardButton(text: 'Branding Templates')],
        [KeyboardButton(text: 'Video Production'), KeyboardButton(text: 'Presentation Skills')],
        [KeyboardButton(text: 'Infographic Design'), KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    await message.reply('''
🎭 **PowerPoint Qo'shimcha Darslar - Expert Level**

🎓 **Professional Presentation kurslari:**

**🎬 Advanced Animations** - Complex motion va cinematic effects
**🎨 Branding Templates** - Corporate identity systems
**📹 Video Production** - Professional video presentations
**🎤 Presentation Skills** - Public speaking va delivery
**📊 Infographic Design** - Data storytelling

✨ Bu darslar asosiy kursni tugatlagan foydalanuvchilar uchun!

Tanlang:
    ''', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Advanced Animations').listen((message) async {
    await message.reply('''
🎬 **Advanced Animation Techniques**

🎯 **Dars maqsadi:** Cinematic va complex animation effects

📚 **Mavzular:**
• Multi-object animation coordination
• Advanced motion paths
• Animation with sound sync
• Morphing techniques
• 3D animation effects

⏱️ **Davomiyligi:** 40 daqiqa
🎥 **Video:** https://www.youtube.com/playlist?list=PLrAjdQVPBBUCyKB7q_YAaGYstCwMd9ExQ

💼 **Amaliy loyiha:** Product demo animation
    ''');
  });

  teledart.onMessage(keyword: 'Branding Templates').listen((message) async {
    await message.reply('''
🎨 **Corporate Branding Templates**

🎯 **Dars maqsadi:** Consistent brand identity systems

📚 **Mavzular:**
• Brand guideline implementation
• Master slide systems
• Color palette management
• Typography standards
• Template distribution

⏱️ **Davomiyligi:** 35 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-your-own-theme-in-powerpoint

💼 **Amaliy loyiha:** Complete brand system
    ''');
  });

  teledart.onMessage(keyword: 'Video Production').listen((message) async {
    await message.reply('''
📹 **Professional Video Presentations**

🎯 **Dars maqsadi:** Video format presentations yaratish

📚 **Mavzular:**
• Export to video optimization
• Narration recording
• Video editing basics
• Screen recording integration
• Distribution strategies

⏱️ **Davomiyligi:** 42 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/turn-your-presentation-into-a-video

💼 **Amaliy loyiha:** Training video creation
    ''');
  });

  teledart.onMessage(keyword: 'Presentation Skills').listen((message) async {
    await message.reply('''
🎤 **Presentation Skills va Public Speaking**

🎯 **Dars maqsadi:** Effective delivery techniques

📚 **Mavzular:**
• Audience engagement strategies
• Body language va voice control
• Slide-speaker coordination
• Q&A handling
• Virtual presentation skills

⏱️ **Davomiyligi:** 45 daqiqa
🎥 **Video:** https://www.ted.com/playlists/574/how_to_make_a_great_presentation

💼 **Amaliy loyiha:** TED-style presentation
    ''');
  });

  teledart.onMessage(keyword: 'Infographic Design').listen((message) async {
    await message.reply('''
📊 **Infographic Design in PowerPoint**

🎯 **Dars maqsadi:** Data storytelling va visual design

📚 **Mavzular:**
• Data visualization principles
• Icon integration
• Process flow design
• Statistical presentation
• Interactive infographics

⏱️ **Davomiyligi:** 38 daqiqa
🎥 **Video:** https://support.microsoft.com/en-us/office/create-an-infographic-in-powerpoint

💼 **Amaliy loyiha:** Annual report infographic
    ''');
  });

  // Barcha Kurslar
  teledart.onMessage(keyword: 'Barcha kurslar').listen((message) async {
    await message.reply('''
🎥 **Barcha Videokurslar - To'liq ro'yxat**

📊 **EXCEL KURSLARI:**
✅ 10 asosiy dars (Interface dan Macros gacha)
✅ 5 qo'shimcha professional dars
⏱️ Jami: ~4.5 soat

📝 **WORD KURSLARI:**
✅ 10 asosiy dars (Basics dan Mail Merge gacha)
✅ 5 qo'shimcha expert dars
⏱️ Jami: ~4 soat

🎭 **POWERPOINT KURSLARI:**
✅ 10 asosiy dars (Interface dan Export gacha)
✅ 5 qo'shimcha professional dars
⏱️ Jami: ~4.5 soat

**📚 JAMI KURS STATISTIKASI:**
🎯 30 asosiy dars + 15 qo'shimcha dars = 45 ta dars
⏱️ ~13 soat professional training
📈 Beginner dan Expert gacha

**🎓 SERTIFIKAT:**
Har bir dastur uchun alohida completion certificate
Portfolio yaratish uchun praktik loyihalar

**💰 NARX:**
🆓 Barcha kurslar 100% bepul!

**📱 DOSTUP:**
• YouTube playlists
• HD video quality
• Mobile-friendly
• Subtitle support

**🚀 BOSHLANG:**
1. Excel kursini tugating
2. Word skills ni rivojlantiring
3. PowerPoint mastery ga ering
4. Portfolio yarating
5. Professional bo'ling!

Bugun boshlang - kelajagingizni o'zgartiring! 💪
    ''');
  });
}
