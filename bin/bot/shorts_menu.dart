import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';

void shortsMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📹 Shorts').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [
          KeyboardButton(text: 'Tezkor yig\'indi hisoblash'),
          KeyboardButton(text: 'Hujayra formatini nusxalash')
        ],
        [
          KeyboardButton(text: 'Bir nechta katakka kiritish'),
          KeyboardButton(text: 'Ochiladigan ro\'yxat yaratish')
        ],
        [
          KeyboardButton(text: 'Diagramma elementlarini tahrirlash'),
          KeyboardButton(text: 'Formulalarni tezkor ko\'rish')
        ],
        [
          KeyboardButton(text: 'Ma\'lumotlarni flesh-to\'ldirish'),
          KeyboardButton(text: 'Xatolarni bartaraf etish')
        ],
        [KeyboardButton(text: 'Yana shortslar')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('📹 Shorts bo\'limiga xush kelibsiz!\n\n🚀 Excel bilan ishlashning eng tezkor va samarali usullarini o\'rganing!\n\nQuyidagi bo\'limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Tezkor yig\'indi hisoblash').listen((message) async {
    await message.reply('''
🧮 **Tezkor yig'indi hisoblash (Alt + =)**

📊 **Nima uchun muhim?**
Bu funksiya sizga bir soniyada raqamlarni qo'shish imkonini beradi!

⚡ **Qanday ishlatiladi:**
1️⃣ Ma'lumotlar ostidagi bo'sh katakning ustiga bosing
2️⃣ Alt + = tugmalarini bosing
3️⃣ Excel avtomatik ravishda yuqoridagi barcha raqamlarni tanlab, yig'indini hisoblaydi
4️⃣ Enter bosing va tayyor!

💡 **Pro maslahatlar:**
• Gorizontal qatorlar uchun ham ishlaydi
• Formatlangan jadvallar bilan mukammal uygun
• Vaqtingizning 90% ini tejaydi

🎯 **Misol:**
A1: 100
A2: 200  
A3: 300
A4 da Alt += bossangiz → =SUM(A1:A3) hosil bo'ladi

📚 **Qo'shimcha ma'lumot:**
Bu funksiya AutoSum deb ham ataladi va Excel-dagi eng ko'p ishlatiladigan shortcut hisoblanadi.

🔗 **Manba:** https://support.microsoft.com/office/sum-function-043e1c7d-7726-4e80-8f32-0b02bf090735
    ''');
  });

  teledart.onMessage(keyword: 'Hujayra formatini nusxalash').listen((message) async {
    await message.reply('''
🎨 **Hujayra formatini nusxalash (Format Painter)**

✨ **Nima uchun ajoyib?**
Bir marta formatlasangiz, mingta joyga nusxalash mumkin!

🖌️ **Qadamba-qadam ko'rsatma:**
1️⃣ Formatlanган hujayrani tanlang
2️⃣ "Format Painter" tugmasini bosing (Home → Format Painter)
3️⃣ Yoki Ctrl+Shift+C bosing (nusxalash uchun)
4️⃣ Yangi hujayrani tanlang
5️⃣ Ctrl+Shift+V bosing (qo'llash uchun)

🔄 **Bir nechta joyga qo'llash:**
Format Painter tugmasini 2 marta bosing - keyin istalgan joyga bosgich!

💡 **Nimalari nusxalanadi:**
• Font va o'lchami
• Ranglar (matn va fon)
• Chegaralar
• Hizalanish
• Son formatlari

🎯 **Mashq qiling:**
Bir katakni qizil rangga bo'yab, keyin 10 ta katakka nusxa qiling!

📚 **Foydalanish holatlari:**
• Hisobotlar tayyorlash
• Jadvallarni formatlash
• Prezentatsiyalar uchun

🔗 **Manba:** https://support.microsoft.com/office/use-the-format-painter-63e070d5-292b-4817-b75e-66d17f431268
    ''');
  });

  teledart.onMessage(keyword: 'Bir nechta katakka kiritish').listen((message) async {
    await message.reply('''
📝 **Bir nechta katakka bir xil ma'lumot kiritish**

⚡ **Super tezlik!**
Yuzlab katakni bir vaqtda to'ldiring!

🔢 **Usul 1 - Ctrl+Enter:**
1️⃣ Bir nechta katakni tanlang (Ctrl bosib tiklash)
2️⃣ Ma'lumotni yozing
3️⃣ Ctrl+Enter bosing
4️⃣ Barcha tanlangan kataklar to'ldi!

🔢 **Usul 2 - Shift+ustun/qator:**
1️⃣ Birinchi katakni tanlang
2️⃣ Shift bosib, oxirgi katakni tiklang
3️⃣ Ma'lumot yozib, Ctrl+Enter bosing

🔢 **Usul 3 - Drag & Fill:**
1️⃣ Ma'lumot kiritilgan katakni tanlang
2️⃣ Burchakdagi kichik kvadratni tuting
3️⃣ Kerakli joyga sudrab olib boring

💡 **Pro tricks:**
• Seriyalar yaratish: 1, 2 yozib sudrasangiz → 3, 4, 5...
• Sanalar: 01.01.2024 yozib sudrasangiz → 02.01.2024, 03.01.2024...
• Matnlar: Dushanba yozib sudrasangiz → Seshanba, Chorshanba...

🎯 **Amaliy misol:**
100 ta katakga "Tayyorlanmoqda" yozish kerak?
→ Range tanlang, yozing, Ctrl+Enter!

📚 **Vaqt tejash:**
1000 ta katakni to'ldirish: 1 soat → 5 soniya!

🔗 **Manba:** https://support.microsoft.com/office/fill-data-automatically-e112d794-4179-49d5-a619-65284577888e
    ''');
  });

  teledart.onMessage(keyword: 'Ochiladigan ro\'yxat yaratish').listen((message) async {
    await message.reply('''
📋 **Ochiladigan ro'yxat yaratish (Data Validation - Dropdown)**

🎯 **Nima uchun kerak?**
Xatolarni oldini olish va ma'lumot kiritishni soddalashtirish!

📝 **Qadamba-qadam yaratish:**
1️⃣ Katakni yoki kataklar diapazonini tanlang
2️⃣ Data → Data Validation → Data Validation...
3️⃣ "Allow" dan "List" ni tanlang
4️⃣ "Source" ga ro'yxatni yozing (vergul bilan ajrating)
   Misol: Ha,Yo'q,Belkki
5️⃣ OK bosing

🛠️ **Ilg'or parametrlar:**
• ✅ "In-cell dropdown" - strelka ko'rsatish
• ✅ "Ignore blank" - bo'sh qiymatlarni ruxsat berish
• ❌ "Show error alert" - xato xabarlarini o'chirish

💡 **Ro'yxat manbai opsiyalari:**
• Manual: To'g'ridan-to'g'ri yozish
• Range: =\$A\$1:\$A\$10 (boshqa diapazon)
• Dynamic: OFFSET funksiyasi bilan

🎨 **Dropdown dizayni:**
Input Message → foydalanuvchilar uchun ko'rsatma
Error Alert → noto'g'ri qiymat kiritilganda ogohlantirish

🔄 **O'zgartirish va yangilash:**
Data Validation oynasini qayta oching va ro'yxatni o'zgartiring

🎯 **Foydalanish hollari:**
• Viloyatlar ro'yxati
• Xodimlar ismlari
• Mahsulot toifalari
• Ha/Yo'q tanlovlari
• Reytinglar (1-5)

📊 **Formulalar bilan birgalikda:**
=COUNTIF(A:A,"Ha") - necha marta "Ha" tanlangani

🔗 **Manba:** https://support.microsoft.com/office/apply-data-validation-to-cells-29FECBCC-D1B9-42C1-9D76-EFF3CE5F7249
    ''');
  });

  teledart.onMessage(keyword: 'Diagramma elementlarini tahrirlash').listen((message) async {
    await message.reply('''
📊 **Diagramma elementlarini tezkor tahrirlash**

🎨 **Professional diagrammalar yarating!**

⚡ **Tezkor tahrirlash usullari:**

**1️⃣ Elementni tanlash:**
• Bitta element: 1 marta bosish
• Barcha bir xil elementlar: 2 marta bosish
• Ctrl bosib: ko'p elementlarni tanlash

**2️⃣ Tezkor formatlar:**
• Chart Styles (o'ng tomonda) - tayyor dizaynlar
• Chart Elements (+) - title, legend qo'shish/o'chirish
• Chart Filters - ma'lumotlarni filtrlash

**3️⃣ Shortcut tugmalar:**
• F11 - yangi diagramma yaratish
• Ctrl+1 - Format paneliпи ochish
• Delete - tanlangan elementni o'chirish

🎯 **Asosiy elementlar:**

**📝 Chart Title:**
• Bosing va to'g'ridan-to'g'ri tahrirlang
• Format → yanada ko'p parametrlar

**📊 Axes (o'qlar):**
• Vertical/Horizontal o'qlarni alohida formatlash
• Scale (min/max) o'rnatish
• Number format o'zgartirish

**🏷️ Legend (legenda):**
• Position o'zgartirish: yuqori/pastki/yon
• Font va ranglarni o'zgartirish

**📈 Data Series (ma'lumot qatorlari):**
• Fill color, outline
• Data labels qo'shish
• Effect (shadow, glow) berish

**🎨 Plot Area:**
• Background color
• Border styles
• Gradient effects

💡 **Pro maslahatlar:**
• Quick Layout (Design tab) - tayyor tartiblar
• Change Chart Type - ixtiyoriy vaqtda tur o'zgartirish
• Copy formatting: Format Painter diagrammalarda ham ishlaydi

🔧 **Ilg'or tahrirlash:**
Format pane (Ctrl+1) orqali:
• Gradients va patterns
• Shadow va reflection
• 3D effects
• Transparency

🎯 **Mashq:**
Oddiy bar chart yaratib, ranglarni o'zgartiring va title qo'shing!

🔗 **Manba:** https://support.microsoft.com/office/change-the-format-of-chart-elements-5892c949-2e81-4355-b954-1557b7b75508
    ''');
  });

  teledart.onMessage(keyword: 'Formulalarni tezkor ko\'rish').listen((message) async {
    await message.reply('''
🔍 **Formulalarni tezkor ko'rish va tekshirish**

🐛 **Xatolarni topish va tuzatish**

⚡ **Asosiy Formula Auditing vositalari:**

**1️⃣ Show Formulas (Ctrl + `):**
• Barcha formulalarni ko'rsatadi
• Natijalar o'rniga formulalarni ko'rish
• Qayta bosganda normal ko'rinishga qaytadi

**2️⃣ Trace Precedents:**
• Formula qaysi katakchalardan foydalanayotgani ko'rsatadi
• Blue arrows (ko'k strelkalar) paydo bo'ladi
• Formula → Trace Precedents

**3️⃣ Trace Dependents:**
• Bu katak qaysi formulalarda ishlatiladi
• Qaysi natijalar bu katakka bog'liq
• Formula → Trace Dependents

**4️⃣ Error Checking:**
• Formula → Error Checking
• Avtomatik ravishda xatolarni qidiradi
• Har xato uchun tuzatish taklif qiladi

📝 **Xato turlari va yechimlar:**

**#DIV/0! - Nolga bo'lish:**
• IFERROR funksiyasidan foydalaning
• IF(B1=0,"",A1/B1)

**#VALUE! - Noto'g'ri qiymat:**
• Matn + son aralashuvi
• Ma'lumot turlarini tekshiring

**#REF! - Noto'g'ri havola:**
• O'chirilgan katakga havola
• Havolalarni yangilang

**#NAME? - Nom xatosi:**
• Funksiya nomi noto'g'ri
• Spelling tekshiring

**#N/A - Qiymat topilmadi:**
• VLOOKUP/INDEX-MATCH natijasi
• IFERROR bilan handle qiling

🔧 **Advanced techniques:**

**Watch Window:**
• Formula → Watch Window
• Formulalarni real-time kuzatish
• Bir nechta faylda ishlashda foydali

**Evaluate Formula:**
• Formula → Evaluate Formula
• Formulani qadam-qadam ko'rish
• Murakkab formulalarni debug qilish

💡 **Pro maslahatlar:**
• F9 - formulani qisman hisoblash
• Ctrl+A - rangeni tanlash formulada
• F3 - defined names ro'yxati

🎯 **Amaliy misol:**
=VLOOKUP(A1,Sheet2!\$A\$1:\$B\$100,2,FALSE)
Bu formulani trace qilib, A1 ga nima kiriyotgani va Sheet2 da nima borligini ko'ring

📚 **Formula error patterns:**
• Circular references topish
• Inconsistent formulas aniqlash
• Empty cells tekshirish

🔗 **Manba:** https://support.microsoft.com/office/detect-errors-in-formulas-3a8acca5-1d61-4702-80e0-99a36a2822c1
    ''');
  });

  teledart.onMessage(keyword: 'Ma\'lumotlarni flesh-to\'ldirish').listen((message) async {
    await message.reply('''
⚡ **Ma'lumotlarni Flash Fill bilan avtomatik to'ldirish**

🧠 **Excel sizning niyatingizni tushunadi!**

🔥 **Flash Fill nima?**
Siz bir necha misol kiritasiz, Excel pattern ni tushunib, qolganini o'zi to'ldiradi!

📝 **Qanday ishlatiladi:**

**Usul 1 - Pattern Recognition:**
1️⃣ A ustunida: "Aliyev Vali", "Karimov Aziz"
2️⃣ B ustunida yozing: "Vali", "Aziz" 
3️⃣ Keyingi katakda Ctrl+E bosing
4️⃣ Excel qolgan ismlarni avtomatik ajratadi!

**Usul 2 - Data Menu:**
1️⃣ Data → Flash Fill
2️⃣ Yoki Ctrl+E

🎯 **Flash Fill nimalarga qodir:**

**📧 Email ajratlash:**
• john.doe@company.com → john.doe
• @company.com → company.com

**📱 Telefon formatlash:**
• 998901234567 → +998 90 123 45 67
• 901234567 → (90) 123-45-67

**👤 Ism-familiya ajratish:**
• "Olimov Jasur Akramovich" → "Olimov" / "Jasur" / "Akramovich"

**🏢 Manzillarni ajratish:**
• "Toshkent, Chilonzor, 5-uy" → "Toshkent" / "Chilonzor" / "5-uy"

**💰 Valyuta formatlash:**
• 1000000 → "1,000,000 so'm"
• 1000 → "\$1,000"

**📅 Sanalarni o'zgartirish:**
• 12/25/2024 → "25-dekabr-2024"
• 2024-01-15 → "15.01.24"

💡 **Pro maslahatlar:**

**🎨 Murakkab formatlar:**
• Upper/Lower case o'zgartirish
• Qisqartmalar yaratish: "Microsoft Corporation" → "MSFT"
• Kodlar generatsiya qilish: "Mahsulot 1" → "M001"

**⚙️ Helper formulalar:**
Agar Flash Fill enough emas bo'lsa:
• CONCATENATE
• LEFT, RIGHT, MID
• SUBSTITUTE, REPLACE

🚫 **Cheklashlar:**
• Juda murakkab patternlar ishlamasligi mumkin
• Ko'plab ustunlar bilan qiyin ishlaydi
• Sana calculations Flash Fill bilan emas

🔄 **Xatolarni tuzatish:**
Agar noto'g'ri pattern tanisa:
• Esc bosing
• Ko'proq misollar bering
• Manual tuzating va qayta Flash Fill qiling

📊 **Real misol - Name cleaning:**
A1: "Dr. Smith, John M."  → B1: "John M. Smith"
A2: "Prof. Johnson, Alice" → B2: "Alice Johnson"  
B3 da Ctrl+E - va barcha qolganlari aylanadi!

🔗 **Manba:** https://support.microsoft.com/office/using-flash-fill-in-excel-3f9bcf1e-db93-4890-94a0-1578341f73f7
    ''');
  });

  teledart.onMessage(keyword: 'Xatolarni bartaraf etish').listen((message) async {
    await message.reply('''
🔧 **Excel xatolarini bartaraf etish - Mukammal qo'llanma**

🚨 **Eng keng tarqalgan xatolar va yechimlar:**

**1️⃣ #DIV/0! - Division by Zero**
❌ **Xato:** =A1/B1 (B1=0)
✅ **Yechim:** =IF(B1=0,"N/A",A1/B1)
🛡️ **Advanced:** =IFERROR(A1/B1,"Bo'lish mumkin emas")

**2️⃣ #VALUE! - Value Error**
❌ **Xato:** ="5"+3 (text va number)
✅ **Yechim:** =VALUE("5")+3
🛡️ **Advanced:** =IFERROR(VALUE(A1)*2,"Raqam emas")

**3️⃣ #REF! - Reference Error**
❌ **Xato:** O'chirilgan katakka havola
✅ **Yechim:** Havolani yangi katakga o'zgartirish
🛡️ **Advanced:** Absolute references (\$A\$1) foydalaning

**4️⃣ #NAME? - Name Error**
❌ **Xato:** =VLOOKuP(A1,B:C,2,FALSE) (noto'g'ri nom)
✅ **Yechim:** =VLOOKUP(A1,B:C,2,FALSE)
🛡️ **Advanced:** AutoComplete va IntelliSense ishlatiang

**5️⃣ #N/A - Not Available**
❌ **Xato:** VLOOKUP qidirilayotgan qiymatni topmadi
✅ **Yechim:** =IFERROR(VLOOKUP(A1,B:C,2,0),"Topilmadi")
🛡️ **Advanced:** INDEX-MATCH combinatsiyasi

**6️⃣ #NUM! - Number Error**
❌ **Xato:** =SQRT(-4) (manfiy sondan kvadrat ildiz)
✅ **Yechim:** =IF(A1>=0,SQRT(A1),"Manfiy son")

**7️⃣ #NULL! - Null Error**
❌ **Xato:** =A1:A10 B1:B10 (noto'g'ri range operator)
✅ **Yechim:** =A1:A10,B1:B10 yoki A1:A10&" "&B1:B10

🛠️ **Diagnostic vositalari:**

**🔍 Formula Auditing:**
• Formulas tab → Error Checking
• Trace Precedents/Dependents
• Watch Window

**⚡ Tezkor diagnostika:**
• Ctrl+` - formulalarni ko'rsatish
• F9 - formulani qisman hisoblash
• F2 - edit mode ga kirish

📊 **Error Handling Strategies:**

**1️⃣ IFERROR - Universal solution:**
```
=IFERROR(risky_formula, "Xato yuz berdi")
=IFERROR(A1/B1, 0)  # Xato vaqtida 0 qaytaradi
```

**2️⃣ ISERROR - Check qilish:**
```
=IF(ISERROR(A1/B1), "Hisoblash mumkin emas", A1/B1)
```

**3️⃣ Error.Type - Xato turini aniqlash:**
```
=CHOOSE(ERROR.TYPE(A1)+1,"","#NULL!","#DIV/0!","#VALUE!","#REF!","#NAME?","#NUM!","#N/A")
```

💡 **Prevention maslahatlar:**

**✅ Data Validation:**
• Input constraints o'rnating
• Custom error messages yozing

**✅ Structured References:**
• Table references ishlatang: Table1[Column1]
• Named ranges yarating

**✅ Error-resistant formulas:**
• Nested IF statements
• Logical functions kombinatsiyasi

🎯 **Real-world misollar:**

**📈 Financial calculations:**
```
=IFERROR(NPV(rate,values),"Rate yoki values noto'g'ri")
```

**📋 Data lookup:**
```
=IFERROR(INDEX(Sheet2!B:B,MATCH(A1,Sheet2!A:A,0)),"Ma'lumot topilmadi")
```

**📊 Division operations:**
```
=IF(AND(ISNUMBER(A1),ISNUMBER(B1),B1<>0),A1/B1,"Hisoblab bo'lmadi")
```

🔄 **Debug Process:**

1️⃣ **Isolate:** Xatoli formulani ajrating
2️⃣ **Simplify:** Qismlarini alohida test qiling  
3️⃣ **Verify:** Input ma'lumotlarni tekshiring
4️⃣ **Reconstruct:** Qadam-qadam qayta qurilng

📚 **Advanced Troubleshooting:**

**Circular References:**
• Formulas → Error Checking → Circular References

**Performance Issues:**
• Volatile functions kamaytrng (NOW, TODAY, INDIRECT)
• Array formulas optimizatsiya qiling

**Memory kaveri:**
• Large datasets uchun Power Query ishlatang
• Unnecessary formatting o'chiring

🔗 **Manba:** https://support.microsoft.com/office/how-to-correct-a-ref-error-822c8e46-e610-4d02-bf29-ec4b8c5ff4be
    ''');
  });

  teledart.onMessage(keyword: 'Yana shortslar').listen((message) async {
    final keyboard = ReplyKeyboardMarkup(
      keyboard: [
        [KeyboardButton(text: 'Conditional Formatting'), KeyboardButton(text: 'Pivot Table Shortcuts')],
        [KeyboardButton(text: 'Advanced Filter'), KeyboardButton(text: 'Macro Recorder')],
        [KeyboardButton(text: 'Power Query Basics'), KeyboardButton(text: 'Array Formulas')],
        [KeyboardButton(text: 'Chart Animation'), KeyboardButton(text: 'Template Creation')],
        [KeyboardButton(text: 'Orqaga')],
      ],
      resizeKeyboard: true,
      oneTimeKeyboard: false,
    );
    message.reply('🔥 Yana shortslar bo\'limiga xush kelibsiz!\n\n🚀 Advanced Excel funksiyalarini o\'rganing!\n\nQuyidagi bo\'limlardan birini tanlang:', replyMarkup: keyboard);
  });

  teledart.onMessage(keyword: 'Conditional Formatting').listen((message) async {
    await message.reply('''
🎨 **Conditional Formatting - Ma'lumotlarni vizual qilish**

🌈 **Katakchalarni avtomatik ranglash!**

⚡ **Asosiy usullar:**

**1️⃣ Highlight Cells Rules:**
• Home → Conditional Formatting → Highlight Cells
• Greater Than, Less Than, Between
• Text Contains, Duplicate Values

**2️⃣ Top/Bottom Rules:**
• Top 10 items
• Above/Below Average
• Top 10%

**3️⃣ Data Bars:**
• Range ichidagi qiymatlarni bar shaklida
• Gradient va solid ranglar

**4️⃣ Color Scales:**
• Heat map yaratish
• 2-color yoki 3-color scale

**5️⃣ Icon Sets:**
• Arrows (yuqori/pastga)
• Traffic lights
• Stars, flags

🎯 **Advanced Rules:**

**Formula-based formatting:**
```
=\$A1>AVERAGE(\$A\$1:\$A\$100)  # O'rtachadan yuqori
=\$B1<>""  # Bo'sh bo'lmagan kataklar
=MOD(ROW(),2)=0  # Juft qatorlar
```

**📊 Practical misollar:**

**1️⃣ Performance Dashboard:**
• Red: <80%
• Yellow: 80-90%  
• Green: >90%

**2️⃣ Kalendar ranglash:**
• Dam olish kunlari
• Muhim sanalar
• Deadline alerts

**3️⃣ Budget tracking:**
• Over budget - qizil
• Close to budget - sariq
• Under budget - yashil

💡 **Pro maslahatlar:**
• Manage Rules - barcha qoidalarni ko'rish
• Clear Rules - formatingni o'chirish
• Copy format - boshqa joyga nusxalash

🔗 **Manba:** https://support.microsoft.com/office/use-conditional-formatting-to-highlight-information-fed60dfa-1d3f-4e13-9ecb-f1951ff89d7f
    ''');
  });

  teledart.onMessage(keyword: 'Pivot Table Shortcuts').listen((message) async {
    await message.reply('''
📊 **Pivot Table Shortcuts - Ma'lumotlar tahlili**

⚡ **Pivot Table yaratish va tahrirlash**

🚀 **Asosiy shortcuts:**

**Yaratish:**
• Alt+N+V - Insert PivotTable
• Alt+D+P - Classic PivotTable wizard

**Navigation:**
• Ctrl+↑↓←→ - Fieldlar orasida harakat
• Tab/Shift+Tab - Field areas orasida

**Fieldlar bilan ishlash:**
• Drag & Drop - fieldlarni ko'chirish
• Right-click → Field Settings

📈 **PivotTable customization:**

**1️⃣ Value Field Settings:**
• Sum, Count, Average
• Show Values As: % of Total, % of Row
• Number formatting

**2️⃣ Row/Column Labels:**
• Grouping: sanalar, raqamlar
• Sorting va filtering
• Field subtotals

**3️⃣ Report Layout:**
• Compact, Outline, Tabular
• Repeat item labels
• Grand totals on/off

🎯 **Advanced techniques:**

**Slicers va Timeline:**
• Insert → Slicer
• Timeline sanalar uchun
• Multiple pivot tables birga filter

**Calculated Fields:**
• PivotTable Tools → Fields, Items & Sets
• Custom formula yaratish
• Complex calculations

💡 **Power tips:**
• F5 - Refresh data
• Ctrl+A - Select entire PivotTable
• Alt+↓ - Open filter dropdown

🔄 **Data yangilash:**
• Right-click → Refresh
• PivotTable Options → Refresh on open
• Connection properties o'rnatish

📚 **Best practices:**
• Source data clean bo'lishi kerak
• Headers bo'lishi shart
• No blank rows/columns

🔗 **Manba:** https://support.microsoft.com/office/create-a-pivottable-to-analyze-worksheet-data-a9a84538-bfe9-40a9-a8e9-f99134456576
    ''');
  });

  teledart.onMessage(keyword: 'Advanced Filter').listen((message) async {
    await message.reply('''
🔍 **Advanced Filter - Kuchli filtrlash vositasi**

💪 **AutoFilter dan kuchliroq!**

⚡ **Basic Advanced Filter:**

**1️⃣ Criteria Range yarating:**
```
    A        B        C
1  Name     Age      City
2  >25              Tashkent
3  <50              
```

**2️⃣ Filter qo'llash:**
• Data → Advanced Filter
• List Range: ma'lumotlar
• Criteria Range: filtr shartlari
• Copy to another location (optional)

🎯 **Complex Criteria:**

**AND conditions (bir qatorda):**
```
Name     Age
Ali      >25
```

**OR conditions (alohida qatorlarda):**
```
Name     Age
Ali      
         >25
```

**Mixed conditions:**
```
City        Age
Tashkent    >20
Samarkand   <60
```

📊 **Wildcard ishlatish:**
• * - ixtiyoriy belgilar
• ? - bitta belgi
• ~* - literal asterisk

**Misollar:**
```
Name
A*      # A bilan boshlanuvchi
*ov     # ov bilan tugaydigan  
???     # 3 harfli ismlar
```

🔧 **Formula criteria:**
```
=LEN(A2)>5     # 5 dan ko'p harfli
=MONTH(C2)=12  # Dekabr oyi
=A2<>""        # Bo'sh bo'lmagan
```

💡 **Pro maslahatlar:**
• Unique records only - takrorlanmaydigan yozuvlar
• In-place filter - o'sha joyda filtrlash
• Copy to location - boshqa joyga nusxalash

🎨 **Real-world misollar:**

**1️⃣ Sales analysis:**
```
Product    Sales    Region
Mobile*    >1000    
           <5000    North
```

**2️⃣ Employee records:**
```
Department    Hire_Date
IT            >=1/1/2020
Marketing     <=12/31/2023
```

🔄 **Clear va reset:**
• Data → Clear filter
• Reapply same criteria

📚 **Advantages over AutoFilter:**
• Multiple criteria columns
• Complex formulas
• Copy filtered results
• Print filtered data

🔗 **Manba:** https://support.microsoft.com/office/filter-data-in-a-range-or-table-01832226-31b5-4568-8806-38c37dcc180e
    ''');
  });

  teledart.onMessage(keyword: 'Macro Recorder').listen((message) async {
    await message.reply('''
🤖 **Macro Recorder - Avtomatlashtirishning boshlang'ich bosqichi**

⚡ **Takrorlanuvchi vazifalarni avtomatlashtiring!**

🎬 **Macro yozish (Recording):**

**1️⃣ Record boshlash:**
• View → Macros → Record Macro
• Yoki Developer tab → Record Macro
• Macro name va description kiriting

**2️⃣ Harakatlarni bajarish:**
• Excel barcha harakatlaringizni yozib oladi
• Formatting, calculations, navigation

**3️⃣ Recording to'xtatish:**
• View → Macros → Stop Recording
• Yoki Developer → Stop Recording

▶️ **Macro ishlatish:**

**Run qilish:**
• Alt+F8 - Macro list
• Developer → Macros → Run
• Shortcut key (agar o'rnatlangan bo'lsa)

**Shortcut o'rnatish:**
• File → Options → Customize Ribbon
• Macro names → Assign

📝 **Generated VBA kod:**

**Basic structure:**
```vba
Sub MyMacro()
    Range("A1").Select
    Selection.Font.Bold = True
    Selection.Interior.Color = RGB(255, 0, 0)
End Sub
```

🎯 **Common Macro scenarios:**

**1️⃣ Formatting automation:**
• Headers styling
• Border qo'yish
• Color schemes

**2️⃣ Data manipulation:**
• Sort va filter
• Copy-paste operations
• Sheet navigation

**3️⃣ Report generation:**
• Template filling
• Chart creation
• Print settings

⚠️ **Best practices:**

**✅ Do:**
• Descriptive names berish
• Comments qo'shish
• Small, specific macros
• Test before using on important data

**❌ Don't:**
• Complex logic recorder bilan
• File paths hard-code qilish
• Personal info include qilish

🔧 **Optimization:**

**Yaxshilash:**
• Absolute references remove qiling
• .Select statements olib tashlang
• Variables ishlatang

**Before:**
```vba
Range("A1").Select
Selection.Value = "Hello"
```

**After:**
```vba
Range("A1").Value = "Hello"
```

🛡️ **Security va Enable:**
• File → Options → Trust Center
• Macro Settings
• Enable macros from trusted sources

💡 **Limitations:**
• Faqat actions record qiladi, logic emas
• Decision making yo'q
• Error handling minimal

🚀 **Next steps:**
Macro Recorder dan keyin VBA o'rganishga o'ting!

🔗 **Manba:** https://support.microsoft.com/office/automate-tasks-with-the-macro-recorder-974ef220-f716-4e01-b015-3ea70e64937b
    ''');
  });

  teledart.onMessage(keyword: 'Power Query Basics').listen((message) async {
    await message.reply('''
💪 **Power Query Basics - Ma'lumotlarni tayyorlash va tisztítás**

🔄 **Ma'lumotlarni ETL (Extract, Transform, Load)**

📥 **Data Source Connection:**

**1️⃣ External data import:**
• Data → Get Data → From File
• Excel, CSV, JSON, XML
• Web data, databases

**2️⃣ Transform data:**
• Power Query Editor ochiladi
• Preview va edit qilish
• Load qilishdan oldin cleanup

🛠️ **Common Transformations:**

**🧹 Data Cleaning:**
• Remove duplicates
• Fill down empty cells
• Trim whitespace
• Change data types

**📊 Shape transformation:**
• Transpose
• Unpivot columns
• Split/Merge columns
• Group by operations

**🔧 Column operations:**
• Rename columns
• Add custom columns
• Extract text parts
• Date/time calculations

⚡ **M Language basics:**

**Custom Column examples:**
```m
= Text.Upper([Name])                    // Upper case
= Date.Year([Date])                     // Extract year
= [Sales] * [Quantity]                  // Multiplication
= if [Score] > 80 then "Pass" else "Fail"  // Conditional
```

🎯 **Real scenarios:**

**1️⃣ Sales data cleanup:**
• Multiple Excel files merge
• Standardize date formats
• Remove test records
• Calculate commission

**2️⃣ HR analytics:**
• Employee data normalization
• Birthday reminders setup
• Performance metrics calculation

**3️⃣ Financial reporting:**
• Bank statement processing
• Currency conversion
• Category grouping

🔄 **Refresh strategies:**

**Automatic update:**
• Query Properties → Refresh
• Workbook connection settings
• Scheduled refresh (Power BI)

**Manual refresh:**
• Data → Refresh All
• Right-click table → Refresh

💡 **Pro tips:**

**Performance:**
• Filter early (at source)
• Remove unnecessary columns
• Use Query Folding when possible

**Reusability:**
• Create parameter queries
• Reference queries
• Function creation

📈 **Advanced features:**
• Merge queries (JOINS)
• Append queries (UNION)
• Web scraping
• API connections

🛡️ **Data Privacy:**
• Privacy Levels setting
• Credential management
• Connection security

🚀 **Next level:**
Power Query → Power BI → Advanced Analytics

🔗 **Manba:** https://support.microsoft.com/office/introduction-to-microsoft-power-query-for-excel-6e92e2f4-2079-4e1f-bad5-89f6269cd605
    ''');
  });

  teledart.onMessage(keyword: 'Array Formulas').listen((message) async {
    await message.reply('''
🔢 **Array Formulas - Bir formulada ko'p hisob-kitob**

⚡ **Har bir katak uchun formula yozish kerak emas!**

🎯 **Array Formula asoslari:**

**📝 Legacy Array Formulas (Ctrl+Shift+Enter):**
```
{=SUM(A1:A10*B1:B10)}  // Curly braces appear automatically
```

**🆕 Dynamic Arrays (Excel 365):**
```
=A1:A10*B1:B10          // No Ctrl+Shift+Enter needed
=SEQUENCE(10)           // Numbers 1 to 10
=UNIQUE(A:A)            // Unique values
```

📊 **Classic Array Functions:**

**1️⃣ Array calculations:**
```
=SUM((A1:A10>5)*(B1:B10>10))     // Count with multiple criteria
=MAX(A1:A10*B1:B10)              // Maximum product
=AVERAGE(IF(C1:C10="Yes",A1:A10)) // Conditional average
```

**2️⃣ Text operations:**
```
=CONCATENATE(A1:A10)             // Join all text
=LEN(A1:A10)                     // Length of each cell
```

🆕 **Dynamic Array Functions (365):**

**UNIQUE:**
```
=UNIQUE(A1:A100)                 // Unique values
=UNIQUE(A1:A100,FALSE,TRUE)      // Unique, by row, exactly once
```

**FILTER:**
```
=FILTER(A1:C100,B1:B100>1000)    // Rows where column B > 1000
=FILTER(A:C,(B:B>500)*(C:C<>"")) // Multiple conditions
```

**SORT:**
```
=SORT(A1:C100,2,1)               // Sort by column 2, ascending
=SORT(A1:C100,{2,1},{1,-1})      // Multi-column sort
```

**SEQUENCE:**
```
=SEQUENCE(10)                     // 1,2,3...10
=SEQUENCE(5,3)                    // 5x3 grid
=SEQUENCE(12,1,1,1/12)           // Monthly fractions
```

**RANDARRAY:**
```
=RANDARRAY(10,5)                 // 10x5 random numbers
=RANDARRAY(10,1,1,100,TRUE)      // Random integers 1-100
```

🎯 **Practical examples:**

**1️⃣ Sales Analysis:**
```
=FILTER(Sales_Table,Sales_Table[Region]="North")
=SUMPRODUCT((Region="North")*(Month="Jan")*Sales)
```

**2️⃣ Grade Calculations:**
```
=AVERAGE(IF(Subject="Math",Grade))    // Average math grade
{=MAX(IF(Student=A1,Score))}          // Max score per student
```

**3️⃣ Date Operations:**
```
=FILTER(Data,MONTH(Date_Column)=12)   // December records
=SEQUENCE(31,1,DATE(2024,1,1))        // January 2024 dates
```

⚠️ **Array Formula Rules:**

**Spilling:**
• Results "spill" into adjacent cells
• #SPILL! error if blocked
• Clear space for results

**Volatile:**
• Recalculate on any change
• Can slow down large workbooks
• Use sparingly in big files

💡 **Debugging arrays:**

**F9 technique:**
• Select part of formula
• Press F9 to see result
• Don't press Enter!

**EVALUATE function:**
• Test array expressions
• Check intermediate results

🔧 **Performance tips:**

**✅ Efficient:**
• Use structured references
• Minimize volatile functions
• Filter early

**❌ Avoid:**
• Entire column references in large datasets
• Nested array formulas
• Unnecessary calculations

🚀 **Advanced patterns:**

**Transpose operations:**
```
=TRANSPOSE(FILTER(A:C,B:B>100))
```

**Conditional formatting with arrays:**
```
=COUNTIFS(\$B\$2:\$B\$100,B2,\$A\$2:\$A\$100,"<"&A2)>0
```

🎨 **Creative uses:**
• Calendar generation
• Multiplication tables
• Report automation
• Data validation lists

🔗 **Manba:** https://support.microsoft.com/office/dynamic-array-formulas-and-spilled-array-behavior-205c6b06-03ba-4151-89a1-87a7eb36e531
    ''');
  });

  teledart.onMessage(keyword: 'Chart Animation').listen((message) async {
    await message.reply('''
🎬 **Chart Animation - Diagrammalarni jonlantirish**

✨ **Ma'lumotlaringizni hayotga keltiring!**

🎯 **Animation turlari:**

**1️⃣ Built-in Chart Animation:**
• Chart selection
• Animation tab → Custom Animation
• Entry effects qo'shish

**2️⃣ Data-driven Animation:**
• Slicer/Timeline bilan
• Parameter changes
• Real-time updates

🛠️ **Implementation methods:**

**📊 PowerPoint integration:**
• Excel chart → Copy → PowerPoint
• Animation pane da customize
• Entrance, emphasis, exit effects

**📈 Interactive Excel:**
• Form Controls (Developer tab)
• Scroll bars/Spin buttons
• Data Table dynamic updates

🎨 **Animation scenarios:**

**1️⃣ Time-series data:**
```
Month selector → Chart updates
Sales progression over time
Animated bars growing/shrinking
```

**2️⃣ Comparison charts:**
```
Category filter → Instant update
Before/After animations
Regional comparisons
```

**3️⃣ Dashboard elements:**
```
KPI gauge animations
Progress indicators
Status changes
```

⚡ **VBA automation:**

**Basic chart animation:**
```vba
Sub AnimateChart()
    Dim Chart As ChartObject
    Set Chart = ActiveSheet.ChartObjects(1)
    
    For i = 1 To 10
        Chart.Chart.SeriesCollection(1).Values = Range("A" & i & ":J" & i)
        Application.Wait Now + TimeValue("00:00:01")
        DoEvents
    Next i
End Sub
```

**📱 Modern alternatives:**

**Power BI:**
• Advanced animation options
• Play axis for time-based data
• Interactive storytelling

**Plotly/JavaScript:**
• Web-based animations
• Export Excel data
• Embed in presentations

💡 **Design principles:**

**✅ Good animation:**
• Purposeful movement
• Consistent timing
• Clear storytelling
• Not distracting

**❌ Avoid:**
• Overused effects
• Too fast/slow transitions
• Competing animations
• Unnecessary flourishes

🎬 **Storytelling techniques:**

**Progressive disclosure:**
• Layer-by-layer reveal
• Build suspense
• Focus attention

**Comparison emphasis:**
• Highlight differences
• Side-by-side animation
• Before/after effects

🔧 **Technical setup:**

**Chart preparation:**
• Clean, clear design
• Appropriate colors
• Readable fonts
• Consistent scales

**Animation triggers:**
• Button controls
• Data validation
• Conditional formatting
• VBA procedures

📊 **Advanced techniques:**

**Dynamic ranges:**
```
=OFFSET(\$A\$1,0,0,COUNTA(\$A:\$A),Slider_Value)
```

**Cascading animations:**
• Multiple charts sequence
• Timed delays
• Synchronized updates

🎯 **Business applications:**

**1️⃣ Presentations:**
• Sales pitches
• Board meetings
• Training materials

**2️⃣ Dashboards:**
• Real-time monitoring
• Performance tracking
• Interactive reports

**3️⃣ Analysis:**
• Trend identification
• Pattern discovery
• What-if scenarios

🚀 **Tools and resources:**

**Free options:**
• PowerPoint animations
• Excel + VBA
• Google Sheets transitions

**Premium tools:**
• Power BI Pro
• Tableau animations
• D3.js custom solutions

🎭 **Performance considerations:**
• File size impact
• Playback speed
• Device compatibility
• Network requirements

🔗 **Manba:** https://support.microsoft.com/office/add-animation-to-slides-338C26B9-B3B8-4D1A-8A1E-AE7ED0E38EFF
    ''');
  });

  teledart.onMessage(keyword: 'Template Creation').listen((message) async {
    await message.reply('''
📋 **Template Creation - Qayta foydalaniladigan shablon yaratish**

🏗️ **Bir marta yarat, ko'p marta ishlar!**

🎯 **Template yaratish bosqichlari:**

**1️⃣ Structure design:**
• Headers va labels
• Input sections
• Calculation areas
• Output/results sections

**2️⃣ Formatting setup:**
• Consistent fonts va colors
• Cell styles
• Conditional formatting
• Print layout

**3️⃣ Formula optimization:**
• Absolute/relative references
• Named ranges
• Error handling
• Flexible calculations

**4️⃣ Protection qo'shish:**
• Lock formula cells
• Protect worksheet
• Allow input ranges
• Hide sensitive formulas

📊 **Template turlari:**

**1️⃣ Financial templates:**
```
Budget tracker
• Income/Expense categories
• Monthly tracking
• Variance analysis
• Charts va graphs

Invoice generator
• Client details
• Item calculations
• Tax computations
• Professional formatting
```

**2️⃣ Project management:**
```
Gantt chart
• Task timeline
• Dependencies
• Progress tracking
• Resource allocation

Project tracker
• Milestone tracking
• Status updates
• Team assignments
• Deadline alerts
```

**3️⃣ Data analysis:**
```
Dashboard template
• KPI sections
• Interactive charts
• Drill-down capabilities
• Automated refreshing

Report generator
• Standard layouts
• Dynamic content
• Print optimization
• Export ready
```

🛠️ **Advanced features:**

**Form Controls:**
• Dropdown menus
• Check boxes
• Option buttons
• Input validation

**Named Ranges:**
```
=INDIRECT("Data_"&YEAR(TODAY()))
=VLOOKUP(Input_Cell,Reference_Table,Column_Index,FALSE)
```

**Dynamic elements:**
```
=IF(Show_Details=TRUE,Detail_Range,"")
=INDEX(Chart_Data,MATCH(Selected_Month,Month_List,0))
```

💡 **Design principles:**

**User-friendly:**
• Clear instructions
• Intuitive layout
• Error messages
• Helper texts

**Flexible:**
• Expandable ranges
• Multiple scenarios
• Customizable options
• Version control

**Professional:**
• Company branding
• Consistent styling
• Print-ready
• Export formats

🔧 **Template distribution:**

**File formats:**
• .xltx (Excel template)
• .xlsm (macro-enabled)
• .xlsx (standard)

**Sharing methods:**
• Network drives
• SharePoint libraries
• OneDrive/Teams
• Email distribution

🛡️ **Version control:**

**Documentation:**
• Change logs
• User guides
• Version numbers
• Update notifications

**Maintenance:**
• Regular reviews
• User feedback
• Bug fixes
• Feature updates

🎨 **Customization options:**

**Themes:**
• Color schemes
• Font combinations
• Logo placement
• Corporate standards

**Languages:**
• Multi-language support
• Regional formats
• Currency symbols
• Date formats

📈 **Quality assurance:**

**Testing checklist:**
• All formulas work correctly
• Formatting consistent
• Print preview acceptable
• No broken links
• Error handling functions

**User acceptance:**
• Pilot testing
• Feedback collection
• Training materials
• Support documentation

🚀 **Distribution strategies:**

**1️⃣ Corporate rollout:**
• IT department approval
• Training sessions
• Support infrastructure
• Usage monitoring

**2️⃣ Team sharing:**
• Demo sessions
• Best practices
• FAQ creation
• Peer support

**3️⃣ Online publishing:**
• Template galleries
• Download platforms
• User communities
• Rating systems

💼 **Business benefits:**

**Efficiency:**
• Time savings
• Consistency
• Reduced errors
• Standardization

**Quality:**
• Professional appearance
• Reliable calculations
• Brand compliance
• User satisfaction

🔗 **Manba:** https://support.microsoft.com/office/create-a-template-86a1d089-5aa2-4afa-a5b8-c7bbadcc5c07
    ''');
  });
} 