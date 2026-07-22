# harmony_audio

Pacote Dart/Flutter de **dados e assets** para o app de música. Centraliza:

1. Músicas de espiritualidade (.mp3 hospedadas no seu repositório próprio).
2. Poesias narradas em domínio público, vindas da coleção do Internet Archive
   (`poemas_portugues_001_librivox`, projeto LibriVox).
3. Capas (artwork) e metadados (título, autor, categoria) de ambos.

Este pacote **não reproduz áudio** — ele só entrega os dados tipados.
Quem toca o áudio (`just_audio`, `audio_service`, etc) é o app principal.

## Estrutura

```
lib/
  harmony_audio.dart              # barrel export (único import necessário)
  src/
    models/
      content_category.dart       # enum: spirituality | poetry
      content_item.dart            # classe base abstrata
      song_item.dart                # extends ContentItem
      poem_item.dart                # extends ContentItem
    data/
      songs_data.dart              # lista estática (ajuste a URL base)
      poems_data.dart               # lista estática real (Internet Archive)
    repository/
      content_repository.dart      # API pública única de leitura
example/
  main_app_example.dart            # exemplo com just_audio
```

## Instalação no app principal

No `pubspec.yaml` do app:

```yaml
dependencies:
  harmony_audio:
    path: ../harmony_audio
    # ou, depois de subir para um repositório git próprio:
    # git:
    #   url: https://github.com/SEU_USUARIO/harmony_audio.git
```

## Uso básico

```dart
import 'package:harmony_audio/harmony_audio.dart';

final todos = ContentRepository.all;          // músicas + poesias
final musicas = ContentRepository.songs;      // só SongItem
final poesias = ContentRepository.poems;      // só PoemItem
final espiritual = ContentRepository.byCategory(ContentCategory.spirituality);
final resultado = ContentRepository.search('camões');
```

Veja `example/main_app_example.dart` para uma tela de lista + player completo
com `just_audio`.

## Antes de publicar

- Em `lib/src/data/songs_data.dart`, troque `kSongsBaseUrl` e os itens de
  exemplo pelos arquivos reais do seu repositório de áudio.
- As poesias em `lib/src/data/poems_data.dart` já usam links reais e
  verificados da coleção pública do Internet Archive — não precisa editar,
  a não ser que queira trocar por outra coleção.
- Todo o conteúdo de `poems_data.dart` é domínio público / LibriVox; o campo
  `PoemItem.license` e `sourceCollectionUrl` já carregam a atribuição.
