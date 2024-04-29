import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends Text {
  AppText(String text,
      {super.key,
      required double fontSize,
      required FontWeight fontWeight,
      required Color color,
      required TextAlign textAlign,
      required int maxLines})
      : super(text,
            style: GoogleFonts.pacifico(
              fontSize: fontSize,
              decoration: TextDecoration.none,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: textAlign,
            maxLines: maxLines );

  factory AppText.title(
    String text, {
    Color color = const Color(0xFFD7AE0D),
    TextAlign textAlign = TextAlign.center,
  }) =>
      AppText(
        text,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: color,
        textAlign: textAlign, maxLines: 1,
      );

  factory AppText.titleGoalTile(
    String text, {
    Color color = const Color(0xFFD7AE0D),
    TextAlign textAlign = TextAlign.start,
  }) =>
      AppText(
        text,
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: color,
        textAlign: textAlign, maxLines: 1,
      );

  factory AppText.titleGoalTileDetail(
    String text, {
    Color color = const Color(0xFFD7AE0D),
    TextAlign textAlign = TextAlign.start,
  }) =>
      AppText(
        text,
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: color,
        textAlign: textAlign, maxLines: 3,
      );

  factory AppText.percentageTile(
    String text, {
    Color color = const Color(0xFFD7AE0D),
    TextAlign textAlign = TextAlign.end,
  }) =>
      AppText(
        text,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: color,
        textAlign: textAlign, maxLines: 1,
      );
}
