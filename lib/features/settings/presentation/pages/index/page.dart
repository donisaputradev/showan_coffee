import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/settings/settings.dart';
import 'package:showan_coffee/l10n/l10n.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          _ThemeSection(),
          _LanguageSection(),
        ],
      ),
    );
  }
}

class _ThemeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return ListTile(
          key: const Key('list_tile_settings_select_theme'),
          leading: const Icon(Icons.style),
          title: const Text('Themes'),
          onTap: () => _showDialogSelectTheme(context, AppTheme.values),
        );
      },
    );
  }

  void _showDialogSelectTheme(BuildContext context, List<AppTheme> themes) {
    showDialog<Object?>(
      context: context,
      builder: (_) => SimpleDialog(
        children: themes
            .map(
              (theme) => ListTile(
                title: Text(theme.toText()),
                onTap: () {
                  BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(theme));
                  Navigator.of(context).pop();
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

class _LanguageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return ListTile(
          key: const Key('list_tile_settings_select_language'),
          leading: const Icon(Icons.language),
          title: const Text('Languages'),
          trailing: Text(state.language?.code ?? context.l10n.localeName),
          onTap: () =>
              _showDialogSelectLanguage(context, state.supportedLanguages),
        );
      },
    );
  }

  void _showDialogSelectLanguage(
    BuildContext context,
    List<Language> languages,
  ) {
    showDialog<Object?>(
      context: context,
      builder: (_) => SimpleDialog(
        children: languages
            .map(
              (lang) => ListTile(
                title: Text(lang.name),
                trailing: Text(lang.code),
                onTap: () {
                  BlocProvider.of<LanguageBloc>(context)
                      .add(LanguageChanged(lang));
                  Navigator.of(context).pop();
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
