import 'package:flutter/material.dart';

void main() => runApp(BookSuggestion());

class BookSuggestion extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new NetworkImage(
              "http://realwishall.com/wp-content/uploads/2021/01/7.png"),
          fit: BoxFit.fill,
        )),
        child: Padding(
           padding: EdgeInsets.fromLTRB(0, 26, 0, 26),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: MyStatelessWidget(),
        ),
          ),
      ),
    );
  }
}

Widget bookRow(BuildContext context, BookInfomation bookinfo) {
  return Container(
    //width: MediaQuery.of(context).size.width,
    //height: MediaQuery.of(context).size.height * 0.20,
    padding: EdgeInsets.all(0),
    child: FittedBox(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "http://realwishall.com/wp-content/uploads/2021/01/9.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(5, 20, 1, 20),
              child: Column(children: [
                Image.network(
                  bookinfo.coverPage,
                  height: 100,
                  width: 80,
                )
              ])),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(children: [
                Text(
                  bookinfo.subject,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bookinfo.author,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue[900].withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bookinfo.publication,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold),
                ),
              ])),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(children: [
                TextButton(
                    child: Image.network(
                      'http://realwishall.com/wp-content/uploads/2021/01/2.png',
                      height: 40,
                      width: 76,
                    ),
                    onPressed: () {}),
                TextButton(
                    child: Image.network(
                      'http://realwishall.com/wp-content/uploads/2021/01/3.png',
                      height: 40,
                      width: 80,
                    ),
                    onPressed: () {}),
              ])),
          SizedBox(width: 8),
        ]),
      ),
    ),
  );
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BookInfomation> listofBooks = [];
    listofBooks.add(BookInfomation(
        'hell',
        'http://realwishall.com/wp-content/uploads/2021/01/5.png',
        'Subject : Chemistry',
        'Author : O.P. Tondon',
        'Publication : GRB Publication',
        'dfg',
        'sdfsdf'));
    listofBooks.add(BookInfomation(
        'hij',
        'http://realwishall.com/wp-content/uploads/2021/01/6.png',
        'Subject : Chemistry',
        'Author : O.P. Tondon',
        'Publication : GRB Publication',
        'dfg',
        'sdfsdf'));
    listofBooks.add(BookInfomation(
        'hhh',
        'http://realwishall.com/wp-content/uploads/2021/01/5.png',
        'Subject : Chemistry',
        'Author : O.P. Tondon',
        'Publication : GRB Publication',
        'dfg',
        'sdfsdf'));
    listofBooks.add(BookInfomation(
        'hhh',
        'http://realwishall.com/wp-content/uploads/2021/01/6.png',
        'Subject : Chemistry',
        'Author : O.P. Tondon',
        'Publication : GRB Publication',
        'dfg',
        'sdfsdf'));
    listofBooks.add(BookInfomation('hhh', 'https://picsum.photos/250?image=9',
        'dfg', 'sdfsonnyooiihjcjjy4y7gudf', 'sdfsd', 'dfjkjg', 'sdfsdf'));
    listofBooks.add(BookInfomation(
        'sdfsdf',
        'http://realwishall.com/wp-content/uploads/2021/01/6.png',
        'Subject : Chemistry',
        'Author : O.P. Tondon',
        'Publication : GRB Publication',
        'dfg',
        'sdfsdf'));
    return ListView.builder(
      itemCount: listofBooks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: bookRow(context, listofBooks[index]),
        );
      },
    );
  }
}

class BookInfomation {
  String name;
  String coverPage;
  String subject;
  String author;
  String publication;
  String amazonLink;
  String flipkartLink;
  BookInfomation(String name, String coverPage, String subject, String author,
      String publication, String amazonLink, String flipkartLink) {
    this.name = name;
    this.coverPage = coverPage;
    this.subject = subject;
    this.author = author;
    this.publication = publication;
    this.amazonLink = amazonLink;
    this.flipkartLink = flipkartLink;
  }
}
