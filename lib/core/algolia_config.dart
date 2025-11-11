import 'package:algoliasearch/algoliasearch.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final SearchClient algoliaClient = SearchClient(
  appId: dotenv.env['ALGOLIA_APP_ID']!,
  apiKey: dotenv.env['ALGOLIA_API_KEY']!,
);