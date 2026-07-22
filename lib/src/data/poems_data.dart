import '../models/poem_item.dart';

/// URL base dos arquivos hospedados na coleção pública do Internet Archive.
/// Fonte: https://archive.org/download/poemas_portugues_001_librivox
const String kPoemsBaseUrl =
    'https://archive.org/download/poemas_portugues_001_librivox';

/// Página de detalhes da coleção (para exibir crédito/atribuição na UI).
const String kPoemsCollectionUrl =
    'https://archive.org/details/poemas_portugues_001_librivox';

/// Poesias em domínio público narradas pelo projeto LibriVox, extraídas
/// diretamente da listagem de arquivos da coleção
/// "poemas_portugues_001_librivox". Cada item usa o .mp3 original (maior
/// qualidade) e o .png individual da faixa como capa.
const List<PoemItem> archivePoems = [
  PoemItem(
    id: 'poem_001',
    title: 'Cântico Negro',
    author: 'José Régio',
    audioUrl: '$kPoemsBaseUrl/01_canticonegro_01_regio.mp3',
    artworkUrl: '$kPoemsBaseUrl/01_canticonegro_01_regio.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_002',
    title: 'Quase',
    author: 'Mário de Sá-Carneiro',
    audioUrl: '$kPoemsBaseUrl/02_quase_02_sacarneiro.mp3',
    artworkUrl: '$kPoemsBaseUrl/02_quase_02_sacarneiro.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_003',
    title: 'Este Livro',
    author: 'Florbela Espanca',
    audioUrl: '$kPoemsBaseUrl/03_estelivro_03_espanca.mp3',
    artworkUrl: '$kPoemsBaseUrl/03_estelivro_03_espanca.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_004',
    title: 'Psicologia de um Vencido',
    author: 'Augusto dos Anjos',
    audioUrl: '$kPoemsBaseUrl/04_psicologiadeumvencido_04_anjos.mp3',
    artworkUrl: '$kPoemsBaseUrl/04_psicologiadeumvencido_04_anjos.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_005',
    title: 'Budismo Moderno',
    author: 'Augusto dos Anjos',
    audioUrl: '$kPoemsBaseUrl/05_budismomoderno_05_anjos.mp3',
    artworkUrl: '$kPoemsBaseUrl/05_budismomoderno_05_anjos.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_006',
    title: 'Vandalismo',
    author: 'Augusto dos Anjos',
    audioUrl: '$kPoemsBaseUrl/06_vandalismo_06_anjos.mp3',
    artworkUrl: '$kPoemsBaseUrl/06_vandalismo_06_anjos.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_007',
    title: 'Num Bairro Moderno',
    author: 'Cesário Verde',
    audioUrl: '$kPoemsBaseUrl/07_numbairromoderno_07_verde.mp3',
    artworkUrl: '$kPoemsBaseUrl/07_numbairromoderno_07_verde.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_008',
    title: 'Amor É Fogo Que Arde Sem Se Ver',
    author: 'Luís de Camões',
    audioUrl:
        '$kPoemsBaseUrl/08_amorefogoqueardesemsever_08_camoes.mp3',
    artworkUrl:
        '$kPoemsBaseUrl/08_amorefogoqueardesemsever_08_camoes.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_009',
    title: 'Alma Minha Gentil, Que Te Partiste',
    author: 'Luís de Camões',
    audioUrl:
        '$kPoemsBaseUrl/09_almaminhagentilquetepartiste_09_camoes.mp3',
    artworkUrl:
        '$kPoemsBaseUrl/09_almaminhagentilquetepartiste_09_camoes.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_010',
    title: 'Balada da Neve',
    author: 'Augusto Gil',
    audioUrl: '$kPoemsBaseUrl/10_baladadaneve_10_gil.mp3',
    artworkUrl: '$kPoemsBaseUrl/10_baladadaneve_10_gil.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_011',
    title: 'As Pombas',
    author: 'Raimundo Correia',
    audioUrl: '$kPoemsBaseUrl/11_aspombas_11_correia.mp3',
    artworkUrl: '$kPoemsBaseUrl/11_aspombas_11_correia.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_012',
    title: 'Nel Mezzo del Camin',
    author: 'Olavo Bilac',
    audioUrl: '$kPoemsBaseUrl/12_nelmezzodelcamin_12_bilac.mp3',
    artworkUrl: '$kPoemsBaseUrl/12_nelmezzodelcamin_12_bilac.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_013',
    title: 'Já Bocage Não Sou',
    author: 'Bocage',
    audioUrl: '$kPoemsBaseUrl/13_jabocagenaosou_13_bocage.mp3',
    artworkUrl: '$kPoemsBaseUrl/13_jabocagenaosou_13_bocage.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_014',
    title: 'Primavera',
    author: 'Júlia Cortines',
    audioUrl: '$kPoemsBaseUrl/14_primavera_14_julia.mp3',
    artworkUrl: '$kPoemsBaseUrl/14_primavera_14_julia.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_015',
    title: 'Fim',
    author: 'Mário de Sá-Carneiro',
    audioUrl: '$kPoemsBaseUrl/15_fim_15_carneiro.mp3',
    artworkUrl: '$kPoemsBaseUrl/15_fim_15_carneiro.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_016',
    title: 'Ser Poeta',
    author: 'Florbela Espanca',
    audioUrl: '$kPoemsBaseUrl/16_serpoeta_16_espanca.mp3',
    artworkUrl: '$kPoemsBaseUrl/16_serpoeta_16_espanca.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_017',
    title: 'Amar!',
    author: 'Florbela Espanca',
    audioUrl: '$kPoemsBaseUrl/17_amar_17_espanca.mp3',
    artworkUrl: '$kPoemsBaseUrl/17_amar_17_espanca.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_018',
    title: 'Sôbolos Rios Que Vão',
    author: 'Luís de Camões',
    audioUrl: '$kPoemsBaseUrl/18_sobolosriosquevao_18_camoes.mp3',
    artworkUrl: '$kPoemsBaseUrl/18_sobolosriosquevao_18_camoes.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_019',
    title: 'A Carolina',
    author: 'Machado de Assis',
    audioUrl: '$kPoemsBaseUrl/19_acarolina_19_assis.mp3',
    artworkUrl: '$kPoemsBaseUrl/19_acarolina_19_assis.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
  PoemItem(
    id: 'poem_020',
    title: 'Lembrança de Morrer',
    author: 'Álvares de Azevedo',
    audioUrl: '$kPoemsBaseUrl/20_lembrancademorrer_20_azevedo.mp3',
    artworkUrl: '$kPoemsBaseUrl/20_lembrancademorrer_20_azevedo.png',
    sourceCollectionUrl: kPoemsCollectionUrl,
  ),
];
