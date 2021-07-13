import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocaleText('language'),
      ),
      body: Center(
        child: LocaleText(
          'welcome',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.language,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LanguagePage()));
        },
      ),
    );
  }
}

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocaleText('language'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('English'),
            onTap: () => LocaleNotifier.of(context)!.change('eng'),
          ),
          ListTile(
            title: Text('O\'zbek'),
            onTap: () => LocaleNotifier.of(context)!.change('uz'),
          ),
          Text('Current Locale: ' +
              Locales.currentLocale(context)!.languageCode),

        ],
      ),
    );
  }
}
