import 'package:flutter/material.dart';

import '../helpers/staticcount.dart';

class StatefulDeepView extends StatefulWidget {
  const StatefulDeepView({super.key});

  @override
  State<StatefulDeepView> createState() => _StatefulDeepViewState();
}

class _StatefulDeepViewState extends State<StatefulDeepView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statelees Samples widget"),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Staticcount.isFavorited
                      ? const Icon(Icons.star)
                      : const Icon(Icons.star_border),
                  onPressed: () {
                    setState(() {
                      
                    Staticcount.toogleFavorite();
                    });
                  }),
            ),
            SizedBox(
              width: 18,
              child: Text('${Staticcount.favoriteCount}'),
            )
          ],
        ),
      ),
    );
  }
}

