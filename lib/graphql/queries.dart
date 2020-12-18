final PersonalCharacterFargment = '''
  fragment SimpleCharacter on Character {
    id
    name
    status
    species
    type
    gender
    image
    created
  }
''';

final LocationFargment = '''
  fragment SimpleLocation on Location {
    id
    name
    type
    dimension
    created
  }
''';

final EpisodeFargment = '''
  fragment SimpleEpisode on Episode {
    id
    name
    air_date
    episode
    created
  }
''';

final ChapterQuery = '''
  $PersonalCharacterFargment
  $LocationFargment
  $EpisodeFargment
  query GetChapter(#id: ID!) {
    character(id: #id) {
      ...SimpleCharacter
      origin {
        ...SimpleLocation
      }
      location {
        ...SimpleLocation
      }
      episode {
        ...SimpleEpisode
      }
    }
  }
''';
