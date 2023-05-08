import 'package:flutterbigshop/views/homeview.dart';

import '../views/statefuldeepview.dart';
import '../views/statelessdeepview.dart';

var routes = {
  "/": (context) => const HomeView(),
  "/StatefulDeepView": (context) => const StatefulDeepView(),
  "/StatelessDeepView": (context) => const StatelessDeepView()
};
