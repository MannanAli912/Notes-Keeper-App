import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/note_provider.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: MaterialApp(
        title: 'Notes Keeper',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF4F46E5),
            brightness: Brightness.light,
          ).copyWith(
            primary: const Color(0xFF4F46E5),
            onPrimary: Colors.white,
            secondary: const Color(0xFF059669),
            surface: Colors.white,
            onSurface: const Color(0xFF1F2937),
          ),
          scaffoldBackgroundColor: const Color(0xFFF9FAFB),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF4F46E5),
            foregroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF4F46E5),
            foregroundColor: Colors.white,
            elevation: 4,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4F46E5),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xFFD1D5DB), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xFFD1D5DB), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF4F46E5), width: 2),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(16),
            labelStyle: const TextStyle(color: Color(0xFF6B7280)),
            hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
          ),
          cardTheme: CardTheme(
            color: Colors.white,
            elevation: 2,
            shadowColor: Colors.black.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Color(0xFF111827),
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              color: Color(0xFF111827),
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: TextStyle(
              color: Color(0xFF374151),
            ),
            bodyMedium: TextStyle(
              color: Color(0xFF6B7280),
            ),
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6366F1),
            brightness: Brightness.dark,
          ).copyWith(
            primary: const Color(0xFF6366F1),
            onPrimary: Colors.white,
            secondary: const Color(0xFF10B981),
            surface: const Color(0xFF1F2937),
            onSurface: const Color(0xFFF9FAFB),
          ),
          scaffoldBackgroundColor: const Color(0xFF111827),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF1F2937),
            foregroundColor: Color(0xFFF9FAFB),
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Color(0xFFF9FAFB),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF6366F1),
            foregroundColor: Colors.white,
            elevation: 4,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6366F1),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xFF4B5563), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xFF4B5563), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF6366F1), width: 2),
            ),
            filled: true,
            fillColor: const Color(0xFF374151),
            contentPadding: const EdgeInsets.all(16),
            labelStyle: const TextStyle(color: Color(0xFFD1D5DB)),
            hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
          ),
          cardTheme: CardTheme(
            color: const Color(0xFF1F2937),
            elevation: 2,
            shadowColor: Colors.black.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Color(0xFFF9FAFB),
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              color: Color(0xFFF9FAFB),
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: TextStyle(
              color: Color(0xFFE5E7EB),
            ),
            bodyMedium: TextStyle(
              color: Color(0xFFD1D5DB),
            ),
          ),
        ),
        themeMode: ThemeMode.system,
        home: const SplashScreen(),
      ),
    );
  }
}
