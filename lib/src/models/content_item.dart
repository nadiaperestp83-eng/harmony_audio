import 'content_category.dart';

/// Contrato base para qualquer item de conteúdo reproduzível oferecido
/// pelo pacote (música espiritual, poesia narrada, etc).
///
/// O app principal deve programar contra este tipo sempre que possível,
/// para poder tratar músicas e poesias de forma uniforme em listas,
/// players e telas de busca.
abstract class ContentItem {
  const ContentItem({
    required this.id,
    required this.title,
    required this.author,
    required this.audioUrl,
    required this.artworkUrl,
    required this.category,
    this.duration,
  });

  /// Identificador único e estável do item (útil para favoritos, histórico
  /// de reprodução, cache, etc).
  final String id;

  /// Título exibido na UI (nome da faixa ou do poema).
  final String title;

  /// Autor, narrador ou artista responsável pelo conteúdo.
  final String author;

  /// URL direta e reproduzível do arquivo de áudio (.mp3).
  /// Deve poder ser passada diretamente para `AudioPlayer.setUrl()`.
  final String audioUrl;

  /// URL da capa/artwork associada ao item.
  /// Deve poder ser passada diretamente para `Image.network()` ou para o
  /// `MediaItem.artUri` da notificação de mídia.
  final String artworkUrl;

  /// Categoria fixa do conteúdo.
  final ContentCategory category;

  /// Duração aproximada do áudio, se conhecida. Pode ser nula quando a
  /// duração exata só é conhecida após o player carregar o arquivo.
  final Duration? duration;

  @override
  String toString() => '$runtimeType(id: $id, title: $title, author: $author)';
}
