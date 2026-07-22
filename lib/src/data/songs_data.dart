import '../models/song_item.dart';

/// Ajuste esta constante para apontar para o repositório onde você hospeda
/// os arquivos .mp3 e as capas (ex: um repositório no GitHub servido via
/// raw.githubusercontent.com, ou um bucket S3/Cloud Storage público).
const String kSongsBaseUrl =
    'https://raw.githubusercontent.com/SEU_USUARIO/SEU_REPO_DE_AUDIO/main';

/// Lista estática das faixas de espiritualidade.
///
/// Estes são itens de EXEMPLO — substitua pelos nomes reais dos arquivos
/// que você vai hospedar no seu repositório de áudio. Mantenha o padrão de
/// pastas /audio e /artwork (ou ajuste conforme sua estrutura real).
const List<SongItem> spiritualitySongs = [
  SongItem(
    id: 'song_001',
    title: 'Meditação da Manhã',
    author: 'Voz Serena',
    audioUrl: '$kSongsBaseUrl/audio/meditacao_da_manha.mp3',
    artworkUrl: '$kSongsBaseUrl/artwork/meditacao_da_manha.jpg',
    album: 'Momentos de Paz',
    duration: Duration(minutes: 8, seconds: 12),
  ),
  SongItem(
    id: 'song_002',
    title: 'Respiração Consciente',
    author: 'Voz Serena',
    audioUrl: '$kSongsBaseUrl/audio/respiracao_consciente.mp3',
    artworkUrl: '$kSongsBaseUrl/artwork/respiracao_consciente.jpg',
    album: 'Momentos de Paz',
    duration: Duration(minutes: 10, seconds: 45),
  ),
  SongItem(
    id: 'song_003',
    title: 'Gratidão',
    author: 'Voz Serena',
    audioUrl: '$kSongsBaseUrl/audio/gratidao.mp3',
    artworkUrl: '$kSongsBaseUrl/artwork/gratidao.jpg',
    album: 'Momentos de Paz',
    duration: Duration(minutes: 6, seconds: 30),
  ),
  // Adicione aqui os seus itens reais, um SongItem por faixa.
];
