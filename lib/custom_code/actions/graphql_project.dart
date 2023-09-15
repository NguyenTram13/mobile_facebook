// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future<dynamic> graphqlProject(
    String? accessToken, String nameApi, String columns, String params) async {
  print(params);
  // Add your function code here
  final HttpLink httpLink = HttpLink(
      'https://setting-ff.dev-tn.com/graphql'); // Replace with your server URL

  final AuthLink authLink = AuthLink(
    getToken: () async => 'Bearer $accessToken',
  );

  final Link link = authLink.concat(httpLink);
  String queryStart = '''
        query FetchHotels(\$params: String!) {
      ''';
  String querynameApi = '''
        $nameApi(params: \$params) {
      ''';
  String queryEnd = '''
          }
        }
      ''';
  String query = '';

  late GraphQLClient client;
  if (accessToken == null || accessToken == "null") {
    client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );
  } else {
    client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }

  query = queryStart + querynameApi + columns + queryEnd;

  var data = await fetchData(params, query, client, nameApi);

  return data;

  // Add your function code here!
}

Future<dynamic> fetchData(
    String params, String query, client, String nameApi) async {
  dynamic data = [];

  final QueryOptions options = QueryOptions(
    document: gql(query),
    variables: {'params': params},
  );

  final QueryResult result = await client.query(options);
  print(result);
  if (result.hasException) {
    print(result.exception?.toString());
    data = result.exception;
  } else {
    // setState(() {
    // });
    data = result.data![nameApi];
    print('${nameApi.toString()}: $data');
  }
  return data;
}
