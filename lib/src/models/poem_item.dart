import 'content_category.dart';
import 'content_item.dart';

/// Representa uma poesia narrada, vinda de uma coleção pública do
/// Internet Archive / LibriVox.
class PoemItem extends ContentItem {
  const PoemItem({
    required super.id,
    required super.title,
    required super.author,
    required super.audioUrl,
    required super.artworkUrl,
    super.duration,
    this.sourceCollectionUrl,
    this.license = 'Domínio público (LibriVox / Internet Archive)',
  }) : super(category: ContentCategory.poetry);

  /// Link da página da coleção de origem no Internet Archive
  /// (útil para exibir atribuição/crédito na UI).
  final String? sourceCollectionUrl;

  /// Informação de licenciamento do conteúdo.
  final String license;
}
