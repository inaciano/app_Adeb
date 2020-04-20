import 'package:flutter/material.dart';

class Locais extends StatefulWidget {
  final String local;
  final String img;
  final String discricao;

  const Locais({Key key, this.local, this.img, this.discricao})
      : super(key: key);

  @override
  _LocaisState createState() => _LocaisState();
}

class _LocaisState extends State<Locais> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: widget.img,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(widget.img),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          widget.local,
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        widget.local,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        widget.discricao,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
