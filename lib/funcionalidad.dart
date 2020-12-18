import 'package:http/http.dart' as http;
import 'package:funcionalidad/convert.dart';
import 'package:funcionalidad/d_apollo.dart';
import 'package:funcionalidad/graphql/queries.dart';

Future<void> service() async {
  final url = 'https://rickandmortyapi.com/graphql';
  final getChapter = DApollo(ChapterQuery);

  getChapter.set_vars({'id': 1});
  final response = await http.post(url, body: getChapter.body);

  if (response.statusCode == 200) {
    final data = rickAndMortyFromJson(response.body);
    print(data.data.character.toJson());
  } else {
    print(response.statusCode);
    print(response.body);
  }
}
