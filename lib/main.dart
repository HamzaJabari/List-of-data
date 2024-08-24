import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
   Quote(author: 'abu khaled' , text: 'Hello Guys'),
   Quote(author: 'abd', text: 'Hello '),
   Quote(author: 'yousef',text: ' Hey ')
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:AppBar(
        title: Text('سنجنقرام'
        ,style: TextStyle(color: Colors.white),) ,
        
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ) ,
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote :quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList()  ,
     
        
      ),
    );
  }
}

