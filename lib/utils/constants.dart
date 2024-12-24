import 'package:eadukalthedi_admin/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const Color scaffoldBg = Color(0xffF8f9fc);
delayed({Duration duration = const Duration(seconds: 2)}) async {
  return await Future.delayed(duration);
}

const double padding = 8;
const double paddingLarge = 16;
const double paddingXL = 32;
const double paddingXXL = 64;
const double paddingSmall = 4;
const double paddingTiny = 2;

final gap = Gap(padding.h);
final gapLarge = Gap(paddingLarge.h);
final gapXL = Gap(paddingXL.h);
final gapXXL = Gap(paddingXXL.h);
final gapSmall = Gap(paddingSmall.h);
final gapTiny = Gap(paddingTiny.h);

final boxShadowList = [
  BoxShadow(
    blurStyle: BlurStyle.normal,
    color: Colors.black.withAlpha(51), // 0.2 * 255 = 51
    blurRadius: 10,
    spreadRadius: 5,
    offset: const Offset(
      10,
      15,
    ),
  ),
];
