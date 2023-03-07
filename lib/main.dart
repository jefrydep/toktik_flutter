import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),

      title: 'toktik',
       home: const DiscoverScreen(),
        
      );
    
  }
}