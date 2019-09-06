import 'package:flutter/material.dart';
import 'data.dart';

// 搜索
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context,delegate: SearchInputDelegate());
            },
          )
        ],
      ),
    );
  }
}

class SearchInputDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      ),
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () => buildResults(context),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context,null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    print(query);
    final resultList = query.isEmpty ? recentSuggest :
    searchList.where((input) => input.contains(query)).toList();
    print(resultList);
    return ListView.builder(
      itemCount: resultList.length,
      itemBuilder: (context,index) => 
        ListTile(
          title: RichText(
            text: TextSpan(
              text: resultList[index].substring(0,query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: resultList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey)
                )
              ]
            ),
          ),
        ),
    );
  }
}