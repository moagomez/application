import 'package:flutter/material.dart';

class ProgramBody extends StatelessWidget {
  final profile = [
    'assets/images/rey.jpg',
    'assets/images/enjaz.jpg',
    'assets/images/lana.jpg',
    'assets/images/ricardo.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
  ];
  final names = [
    'Mohamed Ali',
    'Enjaz LLC.',
    'Lana Del Rey',
    'Ricardo milos',
    'memes',
    'memes'
  ];
  final date = [
    '2020/11/7',
    '2020/11/8',
    '2020/11/9',
    '2020/8/4',
    '2020/9/5',
    '2020/9/7'
  ];
  final images = [
    null,
    'assets/images/meme.jpg',
    null,
    'assets/images/ricardo.jpg',
    null,
    'assets/images/memme.jpg',
  ];
  final posts = [
    'Sorry enjaz but i will never use flutter again, because it is the worst',
    'Someone said he will never use flutter again , i guess he will got minus 1',
    'Born to die',
    'im ricardo milos u should know me',
    'I programmed flutter application without learning dart',
    'it is the truth LOL',
  ];
  Widget getList() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(profile[index]),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                names[index],
                                style: TextStyle(
                                    color: Colors.red[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            date[index],
                            style: TextStyle(
                                color: Colors.red[200],
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, bottom: 8.0),
                        child: Text(
                          posts[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: images[index] == null
                            ? null
                            : Container(
                                width: double.infinity,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(images[index])),
                              ),
                      ),
                      Column(
                        children: <Widget>[
                          Divider(
                            height: 50,
                            thickness: 5,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: getList(),
    );
  }
}
