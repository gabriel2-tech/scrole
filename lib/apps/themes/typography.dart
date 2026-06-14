import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

abstract final class ScroleTypography {
  // ─── Display / Titres (Syne) ──────────────────────────────────────────────

  /// Nom de l'application — 28 px, weight 800, tracking −0.03em
  static TextStyle get appName => GoogleFonts.syne(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.03 * 28,
    color: ScroleColor.textPrimary,
  );

  /// Titre écran principal — 24 px, weight 700
  static TextStyle get displayLarge => GoogleFonts.syne(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.02 * 24,
    color: ScroleColor.textPrimary,
  );

  /// Titre de section — 18 px, weight 600
  static TextStyle get displayMedium => GoogleFonts.syne(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.01 * 18,
    color: ScroleColor.textPrimary,
  );

  // ─── Corps / UI (DM Sans) ─────────────────────────────────────────────────

  /// Texte de bouton principal — 15 px, weight 500
  static TextStyle get button => GoogleFonts.dmSans(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: ScroleColor.surface,
  );

  /// Texte de champ / étiquette — 15 px, weight 400
  static TextStyle get inputText => GoogleFonts.dmSans(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: ScroleColor.textPrimary,
  );

  /// Placeholder des champs — 15 px, weight 400, couleur atténuée
  static TextStyle get inputPlaceholder => GoogleFonts.dmSans(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: ScroleColor.textMuted,
  );

  /// Corps courant — 14 px, weight 300
  static TextStyle get bodyLight => GoogleFonts.dmSans(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 1.6,
    color: ScroleColor.textSecondary,
    fontStyle: FontStyle.italic,
  );

  /// Corps standard — 14 px, weight 400
  static TextStyle get body => GoogleFonts.dmSans(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    height: 1.6,
    color: ScroleColor.textPrimary,
  );

  /// Mention légale / caption — 11.5 px, weight 300, hauteur 1.65
  static TextStyle get legal => GoogleFonts.dmSans(
    fontSize: 11.5,
    fontWeight: FontWeight.w300,
    height: 1.65,
    color: ScroleColor.textMuted,
  );

  /// Lien dans le texte légal — même base que [legal], couleur secondaire
  static TextStyle get legalLink => GoogleFonts.dmSans(
    fontSize: 11.5,
    fontWeight: FontWeight.w300,
    height: 1.65,
    color: ScroleColor.accent,
    decoration: TextDecoration.underline,
    decorationColor: ScroleColor.textSecondary.withOpacity(0.4),
  );

  /// Texte du footer — 11 px, weight 400, tracking +0.04em
  static TextStyle get footer => GoogleFonts.dmSans(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.04 * 11,
    color: ScroleColor.textMuted,
  );

  /// Nom dans le footer — 11.5 px, weight 600
  static TextStyle get footerBold => GoogleFonts.dmSans(
    fontSize: 11.5,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.04 * 11.5,
    color: ScroleColor.textSecondary,
  );

  /// Label diviseur "ou" — 12 px, weight 500, uppercase, tracking +0.08em
  static TextStyle get divider => GoogleFonts.dmSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.08 * 12,
    color: ScroleColor.textMuted,
  );

  /// Status bar (heure, icônes) — 12 px, weight 600, tracking +0.02em
  static TextStyle get statusBar => GoogleFonts.dmSans(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.02 * 12,
    color: ScroleColor.textPrimary,
  );
}
