import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tok_app/presentation/providers/discover_provider.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
    
        title: 'toktik',
         home: const DiscoverScreen(),
          
        ),
    );
    
  }
}