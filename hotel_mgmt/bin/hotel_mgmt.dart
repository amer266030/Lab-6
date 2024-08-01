import 'dart:io';

import 'utils/info.dart';

void main(List<String> arguments) {
  var shouldExit = false;
  // Print Instructions for the user
  Info.instructions();
  do {
    // Handle the user input
    var userInput = stdin.readLineSync();

    if (userInput == 'i') {
      Info.instructions();
    } else if (userInput == 'q') {
      shouldExit = true;
    } else {
      Info.handleUserInput(userInput!);
    }
  } while (!shouldExit);
}
