import 'package:flutter/material.dart';
import 'package:scrole/apps/themes/colors.dart';

class ThemeApp{
  static ThemeData get darkTheme => ThemeData(
      colorScheme : ColorScheme(
        brightness: Brightness.dark,

        // Surfaces
        background: ScroleColor.bg,
        surface: ScroleColor.surface,
        surfaceVariant: ScroleColor.surface2,
        surfaceTint: ScroleColor.accent,

        // Primaires
        primary: ScroleColor.accent,
        onPrimary: ScroleColor.textPrimary,
        primaryContainer: ScroleColor.accentSoft,
        onPrimaryContainer: ScroleColor.accent,

        // Secondaires
        secondary: ScroleColor.textSecondary,
        onSecondary: ScroleColor.bg,
        secondaryContainer: ScroleColor.surface2,
        onSecondaryContainer: ScroleColor.textSecondary,

        // Tertiaires (succès)
        tertiary: ScroleColor.success,
        onTertiary: ScroleColor.bg,
        tertiaryContainer: Color(0x334ADE80),
        onTertiaryContainer: ScroleColor.success,

        // Erreurs
        error: Color(0xFFFF6B6B),
        onError: ScroleColor.bg,
        errorContainer: Color(0x33FF6B6B),
        onErrorContainer: Color(0xFFFF6B6B),

        // Textes sur surfaces
        onBackground: ScroleColor.textPrimary,
        onSurface: ScroleColor.textPrimary,
        onSurfaceVariant: ScroleColor.textSecondary,

        // Contours
        outline: ScroleColor.border,
        outlineVariant: ScroleColor.borderActive,

        // Divers
        shadow: Color(0xFF000000),
        scrim: Color(0x80000000),
        inverseSurface: ScroleColor.textPrimary,
        onInverseSurface: ScroleColor.bg,
        inversePrimary: ScroleColor.accentLight, //bizare
      ),

  );
}