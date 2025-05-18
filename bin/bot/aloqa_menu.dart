import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void aloqaMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📞 Biz bilan aloqa').listen((message) async {
    message.reply(
      '👨‍💻 Mening ismim Saidqulov Azizjon.\n\n'
      '❓ Excel va kompyuterga oid savollarni @python8899 ga yozishingiz mumkin.\n\n'
      '😉 Boshqa masalalar uchun: @python8899\n\n'
      '@python8899',
    );
  });
}
