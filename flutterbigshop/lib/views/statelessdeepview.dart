import 'package:flutter/material.dart';
import 'package:flutterbigshop/helpers/staticcount.dart';

class StatelessDeepView extends StatelessWidget {
  const StatelessDeepView({super.key});

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
                    Staticcount.toogleFavorite();
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
