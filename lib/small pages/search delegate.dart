import 'package:flutter/material.dart';
import 'package:my_app/pages/product1.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Black Simple Lamp',
    'Coffee Chair',
    'Minimal Stand',
    'Simple Desk',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
            showSuggestions(context);
          }
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var items in searchTerms) {
      if (items.toLowerCase().contains(query.toUpperCase())) {
        matchQuery.add(items);
      }
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: matchQuery.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? searchTerms
        : searchTerms.where((searchTerm) {
            final searchTermLower = searchTerm.toLowerCase();
            final queryLower = query.toLowerCase();

            return searchTermLower.startsWith(queryLower);
          }).toList();
    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
        itemBuilder: (context, index) {
          var result = suggestions[index];
          final queryText = result.substring(0, query.length);
          final remainingText = result.substring(query.length);
          return ListTile(
            onTap: () {
              if (query.contains(result)) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Product1()));
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Product1()));
              }
            },
            // title: Text(result),
            title: RichText(
                text: TextSpan(
                    text: queryText,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    children: [
                  TextSpan(
                      text: remainingText,
                      style: TextStyle(fontSize: 18, color: Colors.grey))
                ])),
          );
        },
        itemCount: suggestions.length,
      );
}
