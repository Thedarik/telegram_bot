import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';

void aloqaMenu(TeleDart teledart) {
  teledart.onMessage(keyword: '📞 Biz bilan aloqa').listen((message) async {
    message.reply('👨‍💻 Loyiha asoschisi Azizjon Saidqulov.\n\n'
        '❓ Excel va kompyuterga oid savollarni @python8899 ga yozishingiz mumkin.\n\n'
        ' 📞Aloqa +998 97 038 88 99');
  });
}
