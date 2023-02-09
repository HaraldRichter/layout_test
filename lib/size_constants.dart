import 'package:flutter/material.dart';

bool isLargeScreen(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600 &&
      MediaQuery.of(context).orientation == Orientation.portrait) {
    return true;
  } else {
    return false;
  }
}

bool isMaxScreen(BuildContext context) {
  if (MediaQuery.of(context).size.width > 1200) {
    return true;
  } else {
    return false;
  }
}

bool isLandscape(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return true;
  } else {
    return false;
  }
}
