import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      // debugShowCheckedModeBanner: false,
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  // 状态类组件只需要新建其状态类即可
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[]; // 单词对
  final Set<WordPair> _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0); //增大字体大小
  @override
  Widget build(BuildContext context) {
    Widget _buildRow(WordPair pair) {
      final bool alreadySaved = _saved.contains(pair);
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
        // 添加收藏图标
        trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          });
        },
      );
    }

    Widget _buildSuggestions() {
      return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          if (index.isOdd) return Divider();
          final remainder = index ~/ 2; // 余数
          if (remainder >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[remainder]);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}
