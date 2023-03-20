import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray200F4 = fromHex('#f4ececec');

  static Color blueGray10001 = fromHex('#d9d9d9');

  static Color gray80002 = fromHex('#4a4535');

  static Color gray80001 = fromHex('#424242');

  static Color greenA100 = fromHex('#a6f7c6');

  static Color deepPurple100 = fromHex('#cdaff3');

  static Color green500 = fromHex('#39f44c');

  static Color red100 = fromHex('#fbd9d9');

  static Color greenA400 = fromHex('#16ff57');

  static Color greenA700 = fromHex('#00eb42');

  static Color yellow600 = fromHex('#ffd131');

  static Color black900 = fromHex('#000000');

  static Color gray20001 = fromHex('#eaeaea');

  static Color blueGray800 = fromHex('#374a5b');

  static Color blueGray900 = fromHex('#2d3d30');

  static Color gray600 = fromHex('#7e7e7e');

  static Color gray90002 = fromHex('#252525');

  static Color gray700 = fromHex('#686868');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray100 = fromHex('#d4d4d4');

  static Color gray500 = fromHex('#aaaaaa');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#3e3e3e');

  static Color gray900 = fromHex('#111111');

  static Color gray90001 = fromHex('#1e1e1e');

  static Color black9006b = fromHex('#6b000000');

  static Color gray200 = fromHex('#efefef');

  static Color gray100 = fromHex('#f4f4f4');

  static Color bluegray400 = fromHex('#888888');

  static Color blue100 = fromHex('#bbdaf7');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan400 = fromHex('#12c1e7');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
