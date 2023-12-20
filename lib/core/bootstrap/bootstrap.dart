import 'dart:async';

import 'package:flutter/material.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  runApp(await builder());
}
