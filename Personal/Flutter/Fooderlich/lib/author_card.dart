import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({
    super.key,
    this.imageProvider,
    required this.authorName,
    required this.title,
  });

  final ImageProvider? imageProvider;
  final String authorName;
  final String title;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleImage(
            imageProvider: widget.imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.authorName,
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              Text(
                widget.title,
                style: FooderlichTheme.lightTextTheme.headline3,
              )
            ],
          ),
          IconButton(
            iconSize: 30,

            onPressed: () {
              setState(() {
                _isFavorited =!_isFavorited;
              });
            },
            color: Colors.red[400],
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
          )
        ],
      ),
    );
  }
}
