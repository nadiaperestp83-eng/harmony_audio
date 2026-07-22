// Este arquivo NÃO faz parte do pacote harmony_audio.
// Ele mostra como o seu APP PRINCIPAL deve importar e consumir o pacote.
//
// No pubspec.yaml do app principal, adicione:
//
// dependencies:
//   flutter:
//     sdk: flutter
//   just_audio: ^0.9.36
//   harmony_audio:
//     path: ../harmony_audio        # se for pacote local
//     # ou, se publicar em um repo git próprio:
//     # git:
//     #   url: https://github.com/SEU_USUARIO/harmony_audio.git

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:harmony_audio/harmony_audio.dart';

void main() => runApp(const PlayerExampleApp());

class PlayerExampleApp extends StatelessWidget {
  const PlayerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harmony Audio - Exemplo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const PlaylistScreen(),
    );
  }
}

/// Tela de listagem: lê os dados diretamente do repositório do pacote.
class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Todo o conteúdo (músicas + poesias) já tipado como ContentItem.
    final List<ContentItem> items = ContentRepository.all;

    return Scaffold(
      appBar: AppBar(title: const Text('Espiritualidade & Poesia')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final ContentItem item = items[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                item.artworkUrl, // capa vinda direto do pacote
                width: 48,
                height: 48,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.image_not_supported),
              ),
            ),
            title: Text(item.title),
            subtitle: Text('${item.author} • ${item.category.displayName}'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => PlayerScreen(item: item)),
            ),
          );
        },
      ),
    );
  }
}

/// Tela de player: usa just_audio para tocar o audioUrl vindo do pacote.
class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key, required this.item});

  final ContentItem item;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final AudioPlayer _player = AudioPlayer();
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadAudio();
  }

  Future<void> _loadAudio() async {
    try {
      // A audioUrl do ContentItem vai direto para o just_audio.
      await _player.setUrl(widget.item.audioUrl);
      if (!mounted) return;
      setState(() => _isLoading = false);
      _player.play();
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _errorMessage = 'Não foi possível carregar o áudio: $e';
      });
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ContentItem item = widget.item;

    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  item.artworkUrl, // capa vinda direto do pacote
                  width: 240,
                  height: 240,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 240,
                    height: 240,
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.music_note, size: 72),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(item.title,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: 4),
              Text(item.author, style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 8),
              Text(item.category.displayName,
                  style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 28),
              if (_isLoading)
                const CircularProgressIndicator()
              else if (_errorMessage != null)
                Text(_errorMessage!,
                    style: TextStyle(color: Theme.of(context).colorScheme.error))
              else
                StreamBuilder<PlayerState>(
                  stream: _player.playerStateStream,
                  builder: (context, snapshot) {
                    final playing = snapshot.data?.playing ?? false;
                    final processingState = snapshot.data?.processingState;
                    if (processingState == ProcessingState.loading ||
                        processingState == ProcessingState.buffering) {
                      return const CircularProgressIndicator();
                    }
                    return IconButton(
                      iconSize: 72,
                      icon: Icon(
                        playing ? Icons.pause_circle_filled : Icons.play_circle_fill,
                      ),
                      onPressed: () => playing ? _player.pause() : _player.play(),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
