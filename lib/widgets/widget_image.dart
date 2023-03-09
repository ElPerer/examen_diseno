import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150),
      padding: const EdgeInsets.only(left: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const <Widget>[
          Text(
            '',
            style: TextStyle(fontSize: 20),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          FadeInImage(
            image: NetworkImage(
                'https://isecf.edu.mx/wp-content/uploads/2022/04/logo_bajate-un-libro.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 170,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          )
        ],
      ),
    );
  }
}
