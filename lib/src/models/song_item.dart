import 'content_category.dart';
import 'content_item.dart';

/// Representa uma faixa de áudio de espiritualidade, hospedada no
/// repositório próprio do app (arquivos .mp3 puros).
class SongItem extends ContentItem {
  const SongItem({
    required super.id,
    required super.title,
    required super.author,
    required super.audioUrl,
    required super.artworkUrl,
    super.duration,
    this.album,
  }) : super(category: ContentCategory.spirituality);

  /// Álbum ou coleção ao qual a faixa pertence (opcional).
  final String? album;
}
