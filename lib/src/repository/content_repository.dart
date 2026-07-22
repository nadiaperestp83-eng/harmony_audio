import '../data/poems_data.dart';
import '../data/songs_data.dart';
import '../models/content_category.dart';
import '../models/content_item.dart';
import '../models/poem_item.dart';
import '../models/song_item.dart';

/// Ponto único de acesso aos dados fornecidos pelo pacote `harmony_audio`.
///
/// O app principal deve ler os conteúdos SOMENTE através desta classe —
/// os dados brutos em `songs_data.dart` e `poems_data.dart` são
/// considerados detalhes internos do pacote e podem mudar de formato
/// sem quebrar a API pública.
class ContentRepository {
  const ContentRepository._();

  /// Todas as faixas de espiritualidade (.mp3 puro, repositório próprio).
  static List<SongItem> get songs => List.unmodifiable(spiritualitySongs);

  /// Todas as poesias narradas (Internet Archive / LibriVox).
  static List<PoemItem> get poems => List.unmodifiable(archivePoems);

  /// Todo o conteúdo do pacote — músicas + poesias — em uma única lista
  /// tipada como `ContentItem`, pronta para alimentar listas/players.
  static List<ContentItem> get all => List.unmodifiable([
        ...spiritualitySongs,
        ...archivePoems,
      ]);

  /// Filtra qualquer conteúdo (música ou poesia) por categoria fixa.
  static List<ContentItem> byCategory(ContentCategory category) =>
      all.where((item) => item.category == category).toList();

  /// Busca simples por título ou autor (case-insensitive, sem acento
  /// especial — apenas contains direto).
  static List<ContentItem> search(String query) {
    final normalized = query.trim().toLowerCase();
    if (normalized.isEmpty) return all;
    return all
        .where((item) =>
            item.title.toLowerCase().contains(normalized) ||
            item.author.toLowerCase().contains(normalized))
        .toList();
  }

  /// Busca um item pelo `id`. Retorna `null` se não encontrado.
  static ContentItem? findById(String id) {
    for (final item in all) {
      if (item.id == id) return item;
    }
    return null;
  }
}
