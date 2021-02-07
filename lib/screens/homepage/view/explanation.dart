import 'package:flutter/material.dart';

Widget explanationContainer(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.33,
    child: ListView(
      children: [
        Text(
          'Dünyada çoğunun okul kaydı da bulunmayan 152 milyon çocuk işçi var.',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Çocuk işçiliği, çocukların zihinsel, sosyal, fiziksel ve psikolojik gelişimini olumsuz yönde etkiler ve bu yasal değil.',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Çocukların çalıştırılmasının en sık rastlanan nedeni maddi sıkıntılar. ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'İnsanlar okumayan, okuyamayan ve çalıştırılan çocukları görünce sadece üzülüp geçebilir veya ailesinin maddi durumunu düşünüp polise bildirmekten çekinebilir.',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Sen de buna sessiz kalmak istemiyorsan bir kaç dokunuş ile çocukların eğitimine ve dünyanın olumlu yöndeki değişimlerine yön verebilirsin. ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
