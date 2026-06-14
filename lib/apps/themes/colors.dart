import 'package:flutter/material.dart';

/// Palette de couleurs extraite de l'interface Lumis (thème sombre uniquement).
abstract final class ScroleColor {
  // ─── Arrière-plans ────────────────────────────────────────────────────────
  static const Color bg       = Color(0xFF0C0D10);
  static const Color surface  = Color(0xFF13151A);
  static const Color surface2 = Color(0xFF1C1F27);
  static const Color surface3 = Color(0xFF252932);

  // ─── Bordures ─────────────────────────────────────────────────────────────
  static const Color border       = Color(0x12FFFFFF);
  static const Color borderActive = Color(0x2EFFFFFF);
  static const Color googleBorder = Color(0x1AFFFFFF);

  // ─── Textes ───────────────────────────────────────────────────────────────
  static const Color textPrimary   = Color(0xFFF0F0F2);
  static const Color textSecondary = Color(0xFF7A7D8A);
  static const Color textMuted     = Color(0xFF4A4D58);

  // ─── Accent ───────────────────────────────────────────────────────────────
  static const Color accent      = Color(0xFF6B8CFF);
  static const Color accentLight = Color(0xFF7D9FFF);
  static const Color accentGlow  = Color(0x406B8CFF);
  static const Color accentSoft  = Color(0x1F6B8CFF);

  // ─── Statuts ──────────────────────────────────────────────────────────────
  static const Color success     = Color(0xFF4ADE80);
  static const Color successGlow = Color(0x664ADE80);

  // ─── Divers ───────────────────────────────────────────────────────────────
  static const Color homeIndicator = Color(0x33FFFFFF);

  // ─── Couleurs supplémentaires (événements) ────────────────────────────────
  static const Color gold   = Color(0xFFFBBF24);
  static const Color red    = Color(0xFFF87171);
  static const Color purple = Color(0xFFA78BFA);
  static const Color sky    = Color(0xFF38BDF8);
}